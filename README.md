SODOKU SOLVER

This is an individual project to solve and check solutions for Sodokus. Project is currently back end only written in Ruby with testing in Rspec. 

I started this project becuase I enjoy solving Sodokus and wanted to practice my logic skills by coding a solution. 

I have used TDD throughout the project. My main learnings have been from the large refactoring I undertook using Structs stored in a hash detailing properties of each digit, instead of my original method of looping through an array. This made code so much simpler - to find all digits in a given 3 x 3 square I can call digit.square rather than dealing with huge algebraic equations to get all other numbers based on their index.

I have also used a simplified timeout check with is new to me for loops exiting when they can make no progress. I'm aware this is not the best use of processing power but it works for now.


Current status:
 - can take input for puzzle
 - can diplay puzzle in manner readable by humans
 - Can solve if one number missing in any row/column/square or timeout if can't fix whole puzzle this way
 - marks each digit's possible options, but doesn't reduce them unless solved that digit 
 - throws error if puzzle size incorrect for sodoku solving

TODO - code
- work on sections to find out where the only possible location for a number is e.g. only place a 2 can go in row 1
- mark each square with possible options - if one has only one option reupdate. Lot of while loops?
- Show where errors in sodoku (human) solution coming from

TODO - refactor
- remove any duplication
- Some methods are far too long with nested loops
  
TODO - edge cases
- Throws error if solved sodoku wrong size in sodoku checker class
- Throws incomplete error if any zeros
  
Stretch goal - Make into app (Web/Android) to take user input and solve sodokus


Heuristics

In order of difficulty
from [Wiki](https://en.wikipedia.org/wiki/Glossary_of_Sudoku) using terminoligy defined in [Simple Sodoku](http://www.angusj.com/sudoku/)

The meanings of most of these terms can be extended to region shapes other than boxes (square-shaped). To simplify reading, definitions are given only in terms of boxes.

<!-- 1. [SOLVED] Missing number - one number in a row, column or 3 x 3 square is missing
2. Only option - one number can only go in one place in a given row, column or 3 x 3 square
3. Possible Pair - two numbers may only go in the same two places in a certain row, column or 3 x 3 square. As such, no other numbers may go in these two places
4. Possible Trio - as the Possible Pair but for three numbers in three spaces. No other numbers may occupy these spaces. -->

1. [SOLVED] Single – The only candidate in a cell.
2. [In Progress] Hidden single – A candidate that appears with others, but only once in a given row, column or box.
3. Locked candidate – A candidate limited to a row or column within a block.
4. Naked pair – Two cells in a row, column or block, which together contain only the same two candidates. These candidates can be excluded from other cells in the same row, column or block.
5. Hidden pair – Two candidates that appear only in two cells in a row, column or block. Other candidates in those two cells can be eliminated.
6. Trio – Three cells in a unit sharing three numbers exclusively. See "Triples and quads".
7. Triples and quads – The concepts applied to pairs can also be applied to triples and quads.
8. X-wing – See N-fish (with N=2).
9.  Swordfish – See N-fish (with N=3).
10. N-fish – Analogues of hidden pairs/triples/quads for multiple rows and columns. A pattern formed by all candidate cells for some digit in N rows (or columns), that spans only N columns (rows). All other candidates for that digit in those columns (rows) can then be excluded.
