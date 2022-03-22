require './person'
require './capitalize'
require './trimmer'

person = Person.new(22, 'maximilianus')
puts person.correct_name
puts capitalized = CapitalizeDecorator.new(person)
puts capitalized.correct_name
puts capitalized_trimmed = TrimmerDecorator.new(capitalized)
puts capitalized_trimmed.correct_name
