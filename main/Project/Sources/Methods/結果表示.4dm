//%attributes = {"invisible":true,"preemptive":"incapable"}
#DECLARE($params : Object)

Form:C1466[$params.attributeName]:=$params.result

Form:C1466.info:=String:C10((Milliseconds:C459-Form:C1466.start)/1000; "###,##0.0")+" 秒経過"