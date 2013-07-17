This is a ruby word find challenge!

The function is set up to take a puzzle, such as:

```
L Z K F B D R O W Y E K O J E
G T H L F S Y L H K A L Y Q N
L D O A B C L U P A C D R Z I
I C H Q H B N I Y Q L H A W U
K Q I B R G R M A W A P R D F
V F T M A V F S O R S K B F U
Y A S M A E X P R E S S I O N
B E R O Q N E H O D T A L M C
U R A I W R Y J J Y D R N O T
R P T C A J O D M B G K V Q I
G C O T H B C I M N E U W N O
E V O E M D L A G I T H U B N
M R X F T S L E J Q S A P B U
G E Y Q K R C I G A M X J U X
P R S T N C Y K H C O D E G N
```

as am array of strings and find all the words in a dictionary, such as:

```
BLOCK
CLASS
CODE
DYNAMIC
EACH
EXPRESSION
FUNCTION
GEM
GITHUB
HASH
KEYWORD
LAMBDA
LIBRARY
MAGIC
OPERATOR
POETRY
RAILS
RUBY
VARIABLE
```

that are in the puzzle.

* The function returns a list.
* All eight directions are possible:
	* N
	* NE
	* E
	* SE
	* S
	* SW
	* W
	* NW
* Matching should be case insensitive
* letters may be shared between words

The puzzle is an array of strings:

```
abc
xyz
lmn
```

```ruby
puzzle = ["abc","xyz","lmn"];
puzzle[row][column] = "l" # letter

# zero indexed!

puzzle[0][0] = "a"
puzzle[2][1] = "m"
```

results are an array of strings in the following format:
* WORD(row,column,direction)
    * "XM(1,0,SW)"
* Coordinates are for the first letter of the word, zero based
* Direction is which way the letters procede from the first
* word and directions are uppercase.
* The results should be in sorted order

