/*({
    packItem : function(component, event, helper) {
        var btnClicked = event.getSource();
        component.set("v.item.Packed__c", true);
        btnClicked.set("v.disabled",true);
        
    }
})
({
    packItem : function(component, event, helper) {
        var btnClicked = event.getSource();
        component.set("v.item.Packed__c", true);
        btnClicked.set("v.disabled",true);
        
    }
})

({
    packItem : function(component, event, helper) {
        var checkbox = component.get(“v.item”,true);
        checkbox.Packed__c = true;
        component.set(“v.item”,checkbox);
        event.getSource().set(‘v.disabled’, true);
    }
})

({
    packItem : function(component, event, helper) {
        component.set("v.item.Packed__c", true);
        //component.set("v.disabled", true);
        event.getSource().set(‘v.disabled’, true);
    }
})

({
    packItem : function(component, event, helper) {
        component.set("v.item.Packed__c", "true");
        var btn = event.getSource();
        btn.set("v.disabled",true);
        
    }
})
*/
({
    packItem : function(component, event, helper) {
        var btnClicked = event.getSource();
        component.set("v.item.Packed__c", true);
        btnClicked.set("v.disabled",true);
        
    }
})