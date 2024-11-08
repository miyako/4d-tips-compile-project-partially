var $event : Object
$event:=FORM Event:C1606

Case of 
	: ($event.code=On Clicked:K2:4)
		
		OBJECT SET ENABLED:C1123(*; OBJECT Get name:C1087; False:C215)
		
		var $areaName : Text
		var $p : Integer
		var $i : Integer
		
		Form:C1466.info:=""
		Form:C1466.count:=5
		
		For ($i; 1; Form:C1466.count)
			
			$areaName:="result"+String:C10($i)
			Form:C1466[$areaName]:=""
			
			$p:=New process:C317(Formula:C1597(重労働c).source; 0; "重労働"+String:C10($i); {\
				window: Current form window:C827; \
				onComplete: Formula:C1597(結果発表); \
				onProgress: Formula:C1597(結果表示); \
				buttonName: OBJECT Get name:C1087; \
				attributeName: $areaName; \
				count: 100})
			
		End for 
		
		Form:C1466.start:=Milliseconds:C459
		
End case 