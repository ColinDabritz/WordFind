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

  # Stage 3
  describe "matches coordinates" do
    it "identifies origin coordinates" do
      puzzle = ["---WORD---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("0,3")
    end
    it "identifies first letter coordinates" do
      puzzle = ["---DROW---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match("0,6")
    end
    it "identifies single letter coordinates"
    it "identifies reverse direction coordinates"
    it "identifies diagonal coordinates"
    it "identifies final location coordinates"
    it "identifies single letter final location coordinates"
    it "identifies single letter origin coordinates"
  end

  describe "direction matches" do
    it "identifies north matches" do
      puzzle = %w{- - - D R O W}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match(/,N\)/)
    end
    it "identifies south matches" do
      puzzle = %w{W O R D - - -}
      words = ["WORD"]
      find_words(puzzle,words)[0].should match(/,S\)/)
    end
    it "identifies east matches" do
      puzzle = ["---WORD---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match(/,E\)/)
    end
    it "identifies west matches" do
      puzzle = ["---DROW---"]
      words = ["WORD"]
      find_words(puzzle,words)[0].should match(/,W\)/)
    end
    # Stage 4
    it "identifies north-east matches"
    it "identifies south-east matches"
    it "identifies south-west matches"
    it "identifies north-west matches"
  end

  it "finds words diagonally"
  it "finds words diagonally backward"

  # Stage 5
  it "finds repeated word matches"
  it "finds multiple position matches"
  it "should match overlapping words" do
    puzzle = ["---WORDREAM---"]
    words = ["DREAM","WORD"]
    find_words(puzzle,words)[0].should match("DREAM")
    find_words(puzzle,words)[1].should match("WORD")
  end
  it "should match identical overlapping words" do
    puzzle = ["---WORDROW---"]
    words = ["WORD"]
    find_words(puzzle,words)[0].should eq("WORD(0,3,E)")
    find_words(puzzle,words)[1].should eq("WORD(0,9,W)")
  end
  it "should match palindromes twice" do
    puzzle = ["---RACECAR---"]
    words = ["RACECAR"]
    find_words(puzzle,words)[0].should eq("RACECAR(0,3,E)")
    find_words(puzzle,words)[1].should eq("RACECAR(0,9,W)")
  end

  describe "doesn't find" do
    it "identifies not found words" do
      puzzle = ["A"]
      words = ["NOTFOUND"]
      find_words(puzzle,words)[0].should eq("NOTFOUND()")
    end
    it "doesn't find wrap-around words"
    it "doesn't find vertical wrap around words"
    it "doesn't find corner wraparound matches"
    it "doesn't find near misses"
    it "doesn't find partial matches on edge"
    it "doesn't find longer words with portion in puzzle"
      # e.g. asdfjkl doesn't match puzzle line dfj"
  end

  describe "finds word format variations" do
    # Stage 6
    it "finds lowercase words in a capital puzzle"
    it "finds capital words in a lowercase puzzle"
    it "finds mixed capitalization"
    it "finds punctuated words"
    it "matches words with overlapping letters"
  end

  describe "output formatting" do
    it "is in sorted order"
  end
end