//%attributes = {"preemptive":"incapable"}
#DECLARE($params : Object)

If ($params=Null:C1517)
	
	CALL WORKER:C1389(1; Formula:C1597(TEST); {})
	
Else 
	
	var $window : Integer
	$window:=Open form window:C675("TEST")
	DIALOG:C40("TEST"; *)
	
End if 