require './wordfind.rb'

describe "find_words()" do
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

    # Stage 2
    it "should match multiple words" do
      puzzle = ["---WORD-DREAM---"]
      words = ["DREAM","WORD"]
      find_words(puzzle,words)[0].should match("DREAM")
      find_words(puzzle,words)[1].should match("WORD")
    end

    it "finds words south" do
      puzzle = %w{W O R D - - -}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds words north" do
      puzzle = %w{- - - D R O W}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds corner matches" do
      puzzle = %w{
        -W
        -O
        -R
        -D
        --
        --
        --}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds words in the middle" do
      puzzle = %w{
        -----
        -----
        -----
        --W--
        --O--
        --R--
        --D--
        -----
        -----
        -----}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("WORD")
    end
    it "finds single letter matches" do
      puzzle = ["A"]
      words = ["A"]
      find_words(puzzle,words)[0].should match("A")
    end
    it "finds single letter matches in the middle of other things" do
      puzzle = %w{
        ---
        -A-
        ---}
      words = ["A"]
      find_words(puzzle,words)[0].should match("A")
    end
  end
end