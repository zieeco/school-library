require './teacher'

describe Teacher do
  it 'Teacher class' do
    teacher = Teacher.new(66, 'JavaScript', 'Barry')
    expect(teacher).to have_attributes(age: 66, specialization: 'JavaScript', name: 'Barry')
  end

  it 'Teacer can use services' do
    teacher = Teacher.new(66, name: 'Barry', specialization: 'JavaScript')
    expect(teacher.can_use_services?).to be(true)
  end
end
