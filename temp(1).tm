
states:          s, s1,s2,s3,s4, a, r,s12,s22,s32,s42,s111,s11
input_alphabet:  $,0,1,2,3,4,:,|
tape_alphabet:   $,0,1,2,3,4,:,|,x,_
start_state:     s
accept_state:    a
reject_state:    r
delta:           s,$    ->      s1,x,R
                 

                 ####
                 #s1,1   ->      s1,x,R
                 #######
                 # s1,:   ->      s1,x,R
                 s1,: -> s12,x,R


                 s2,:   ->      s2,x,R
                 s3,:   ->      s3,x,R
                 s4,:   ->      s4,x,R
                 ######


                 s1,1 -> s11,x,R
                 s11,: -> s111,x,R
                 s111,1 -> r,x,R
                 s111,2 -> s2,x,R
                 s111,3 -> s3,x,R
                 s111,4 -> s4,x,R


           
                 s12,_ -> r,x,R

                 s12,1 -> s1,x,R
                 s12,2 -> s2,x,R
                 s12,3 -> s3,x,R
                 s12,4 -> s3,x,R


                 s1,2   ->      s2,x,R
                 s1,3   ->      s3,x,R
                 s1,4   ->      s3,x,R
                 s1,|   ->      r,x,R

                 s2,|   ->      s2,x,R
                 s3,|   ->      s3,x,R
                 s4,|   ->      s4,x,R

                 s2,1   ->      s1,x,R
                 s2,4   ->      s4,x,R
                 s2,3   ->      r,x,R

                 s3,1   ->      s1,x,R
                 s3,4   ->      s4,x,R

                 #s3,2  -> s2,x,R
                 s3,2   ->      r,x,R

                 s4,1   ->      s1,x,R
                 s4,2   ->      s2,x,R
                 s4,3   ->      s3,x,R
                 s4,_   ->      a,_,R
                 s1,_   ->      a,_,R
                 s2,_   ->      a,_,R
                 s3,_   ->      a,_,R






		