
states:          s, s1,s2,s3,s4, a, r,s12,s22,s32,s42,s111,s11, ss12,ss13,ss14,ss113,ss1113,ss11114,ss142,ss1423
input_alphabet:  $,0,1,2,3,4,:,|
tape_alphabet:   $,0,1,2,3,4,:,|,x,_
start_state:     s
accept_state:    a
reject_state:    r
delta:           s,$    ->      s1,x,R
                 

                 s1,: -> s12,x,R


                 s2,:   ->      s2,x,R
                 s3,:   ->      s3,x,R
                 s4,:   ->      s4,x,R
               
                 s1,1 -> s11,x,R # get 1 

                 s11,: -> s111,x,R #get 1:
                 s111,1 -> r,x,R

                 s111,2 -> ss12,x,R      # 1:2
                 ss12,| -> ss12,x,R      # 1:2|
                 ss12,1 -> ss13,x,R      # 1:2|1 /// -> ss13
                 ss13,: -> ss13,x,R      # 1:2|1:
                 ss13,3 -> ss113,x,R     # 1:2|1:3 //// -> ss113

                 ss13,4 -> s3,x,R        # might to s4 change it
                 ss113,| -> ss113,x,R    ### 1:2|1:3| 
                 ss113,1 -> ss1113,x,R   ### 1:2|1:3|1
                 ss1113,: -> ss1113,x,R  ### 1:2|1:3|1:
                 ss1113,4 -> ss11114,x,R ### 1:2|1:3|1:4
                 ss11114,| -> ss11114,x,R ### 1:2|1:3|1:4|
                 ss11114,2 -> ss142,x,R  ### 1:2|1:3|1:4|2
                 ss142,: -> ss142,x,R     ### 1:2|1:3|1:4|2:
                 ss142,4 -> s4,x,R
                 ss142,3 -> s4,x,R   ### 1:2|1:3|1:4|2:3
                 

                 ss12,3 -> r,x,R
                 ss12,4 -> s4,x,R
                 ss12,: -> s12,x,R
                 ss12,_ -> a,x,R

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
