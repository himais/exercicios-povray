#include "colors.inc"    
#include "woods.inc" 

/*
camera {
  location <0,0,-10>
  angle 36
}  */

camera { 
     location <0, 4, -10>        
     look_at <0, 0, 2>   

}
 
 
background { 
        LightSteelBlue 
}

light_source { 
        <500,500,-1000> color White
}
  
plane {
  y, 0   
  pigment { 
        checker Green White 
        }
} 

             
#declare cilindro =      
cylinder {
        <0,2,0>,
        <0,2.5,0>,
        3
        texture {
                P_WoodGrain1A
        }
}   

#declare cubo = 
box {
        <1.5,0,0>,
        <-1.5,0.4,0.5>     
        texture {
                P_WoodGrain1A
        }
} 
                   

union {    
        object{
               cubo 
               translate z*-0.3                 
        }    
                
        object{
               cubo   
               rotate y*-90 
               translate x*0.3
        }  
  
        object{
                cilindro 
        }    
        
        object{
                cilindro 
                translate y*-2
                scale y*4  
                scale x*0.165    
                scale z*0.165 
        }      
        
        rotate y*30
}

 
            
 