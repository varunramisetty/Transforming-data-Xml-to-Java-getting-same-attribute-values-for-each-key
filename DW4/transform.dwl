//transforming data Xml to Java & getting  same attribute values for each key 

%dw 2.0
output application/java
---
payload..*group map  { externalId: $.@name,name: $.@name,displayName: $.@name }
//here im tring to use groupBy to get the transformating data xml to java which contains same attribute values



// input in the format of xml and it having the name spaces and attributes values wnat to convert in java
//  reading the attribues by @ key word



// payload.tsResponse.groups.*group map ((item, index) -> {
//     externalId: item.@name,
//     name: item.@name,
//     displayName: item.@name
// })




// output 
// [
// {externalId=All Users, name=All Users, displayName=All Users} ,
// {externalId=AD_Finance, name=AD_Finance, displayName=AD_Finance},
// {externalId=Testing, name=Testing, displayName=Testing}
// ]