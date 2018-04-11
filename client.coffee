#--- Compare
UI.registerHelper "$eq" , (a, b) -> a == b
UI.registerHelper "$ne" , (a, b) -> a != b
UI.registerHelper "$gt" , (a, b) -> a >  b
UI.registerHelper "$gte", (a, b) -> a >= b
UI.registerHelper "$lt" , (a, b) -> a <  b
UI.registerHelper "$lte", (a, b) -> a <= b

#--- Collections
UI.registerHelper "$contains", (a, bs..., options) -> _.contains _.flatten(bs), a
UI.registerHelper "$indexOf" , (a, bs..., options) -> _.indexOf  _.flatten(bs), a
UI.registerHelper "$lastIndexOf",(a,bs...,options) -> _.lastIndexOf _.flatten(bs), a
UI.registerHelper "$min"     , (   bs..., options) -> _.min      _.flatten(bs)
UI.registerHelper "$max"     , (   bs..., options) -> _.max      _.flatten(bs)
UI.registerHelper "$first"   , (   bs..., options) -> _.first    _.flatten(bs)
UI.registerHelper "$last"    , (   bs..., options) -> _.last     _.flatten(bs)
UI.registerHelper "$flatten" , (   bs..., options) ->            _.flatten(bs)
UI.registerHelper "$compact" , (   bs..., options) -> _.last     _.flatten(bs)
UI.registerHelper "$intersection",(bs..., options) ->       _.intersection(bs)
UI.registerHelper "$difference"  ,(bs..., options) ->         _.difference(bs)

#--- Objects
UI.registerHelper "$keys"    , (a                ) -> _.keys       a
UI.registerHelper "$values"  , (a                ) -> _.values     a
UI.registerHelper "$pairs"   , (a                ) -> _.pairs      a
UI.registerHelper "$invert"  , (a                ) -> _.invert     a
UI.registerHelper "$functions",(a                ) -> _.functions  a
UI.registerHelper "$pick"    , (   bs..., options) -> _.pick.apply @, bs
UI.registerHelper "$omit"    , (   bs..., options) -> _.omit.apply @, bs
UI.registerHelper "$has"     , (a, b             ) -> _.has        a, b
