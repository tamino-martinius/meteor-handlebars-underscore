Handlebars.registerHelper "arr"   , () -> []
Handlebars.registerHelper "arr1"  , () -> [1]
Handlebars.registerHelper "arr123", () -> [1, 2, 3]
Handlebars.registerHelper "arr2"  , () -> [2]
Handlebars.registerHelper "arrx"  , () -> [[1],[2],[[3], 3]]
Handlebars.registerHelper "debug" , (val) ->
  console.log val
  ""

createTest = (pass) ->
  Tinytest.add "handlebars-underscore - #{pass}", (test) ->
    Template["handlebars-underscore-test-#{pass}"].helpers
      "test-ok"  : (val) -> test.equal("ok", "ok")
      "test-fail": (val) -> test.equal("fail", "ok")
    Template["handlebars-underscore-test-#{pass}"]()

#--- Compare
createTest "$ne"
createTest "$eq"
createTest "$gt"
createTest "$gte"
createTest "$lt"
createTest "$lte"

#--- Collections
createTest "$contains"
createTest "$indexOf"
createTest "$lastIndexOf"
createTest "$min"
createTest "$max"
createTest "$first"
createTest "$last"
createTest "$flatten"
createTest "$compact"
createTest "$intersection"
createTest "$difference"

#--- Objects
createTest "$keys"
createTest "$values"
createTest "$pairs"
createTest "$invert"
createTest "$functions"
createTest "$pick"
createTest "$omit"
createTest "$has"
