require('rspec')
require('to_do')

describe(ToDo) do
  describe("description") do
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
  
end
