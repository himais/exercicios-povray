#include "colors.inc"
#include "stones.inc"  
#include "textures.inc"

camera { 
     location <0, 2, -6> 
     look_at <0, 1, 2> 
} 

light_source { 
  <0,10,-3>
  color White
  spotlight        // luz do tipo spot (luz em formato de cone)
  radius 5        // raio de ação da luz
  falloff 28      // ângulo do cone de luz (deve ser maior que o raio)
  tightness -10    // atenuação da luz
  point_at <0, 1, 2> // direção para onde a fonte de luz está apontada
} 


//light_source { <-1, 50, -1> color White} 

sphere { 
	<0, 1, 2>, 1 
	texture{White_Marble scale 0}
		/*pigment { 
			color Turquoise 
		}*/ 
	  
	finish {           
           ambient 0.2    
           diffuse 0.9    
           specular 0.5
     } 
}

//Chão
plane {
  y, -10   // Vetor, Distância
  texture {
    pigment {
        checker
        color Black
        color White
    }
  }
  
} 
 
//Laterais  
plane {
  x, 15   // Vetor, Distância
  texture {
    pigment {
        checker
        color Black
        color White
    }
  }
  
} 
  
plane {
  x, -15   // Vetor, Distância
  texture {
    pigment {
        checker
        color Black
        color White
    }
  }
  
}   

//Fundo
plane {
  z, 35   // Vetor, Distância
  texture {
    pigment {
        checker
        color Black
        color White
    }
  }
  
} 