require './nameable'

class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Namable.new
  end

  attr_accessor :name, :age
  attr_reader :id

  def correct_name
    @name = @corrector.correct_name(name)
  end

  def of_age?
    @age >= 18
  end

  def can_use_sevices?
    true if of_age? || @parent_permission
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
puts person.name
