# Getters and setters
# -------------------

# * Getters
# * Setters


# Getters

test 'getters on object literals', ->
  obj =
    value: 3
    get getter: -> @value

  ok obj.getter is 3

###
test 'getters on class instances', ->
  class Foo
    constructor: (@value) ->
    value: 1
    get getter: -> @value

  instance = new Foo 5
  ok instance.getter is 5
  ok Foo::getter is 1

test 'getters as class properties', ->
  class Foo
    value: 3
    @value: 5
    get @getter: -> @value

  ok Foo.getter is 5
###


# Setters

test 'setters on object literals', ->
  obj =
    set setter: (@value) ->
    value: 1

  obj.setter = 7
  ok obj.value is 7

###
test 'setters on class instances', ->
  class Foo
    value: 1
    set setter: (@value) ->

  instance = new Foo
  instance.setter = 9
  ok instance.value is 9
  ok Foo::value is 1

test 'setters as class properties', ->
  class Foo
    value: 9
    @value: 1
    set @setter: (@value) ->

  Foo.setter = 5
  ok Foo.value is 5
###
