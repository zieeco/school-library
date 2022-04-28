require './student'

describe Student do
  context 'Student class' do
    before(:each) do
      @student = Student.new(100, 'classroom', 'Verissimo', true)
    end

    it 'should return all the student attribute' do
      expect(@student).to have_attributes(age: 100, classroom: 'classroom', name: 'Verissimo', parent_permission: true)
    end
  end
end
