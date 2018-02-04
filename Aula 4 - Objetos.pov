#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "shapes.inc"

camera { 
     location <4, 1, -6>        // posição da camera dentro do cenario
     look_at <0, 1, 2>          // para onde ela aponta
} 


light_source { <-1, 3, -1> color White} 

sphere { 
	<0, 1, 2>, 1 
	texture { 
		pigment { 
			color Red 
		} 
	}
	 
	finish {           
           ambient 0.2    
           diffuse 0.9    
           specular 0.9
     } 
} 


box { 
	<0, 0, 2>, // 0+1, 1+1, 2+1   -> iguala com a esfera e y=0 para ficar no chão
	<3, 2, 1>  
	texture { 
		pigment {
                       color SeaGreen
                    }
	} 
	rotate y*15
	translate x*1  
	
	finish {           
           ambient 0.2    
           diffuse 0.2    
           specular 0.5
     } 
}    


cone { 
	<0,3,0>, 0
	<0,0,0>, 1.0 
	texture { 
		pigment {
                       color Pink
                    }
	} 
	translate x*-2 
	
	finish {           
           ambient 0.5    
           diffuse 0.2    
           specular 0.5
     } 
} 

plane {
  y, 0   // Vetor, Distância
  texture {
    pigment {
        checker
        color Red
        color White
    }
  }
}

