require_relative 'decorator'

class TrimmerDecorator
  def correct_name
    @nameable.correct_name.split.first(10).join(' ')
  end
end
