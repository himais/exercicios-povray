#include "colors.inc"    
#include "woods.inc" 

/*
camera {
  location <0,0,-10>
  angle 36
}  */

camera { 
     location <0, 3, -6>        
     look_at <0, 0, 15> 

}
 
 
background { 
        LightSteelBlue 
}

light_source { 
        <500,500,-1000> color White    //<0,10,0>
}
  
plane {
  y, 0   
  pigment { 
                White 
        }
} 

union{            
        #declare objcilindro =      
        cylinder {
                <0,0.3,0>,
                <0,4,0>,
                0.18
                pigment {
                        Yellow
                }
        } 
        
        object{
                objcilindro                
        }  
        
        object{
                objcilindro
                translate  x*2.5              
        } 
        
        object{
                objcilindro 
                translate  z*2.5                
        }
        
        object{
                objcilindro 
                translate  x*2.5 
                translate  z*2.5                
        }   
        
        #declare objbox = 
        box {
                <3,0,-0.5>,
                <-0.5,0.3,3>     
                pigment {
                        Yellow
                }
        } 
        
        object{
                objbox               
        }  
          
          
        object{
                objbox
                translate y*4               
        }   
         
        #declare objcone = 
        cone {
                <0,2.5,0>, 0
                <0,0.3,0>, 1.6     // Center and radius of other end
        }
        
        merge{          
                object{
                        objcone               
                        
                        translate x*1.25
                        translate z*1.25             
                }    
                   
                object{
                        objcone 
                        scale -1
                        translate y*4.3  
                        translate x*1.25
                        translate z*1.25                          
                }   
                pigment{ Yellow filter 0.5}
        }  
        
        translate x*-1
        rotate y*-20
} 
 
 
            
 