# apex-class-to-lightning-component

Wrapper around [Json 2 Apex](https://json2apex.herokuapp.com) and [Wsdl2Apex](https://github.com/forcedotcom/WSDL2Apex) to make displaying REST and SOAP data easy in Salesforce Lightning Experience

## SOAP Setup

1. Create your Apex class from [Generate from WSDL](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_callouts_wsdl2apex.htm)

1. Modify the class to have `@AuraEnabled` on each property that is exposed
    * from `public String color {get;set}` to `@AuraEnabeld public String color {get;set}`

## REST Setup

1. Create your Apex class from j2a at [Json 2 Apex](https://json2apex.herokuapp.com)

1. Modify the class to have `@AuraEnabled` on each property that is exposed
    * from `public String color {get;set}` to `@AuraEnabeld public String color {get;set}`
    * you might have to rename your outer Apex class to get it to compile

1. If your JSON has an array at the root (signified by '[') you will need to modify the code from j2a as noted here [https://github.com/superfell/json2apex/issues/21#issuecomment-315777630](https://github.com/superfell/json2apex/issues/21#issuecomment-315777630)

1. Add a method to Json2ApexController for your specific class generated from j2a following the pattern in the `singleObject()` or `objectArray()` methods

1. Modify the ~CallRESTEndpoint~ component to call your new method by changing the value on the `<lighting:button label="Call"/>` button to the name of your method in the controller

1. Test by entering the full url needed and clicking the Call button

## Key CLI Commands

```sh
sfdx force:mdapi:convert -r ./src/
sfdx force:user:permset:assign -n AlphaHealthAdmin
```

## References

Projects that have been used:

* [Lightning Strike](https://github.com/appiphony/Strike-Components) strike-dataGrid / strike_row
