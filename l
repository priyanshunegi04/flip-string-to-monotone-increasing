   int minFlipsMonoIncr(string s) {
        int cntzero = 0;
        int cntone = 0;
        
        for(int i=0; i<s.length(); i++){
        
            //we will count number of 1's
        
           if(s[i] == '1'){
                cntone++;
            }
            
             if(s[i]=='0'){
                 //  left side check karenge previously waha pe one aya ha ya nahi
                  // agar zero se phele one ha toh flip kardo
                 if(cntone>0){
                    cntzero++;
                }
            }
            //check karenge ki minimum kiskoflip karke answer ayega, zero ya one ko.
            // example testcase.."00011000"
         if(cntone<cntzero){
             cntzero = cntone;
         } 
        }
        return cntzero;
    }
};
