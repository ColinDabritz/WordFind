require './wordfind.rb'

describe "find_words() function" do
  describe "find words" do

    # Stage 1
  	it "finds simplest word" do
      puzzle = ["WORD"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds in reverse direction" do
      puzzle = ["DROW"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds two words" do
      puzzle = ["THINGONE--THINGTWO"]
      words = ["THINGONE", "THINGTWO"]
      find_words(puzzle,words).length.should eq(2)
    end
    it "finds forward" do
      puzzle = ["---WORD---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds backward" do
      puzzle = ["---DROW---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds edge matches" do
      puzzle = ["WORD---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds reversed edge matches" do
      puzzle = ["---DROW"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "find words on second line" do
      puzzle = ["----",
                "WORD"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
  end
end