This is a ruby word find challenge!

To participate:
1. fork the repo
2. clone your fork locally
3. switch to the first stage branch with `git checkout stage1`
4. Run gem bundle with `bundle`
2. implement the puzzle in wordfind.rb.
3. Check the output manually by running `ruby manualtest.rb`
    * output should list all words like `BANANA(0,4,E)`
4. Run (and pass!) unit tests with `rspec wordfind_spec.rb`
5. Check in your finished code for the stage, push the stage to your fork with `git push origin stage1`
6. If time allows, repeat these steps for additional stages

#### rules

* The puzzle is an array of strings (see manual test)
* The words are an array of strings (see manual test)
* The output is an array of strings (see results)
* All eight directions are possible: N, NE, E, SE, S, SW, W, NW
* Output formatting is:
    * WORD(first letter row, first letter column,DIRECTION)
    * "HELLO(1,0,SW)"
    * Zero based coordinates
* The results should be in sorted order


Puzzle generation courtesy: http://puzzlemaker.discoveryeducation.com/WordSearchSetupForm.asp
