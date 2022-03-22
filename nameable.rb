class Nameable
  def correct_name(name)
    corrected_name = name.capitalize
    corrected_name = name[0...10] if name.length > 10
    corrected_name
  end
end
