require './person'

describe Person do
  context 'Person class' do
    before(:each) do
      @person = Person.new(22, 'Mark', true)
    end
    it 'should tell the person age' do
      expect(@person).to have_attributes(name: 'Mark', age: 22, parent_permission: true)
    end
  end
end
