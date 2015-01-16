require("rspec")
require("cd_collection")
require("pry")

describe(CD) do

  before() do
    CD.clear()
  end

  describe(".all") do
    it("displays all the CDs in the collection - should be empty at first") do
      expect(CD.all()).to(eq([]))
    end
  end

  describe("#add") do
    it("adds a CD to the collection") do
      cd1 = CD.new({:artist => "Ham Wizards", :album => "Linux Actually Does Matter"})
      cd2 = CD.new({:artist => "The Woz Beards", :album => "I Have Opinions About Segways"})
      expect(CD.all()).to(eq([cd1, cd2]))
    end
  end

  describe("#album") do
    it("Returns the name of an album") do
      cd1 = CD.new({:artist => "Ham Wizards", :album => "Linux Actually Does Matter"})
      expect(cd1.album()).to(eq("Linux Actually Does Matter"))
    end
  end

  describe("#artist") do
    it("Returns the name of an artist") do
      cd1 = CD.new({:artist => "Ham Wizards", :album => "Linux Actually Does Matter"})
      expect(cd1.artist()).to(eq("Ham Wizards"))
    end
  end
  describe(".clear") do
    it("Clears out our CD collection") do
      cd1 = CD.new({:artist => "Ham Wizards", :album => "Linux Actually Does Matter"})
      cd2 = CD.new({:artist => "The Woz Beards", :album => "I Have Opinions About Segways"})
      CD.clear()
      expect(CD.all()).to(eq([]))
    end
  end

  describe("#album") do
    it("Returns the name of an album") do
      cd1 = CD.new({:artist => "Ham Wizards", :album => "Linux Actually Does Matter"})
      cd2 = CD.new({:album => "Linux Actually Does NOT Matter"})
      expect(cd2.album()).to(eq("Linux Actually Does NOT Matter"))
    end
  end
end
