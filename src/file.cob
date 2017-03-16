identification division.
program-id. file01.
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
01 cnt pic 9(3) value 0.
procedure division.
open output f1
perform until cnt > 100
  display "count=" cnt
  compute cnt = cnt + 1
  move cnt to f1-cnt
  write f1r after advancing 1 line
end-perform
close f1.
