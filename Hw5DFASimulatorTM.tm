states:			 q0, qA, qR, qs,qstr,qs1,qs0,qs10,qs12,qs102,qs12b,qs00,qs01,qs1a,qs2a,qs1b,qs2b,qs01b,qs01bb
input_alphabet:	 a,b,$,0,1,2,3,|,:
tape_alphabet:	 a,b,$,0,1,2,3,|,:,_
start_state:	 q0
accept_state:	 qA
reject_state:	 qR
delta:	 

				 q0,$		->		qs,$,R
				 qs,? 		-> 		qs,$,R
				 qs,| 		-> 		qstr,$,R
				 qstr,1		-> 		qs1,$,R  
				 qstr,0		->		qs0,$,R 
				 qs1,:		->		qs1,$,R  
				 qs0,:		->		qs0,$,R  
				 qs1,0		->		qs10,$,R 
				 qs1,2		->		qs12,$,R 
				 qs10,:		->		qs10,$,R 
				 qs12,:		->		qs12,$,R 
				 qs10,2		->		qs102,$,R
				 qs102,?	->		qs102,$,R
				 qs102,b    ->		qs1b,$,R 
				 qs1b,a  	->		qA,$,R
				 qs1b,_ 	->		qA,$,R
				 qs1b,b 	->		qs2b,$,R 
				 qs2b,a 	->		qA,$,R
				 qs2b,b 	->		qR,$,R
				 qs102,_	->		qA,$,R
				 qs12,?		->		qs12,$,R
				 qs12,b		->		qs12b,$,R
				 qs12b,b	->		qA,$,R
				 qs0,0		->		qs00,$,R 
				 qs00,?		->		qA,$,R
				 qs0,1		->		qs01,$,R 
				 qs01,?		->		qs01,$,R 
				 qs01,b 	->		qs01b,$,R
				 qs01b,a 	-> 		qs01,$,R
				 qs01b,b 	->		qs01bb,$,R
				 qs01bb,_	->		qR,$,R
				 qs01bb,b 	->		qs01,$,R
				 qs01bb,a 	->		qs01,$,R

				 qs01,a 	->		qs1a,$,R 
				 qs1a,:		->		qs1a,$,R 
				 qs1a,a 	->		qs2a,$,R 
				 qs2a,:		->		qs2a,$,R
				 qs2a,a 	->		qA,$,R




