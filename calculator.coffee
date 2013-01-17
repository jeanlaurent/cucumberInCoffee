class Calculator
	constructor : ->
		@values = []
	
	enter : (input) ->
		@values.push input

	operation: (callback) ->
		@result = @values.reduce callback
		@values = []

	add : ->
		@operation (x,y) -> x + y

	substract: ->
		@operation (x,y) -> x - y

	multiply: ->
		@operation (x,y) -> x * y

module.exports = Calculator