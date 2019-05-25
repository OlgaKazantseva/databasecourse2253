use theatre;
Select s.Name,s.Middlename,s.Position,t1.count from Staff as s
Left join 
(
	Select count(*) as count,s2.Position
    from Staff as s2
    Group by Position
)t1
on t1.Position=s.Position
;
