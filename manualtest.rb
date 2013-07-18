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

# expect:

# BLOCK(2,4,SW)
# CLASS(1,14,S)
# CODE(6,5,E)
# DYNAMIC(6,9,NW)
# etc...