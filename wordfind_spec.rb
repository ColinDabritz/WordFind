require './wordfind.rb'

describe "word find" do
  describe "finds words" do

    # Stage 1
  	it "finds simplest word" do
      puzzle = ["WORD"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds words in reverse direction" do
      puzzle = ["DROW"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds words forward" do
      puzzle = ["---WORD---"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds words backward" do
      puzzle = ["---DROW---"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds edge matches" do
      puzzle = ["WORD---"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds edge matches" do
      puzzle = ["---DROW"]
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end

    # Stage 2
    it "finds words south" do
      puzzle = %w{W O R D - - -}
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds words north" do
      puzzle = %w{- - - D R O W}
      words = ["WORD"]
      find_words(puzzle,words).should match("WORD")
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
      find_words(puzzle,words).should match("WORD")
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
      find_words(puzzle,words).should match("WORD")
    end
    it "finds single letter matches" do
      puzzle = ["A"]
      words = ["A"]
      find_words(puzzle,words).should match("WORD")
    end
    it "finds single letter matches in the middle of other things" do
      puzzle = %w{
        ---
        -A-
        ---}
      words = ["A"]
      find_words(puzzle,words).should match("WORD")
    end

    # Stage 3
    describe "correctly identifies matches" do
      describe "coordinate matches" do
        it "identifies origin coordinates" do
          puzzle = ["---WORD---"]
          words = ["WORD"]
          find_words(puzzle,words).should match("0,3")
        end
        it "identifies first letter coordinates" do
          puzzle = ["---DROW---"]
          words = ["WORD"]
          find_words(puzzle,words).should eq("0,6")
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
          find_words(puzzle,words).should match(",N)")
        end
        it "identifies south matches" do
          puzzle = %w{W O R D - - -}
          words = ["WORD"]
          find_words(puzzle,words).should match(",S)")
        end
        it "identifies east matches" do
          puzzle = ["---WORD---"]
          words = ["WORD"]
          find_words(puzzle,words).should match(",E)")
        end
        it "identifies west matches" do
          puzzle = ["---DROW---"]
          words = ["WORD"]
          find_words(puzzle,words).should match(",W)")
        end
        it "identifies north-east matches"
        it "identifies south-east matches"
        it "identifies south-west matches"
        it "identifies north-west matches"
      end
    end

    # Stage 3
    it "finds words diagonally"
    it "finds words diagonally backward"

    # Stage 4
    it "finds repeated word matches"
    it "finds multiple position matches"
  end

  describe "doesn't find" do
    it "identifies not found words" do
      puzzle = ["A"]
      words = ["NOTFOUND"]
      find_words(puzzle,words).should eq("NOTFOUND()")
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
    # Stage 5
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