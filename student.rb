require './person'

class Student < Person
  def initialize(age, _classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroon
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
