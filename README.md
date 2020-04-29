
Current status:
 - can take input for puzzle
 - can diplay puzzle in manner readable by humans
 - Can check all rows have unique values
 - can check all columns have unique values
 - Can check all squares have unique values
 - Can solve if one number missing in any row/column

TODO - code
- solving squares
- bring solving section together
- work on sections to find out where the only possible location for a number is e.g. only place a 2 can go in row 1
- mark each square with possible options - if one has only one option reupdate. Lot of while loops?
- Show where errors in sodoku (human) solution coming from

TODO - refactor
- current checker methods hard to read and understand
  
TODO - edge cases
- Throws error if too few numbers
- Throws error if too many numbers
- Throws incomplete error if any zeros
  
Stretch goal - Make into app (Web/Android) to take user input and solve sodokus
