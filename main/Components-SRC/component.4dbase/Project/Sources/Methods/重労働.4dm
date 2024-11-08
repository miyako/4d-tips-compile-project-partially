//%attributes = {"invisible":true,"shared":true,"preemptive":"capable"}
#DECLARE($params : Object)

var $hash : Text
$hash:=""

var $i : Integer
For ($i; 1; $params.count)
	$hash:=Generate password hash:C1533($hash; {algorithm: "bcrypt"; cost: 10})
	$params.result:=$hash
	CALL FORM:C1391($params.window; $params.onProgress; $params)
End for 

$params.result:=""
CALL FORM:C1391($params.window; $params.onComplete; $params)