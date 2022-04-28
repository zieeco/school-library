require './classroom'
require './student'

describe Classroom do
  it 'Classroom class' do
    classroom = Classroom.new('Math Class')
    expect(classroom).to have_attributes(label: 'Math Class')
  end

  it 'should add a studen to the classroom' do
    new_std = Student.new(39, 'physics', 'Mark', true)
    phy_class = Classroom.new('phy_class')
    phy_class.add_student(new_std)
    expect(phy_class.students).to include(new_std)
  end
end
