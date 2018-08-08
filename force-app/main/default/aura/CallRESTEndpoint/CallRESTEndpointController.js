({
    // eslint-disable-next-line
	doInit : function(component, event, helper) {
		component.set("v.apexMethod", "callZipInfoTest");	
		component.set("v.sourceUrl", "https://www.zipwise.com/webservices/zipinfo.php?key=64hpt69e0g8jkm8e&zip=00501&format=json");	
	},
    
    // eslint-disable-next-line
    makeCallOut : function(component, event, helper) {
        var j2a = component.find("json2apex");
        
        var newUrl = component.get("v.sourceUrl");
        var newMethod = event.getSource().get("v.value");
        if ($A.util.isEmpty()) {
            newMethod = component.get("v.apexMethod");
        }
        
        j2a.updateInputs(newUrl, newMethod);
    }
})