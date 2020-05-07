
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
