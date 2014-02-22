#--- Compare
Handlebars.registerHelper "$eq" , (a, b) -> a == b
Handlebars.registerHelper "$ne" , (a, b) -> a != b
Handlebars.registerHelper "$gt" , (a, b) -> a >  b
Handlebars.registerHelper "$gte", (a, b) -> a >= b
Handlebars.registerHelper "$lt" , (a, b) -> a <  b
Handlebars.registerHelper "$lte", (a, b) -> a <= b

#--- Collections
Handlebars.registerHelper "$contains", (a, bs..., options) -> _.contains _.flatten(bs), a
Handlebars.registerHelper "$indexOf" , (a, bs..., options) -> _.indexOf  _.flatten(bs), a
Handlebars.registerHelper "$lastIndexOf",(a,bs...,options) -> _.lastIndexOf _.flatten(bs), a
Handlebars.registerHelper "$min"     , (   bs..., options) -> _.min      _.flatten(bs)
Handlebars.registerHelper "$max"     , (   bs..., options) -> _.max      _.flatten(bs)
Handlebars.registerHelper "$first"   , (   bs..., options) -> _.first    _.flatten(bs)
Handlebars.registerHelper "$last"    , (   bs..., options) -> _.last     _.flatten(bs)
Handlebars.registerHelper "$flatten" , (   bs..., options) ->            _.flatten(bs)
Handlebars.registerHelper "$compact" , (   bs..., options) -> _.last     _.flatten(bs)
Handlebars.registerHelper "$intersection",(bs..., options) ->       _.intersection(bs)
Handlebars.registerHelper "$difference"  ,(bs..., options) ->         _.difference(bs)

#--- Objects
Handlebars.registerHelper "$keys"    , (a                ) -> _.keys       a
Handlebars.registerHelper "$values"  , (a                ) -> _.values     a
Handlebars.registerHelper "$pairs"   , (a                ) -> _.pairs      a
Handlebars.registerHelper "$invert"  , (a                ) -> _.invert     a
Handlebars.registerHelper "$functions",(a                ) -> _.functions  a
Handlebars.registerHelper "$pick"    , (   bs..., options) -> _.pick.apply @, bs
Handlebars.registerHelper "$omit"    , (   bs..., options) -> _.omit.apply @, bs
Handlebars.registerHelper "$has"     , (a, b             ) -> _.has        a, b
