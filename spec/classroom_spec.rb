require './classroom'

describe Classroom do
  it 'Classroom class' do
    classroom = Classroom.new('Math Class')
    expect(classroom).to have_attributes(label: 'Math Class')
  end
end
