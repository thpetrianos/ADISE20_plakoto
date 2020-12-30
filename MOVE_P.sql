CREATE DEFINER=`root`@`localhost` PROCEDURE `Move_P`(in oldthesi int(100), in zari int(100), in Pcolor varchar(45))
BEGIN
declare a int(100); -- dilonei an exei ginei i allagi 

declare newthesi int(100);
declare x int (100) ; -- to index tou palias thesis
declare y int(100); --  to index tis neas thesis
declare z int(100) ;
select board.index from board where board.Thesi=oldthesi into x;
set newthesi= oldthesi+zari;
select board.index from board where board.Thesi=newthesi into y;
set a=0;
-- To z uparxei gia na gnorizoume to pouli to proorismoy

if Pcolor='W' then
if y-1=1 then
select board.Bot from board where board.Thesi=newthesi into z;
end if;
if y-1=2 then
select board.Top from board where board.Thesi=newthesi into z;
end if;
if y-1=3 then
select board.Top2 from board where board.Thesi=newthesi into z;
end if;
if y-1=4 then
select board.Top3 from board where board.Thesi=newthesi into z;
end if;
if y-1=5 then
select board.Top4 from board where board.Thesi=newthesi  into z;
end if;
if y-1=6 then
select board.Top5 from board where board.Thesi=newthesi  into z;
end if;
if y-1=7 then
select board.Top6 from board where board.Thesi=newthesi into z;
end if;
if y-1=8 then
select board.Top7 from board where board.Thesi=newthesi into z;
end if;
if y-1=9 then
select board.Top8 from board where board.Thesi=newthesi  into z;
end if;
if y-1=10 then
select board.Top9 from board where board.Thesi=newthesi into z;
end if;
if y-1=11 then
select board.Top10 from board where board.Thesi=newthesi into z;
end if;
if y-1=12 then
select board.Top11 from board where board.Thesi=newthesi into z;
end if;
if y-1=13 then
select board.Top12 from board where board.Thesi=newthesi into z;
end if;
if y-1=14 then
select board.Top13 from board where board.Thesi=newthesi into z;
end if;
if y-1=15 then
select board.Top14 from board where board.Thesi=newthesi  into z;
end if;
if y-1=16 then
select board.Top15 from board where board.Thesi=newthesi  into z;
end if;


if y=1 then
update board
set board.Bot='W', board.Index= board.Index+1 where board.thesi= newthesi; 
set a=1;
end if;
if y=2 then
update board
set board.Top='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
if y=3 then

update board
set board.Top2='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;

end if;
if y=4 then
if z='W' then
update board
set board.top3='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=5 then
if z = 'W' then
update board
set board.top4='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=6 then
if z = 'W' then
update board
set board.top5='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=7 then
if z = 'W' then
update board
set board.top6='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=8 then
if z = 'W' then
update board
set board.top7='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=9 then
if z = 'W' then
update board
set board.top8='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=10 then
if z = 'W' then
update board

set board.top9='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=11 then
if z = 'W' then
update board
set board.top10='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=12 then
if z = 'W' then
update board
set board.top11='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=13 then
if z = 'W' then
update board
set board.top12='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=14 then
if z = 'W' then
update board
set board.top13='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=15 then
if z = 'W' then
update board
set board.top14='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if y=16 then
if z = 'W' then
update board
set board.top15='W', board.Index= board.Index+1  where board.thesi= newthesi;
set a=1;
end if;
end if;
if a=1 then
if x=1 then
update board
set board.index=board.index-1, board.Bot = NULL where board.thesi=oldthesi;
end if;
if x=2 then
update board
set board.index=board.index-1, board.Top = NULL where board.thesi=oldthesi;
end if;
if x=3 then
update board
set board.index=board.index-1, board.Top2 = NULL where board.thesi=oldthesi;
end if;
if x=4 then
update board
set board.index=board.index-1, board.Top3 = NULL where board.thesi=oldthesi;
end if;
if x=5 then
update board
set board.index=board.index-1, board.Top4 = NULL where board.thesi=oldthesi;
end if;
if x=6 then
update board
set board.index=board.index-1, board.Top5 = NULL where board.thesi=oldthesi;
end if;
if x=7 then
update board
set board.index=board.index-1, board.Top6 = NULL where board.thesi=oldthesi;
end if;
if x=8 then
update board
set board.index=board.index-1, board.Top7 = NULL where board.thesi=oldthesi;
end if;
if x=9 then
update board
set board.index=board.index-1, board.Top8 = NULL where board.thesi=oldthesi;
end if;
if x=10 then
update board
set board.index=board.index-1, board.Top9 = NULL where board.thesi=oldthesi;
end if;
if x=11 then
update board
set board.index=board.index-1, board.Top10 = NULL where board.thesi=oldthesi;
end if;
if x=12 then
update board
set board.index=board.index-1, board.Top11 = NULL where board.thesi=oldthesi;
end if;
if x=13 then
update board
set board.index=board.index-1, board.Top12 = NULL where board.thesi=oldthesi;
end if;
if x=14 then
update board
set board.index=board.index-1, board.Top13 = NULL where board.thesi=oldthesi;
end if;
if x=15 then
update board
set board.index=board.index-1, board.Top14 = NULL where board.thesi=oldthesi;
end if;
if x=16 then
update board
set board.index=board.index-1, board.Top15 = NULL where board.thesi=oldthesi;
end if;
end if;


end if;

END