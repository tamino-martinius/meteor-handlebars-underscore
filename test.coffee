UI.registerHelper "arr"   , () -> []
UI.registerHelper "arr1"  , () -> [1]
UI.registerHelper "arr123", () -> [1, 2, 3]
UI.registerHelper "arr2"  , () -> [2]
UI.registerHelper "arrx"  , () -> [[1],[2],[[3], 3]]
UI.registerHelper "debug" , (val) ->
  console.log val
  ""

createTest = (pass) ->
  Tinytest.add "handlebars-underscore - #{pass}", (test) ->
    Template["handlebars_underscore_test_#{pass}"].helpers
      "test_ok"  : (val) -> test.equal("ok", "ok")
      "test_fail": (val) -> test.equal("fail", "ok")
    UI.render Template["handlebars_underscore_test_#{pass}"]

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
