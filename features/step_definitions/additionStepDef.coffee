should = require('chai').should()
Calculator = require '../../calculator.coffee'


calculator = new Calculator

additionStep = ->

	@Given /^I have entered (\d+) in the calculator$/, (input, next) ->
		calculator.enter +input
		next()

	@When /^I press add$/, (next) ->
		calculator.add()
		next()

	@When /^I press substract$/, (next) ->
		calculator.substract()
		next()

	@When /^I press multiply$/, (next) ->
		calculator.multiply()
		next()

	@Then /^the result should be (\d+) on the screen$/, (result, next) ->
		(+result).should.equal calculator.result
		next()

module.exports = additionStep