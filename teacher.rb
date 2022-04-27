require_relative 'person'

class Teacher < Person
  def initialize(age, name = 'Unknown', specialization)
    super(name, age, specialization)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
