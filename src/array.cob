identification division.
program-id. array01.
environment division.
input-output section.
file-control.
  select f1 assign to "./count01.dat".
data division.
file section.
fd f1.
01 f1r.
  03 f1-cnt pic 9(3).
working-storage section.
*>01 cnt pic 9(3) value 0.
01 s pic 9(2) value zero.
01 cnts.
  02 cnt-table occurs 5.
    03 cnt pic 9(3) value zero.
procedure division.
open output f1
perform until s = 5
  move s to cnt(s)
  display "s=" s
  compute s = s + 1
*>  move cnt to f1-cnt
*>  write f1r after advancing 1 line
end-perform
move 0 to s
perform until s = 5
  display "cnt(" s ")=" cnt(s)
  compute s = s + 1
end-perform
close f1.
