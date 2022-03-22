require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @component.correct_name[0...10] if @component.correct_name.length > 10
  end
end
