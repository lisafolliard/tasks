require('rspec')
require('to_do')

describe('Task') do  # class

  describe('#description') do   # instance method, like .push()
    it('lets you give it a description') do
      test_task = Task.new("wash the car")  # create instance like car analogy
      expect(test_task.description()).to(eq("wash the car"))
    end
  end

  describe('.all') do   # class method, more encompassing
    it('creates empty array to store tasks') do  # creates car factory
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save task into the array') do
      test_task = Task.new("shine her shoes")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('.clear') do
    it('clear the array of tasks between spec runs') do
    Task.new('buy her new shoes').save()
    Task.clear()
    expect(Task.all()).to(eq([]))  # grabs the array and empties it
    end
  end
end
