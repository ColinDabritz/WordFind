require "./wordfind.rb"

puzzle = ["ZMYCEXPRESSIONA",
          "JDBGILPJPMZPJDC",
          "DTUFBMZOOWEWBDL",
          "AZRLXZATEREMFHA",
          "DROWYEKNATAASKS",
          "LCSXMQPTYLRACYS",
          "KZPLRCODEDHYGHF",
          "EJOXIRLVPWDGEVU",
          "JFXYTAKUAAVWMPN",
          "NETRMKRMJRVWGQC",
          "JFRAGITHUBIQAUT",
          "QRLRALULHJNAKZI",
          "YGMBCIGAMIDHBWO",
          "YNRICFZURCSUOLN",
          "ZPSLGVWTUNXPOOE"]

words =
 ["BLOCK",
  "CLASS",
  "CODE",
  "DYNAMIC",
  "EACH",
  "EXPRESSION",
  "FUNCTION",
  "GEM",
  "GITHUB",
  "HASH",
  "KEYWORD",
  "LAMBDA",
  "LIBRARY",
  "MAGIC",
  "OPERATOR",
  "POETRY",
  "RAILS",
  "RUBY",
  "VARIABLE"]

puts find_words(puzzle, words)
