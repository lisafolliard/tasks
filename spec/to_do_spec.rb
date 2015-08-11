require('rspec')
require('to_do')

describe(Task) do  # class
  describe('#description') do
    it('lets you give it a description') do
      test_task = Task.new("wash the car")
      expect(test_task.description()).to(eq("wash the car"))
    end
  end
end
