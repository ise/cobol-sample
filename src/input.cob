identification division.
program-id. input01.
environment division.
data division.
working-storage section.
01 inp pic 9(4) value 0.
procedure division.
*>a. display "inp 9(4) type"
*>  accept inp
*>  if inp = 9999
*>    stop run
*>    else go to a
*>  end-if.
perform until inp = 9999
  display "inp 9(4) type"
  accept inp
end-perform.
