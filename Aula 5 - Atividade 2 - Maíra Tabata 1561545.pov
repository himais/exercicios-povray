#include "colors.inc" 


camera { 
     location <0, 7, -10>        
     look_at <0, 0, 2>         
}
 
 
background { 
        LightSteelBlue 
}

light_source { 
        <500,500,-1000> color White
}
  
difference{  
        
        intersection{
               //Cubo 
                box {
                        <0, 0, 0>, 
                	<4, 4, 4>  
                        pigment { 
                                Red
                        } 	     	
                }   
                
              
                //Esfera
                sphere { 
                	<2, 2, 2>, 2.67
                	texture { 
                		pigment { 
                			Blue 
                		} 
                	}  
                        
                        finish {           
                           ambient 0.2    
                           diffuse 0.4    
                           specular 0.5
                     }    
              } 
              
              translate z*-2
              translate x*-2
              
        }
        
        //Cilindros 
        union{     
                     
                cylinder {
                        <0,0,0>,
                        <0,6,0>,
                        1.4
                        pigment { 
                                Green
                	}                  
                
                } 
                
                cylinder {
                        <0,0,0>,
                        <0,6,0>,
                        1.4
                        pigment { 
                                Green
                	}         	
                       rotate z*90
                       translate x*3 
                       translate y*3                  
                
                } 
                   
               cylinder {
                        <0,0,0>,
                        <0,6,0>,
                        1.4
                        pigment { 
                                Green
                	} 
                       rotate x*90 
                       translate y*3 
                       translate z*-3                 
                
                } 
          
                translate y*-1
                    
        }   
                 
    rotate y*40 
 

}