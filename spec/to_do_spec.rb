require('rspec')
require('to_do')

describe(ToDo) do
  describe("#description") do
    it("lets you give a description") do
      test_todo = ToDo.new("scrub the zebra")
      expect(test_todo.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(ToDo.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_todo = ToDo.new("wash the lion")
      test_todo.save()
      expect(ToDo.all()).to(eq([test_todo]))  
    end
  end
end
