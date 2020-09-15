<--Kjo procedure shfaq nje numer te caktuar te rreshtave(@row) te klientave te cilet perdorin nje tip te caktuar te makines (@machine)-->

Create procedure B @rows int, @machine nvarchar(50)
as 
select top(@rows) c.Client_Id, c.FirstName, C.LastName
from Exercises e 
join Clients c on e.Client_Id=c.Client_Id 
join Machines m on e.Machine_Id = m.Machine_Id
where m.Type=@machine

exec B @rows=2,@machine='Banch Press'



<-- Krijon nje view per secilin klient per te pare llojin e Membership-it, daten nga kur eshte valide dhe deri kur.-->
create view  Memberships as (
	select  c.FirstName , c.LastName ,mt.Type as MembershipType ,m.ValidFrom,m.ValidTo
	from Clients c
	join Membership m on c.Client_Id = m.Client_Id 
	join MembershipType mt on m.Membership_Id = mt.Membership_Id 
)

select * from Memberships
