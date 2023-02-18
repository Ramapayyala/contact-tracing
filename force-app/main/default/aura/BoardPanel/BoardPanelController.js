({
    startGame : function(component, event, helper) {
        //access combobox
        let gameModeComboBox = component.find("GameMode");
        //access the value of combobox
        let selectedValue = gameModeComboBox.get("v.value")
        // updating selectedMOde attribute
        component.set("v.selectedMode",selectedValue);
        console.log("start new game button is clicked with "+ selectedValue + " mode");
       // alert("start new game button is clicked with "+ selectedValue + " mode");
       console.log("Selected mode attribute value "+component.get("v.selectedMode"));
    },
    reshuffleBoard : function(component, event, helper) {

        console.log("reshuffle  button is clicked");
    }
})
