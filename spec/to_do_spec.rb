require('rspec')
require('to_do')

describe(Task) do  # class

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

end
