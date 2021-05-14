import geb.spock.GebSpec
import page.SpatialHubHomePage

class ToolPredictSpec extends GebSpec {

    int pause = 3000
    def setup() {
        when:
        via SpatialHubHomePage

        if (title.startsWith("ALA | Login"))
            authModule.login()

        then:
        waitFor 20, { menuModule.isReady()}
    }

    def "predict"(){
        String title = "Maxent prediction."

        when:
        menuModule.clickMenu("Tools ") //NOTICE: space
        menuModule.clickMenuitem("Predict")

        then:
        waitFor 10, { modalModule.title == title }

        when:
        modalModule.moveToStep(0)
        modalModule.defineNewAreaBtn.click()

        then:
        waitFor 20, { addAreaModule.title == "Add area" }
        addAreaModule.gazRadioBtn.click()
        addAreaModule.nextBtn.click()
        waitFor 10, { addAreaModule.gazInput.displayed }

        and:
        addAreaModule.gazInput.value("Tasmania")

        then:
        waitFor 10, {addAreaModule.gazAutoList("Tasmania").displayed}
        addAreaModule.gazAutoList("Tasmania").click()

        and:
        addAreaModule.nextBtn.click()

        then:
        waitFor 10, { layerListModule.getLayer("Tasmania").displayed }
        waitFor 5, { modalModule.title == title  }

        when:
        modalModule.moveToStep(2)
        modalModule.selectCheckbox("Limit by a date range")
        modalModule.setStartDate("1950-01-01")
        modalModule.setEndDate("2020-01-01")

        then:
        //This tool has multiple species selection
        modalModule.speciesTextInput[0].click()
        modalModule.speciesTextInput[0].value("Eucalyptus gunnii")

        waitFor 10, {modalModule.speciesAutocompleteList.first().text().startsWith("Eucalyptus gunnii")}

        and:
        modalModule.speciesAutocompleteList.first().click()

        //ignore step 3
        when:
        modalModule.moveToStep(3)

        then:
        waitFor 10, {modalModule.availableLayers.size() > 0 }

        when:
        modalModule.selectLayer("Precipitation - annual (Bio12)")

        and:
        modalModule.moveToStep(4)
        modalModule.setSelectionParam("The layer resolution to use.", "string:0.1")

        then:
        modalModule.nextBtn.click()

        then:
        waitFor 10, { modalModule.title == title}

//        waitFor 120, { modalModule.openNewWindow.displayed }
//        waitFor 10, { modalModule.outputDoc.displayed }
//
//        //Need to switch iFrame before access an element in iFrame
//        driver.switchTo().frame("outputDocs")
//
//
//
//        when:
//        driver.switchTo().defaultContent()
//        modalModule.closeBtn.click()
//
//        then:
//        //waitFor 10, { layerListModule.getLayer("Area of occupancy (area): Eucalyptus gunnii").displayed}
//        Thread.sleep(pause)

    }

}