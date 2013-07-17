require './wordfind.rb'

describe "word find" do
  describe "finds words" do

  	it "finds simplest word" do
      puzzle = ["aword"]
      words = ["word"]
      find_words(puzzle,words).should eq(["WORD(0,1,E)"])
    end

    it "finds words in each direction"
    it "finds words forward"
    it "finds words backward"
    it "finds words south"
    it "finds words north"
    it "finds words by boundaries"
    it "finds words diagonally"
    it "finds words diagonally backward"
    it "finds edge matches"
    it "finds corner matches"
    it "finds repeated word matches"
    it "finds multiple position matches"
    it "finds single letter matches"
    it "finds long words"
    it "finds max length words"
  end

  describe "finds word format variations" do
    it "finds lowercase words in a captial puzzle"
    it "finds captial words in a lowercase puzzle"
    it "finds mixed capitalization"
    it "finds punctuated words"
  end

  describe "corectly identifies matches" do
    describe "coordinate matches" do
      it "identifies origin coordinates"
      it "identifies first letter coordinates"
      it "identifies single letter coordinates"
      it "identifies reverse direction coordinates"
      it "identifies diagonal coordiantes"
      it "identifies final location coordinates"
      it "identifies single letter final location coordinates"
      it "identifies single letter origin coordinates"
    end

    describe "direction matches" do
      it "identifies north matches"
      it "identifies south matches"
      it "identifies east matches"
      it "identifies west matches"
      it "identifies north-east matches"
      it "identifies south-east matches"
      it "identifies south-west matches"
      it "identifies north-west matches"
    end
  end

  describe "doesn't find" do
    it "identifies not found words"
    it "doesn't find wrap-around words"
    it "doesn't find vertical wrap around words"
    it "doesn't find corner wraparound matches"
    it "doesn't find near misses"
    it "doesn't find partial matches on edge"
    it "doesn't find longer words with portion in puzzle"
      # e.g. asdfjkl doesn't match puzzle line dfj"
  end

  describe "output formatting" do
    it "prints "
  end
end