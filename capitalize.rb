require './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @component.correct_name.capitalize
  end
end
