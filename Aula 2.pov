// Teste fontes de luz.pov
//

#include "colors.inc" 
#include "stones.inc"
#include "textures.inc"

background { color rgb <255,255,255> } 

camera{
  location <0,0,-5>
  look_at<0,1,10>
}
 
light_source { 
  <0,10,-3>
  color Blue
  spotlight        // luz do tipo spot (luz em formato de cone)
  radius 5        // raio de ação da luz
  falloff 50      // ângulo do cone de luz (deve ser maior que o raio)
  tightness -10     // atenuação da luz
  point_at <0,0,0> // direção para onde a fonte de luz está apontada
} 

light_source{<5,8,-5> color White}

//light_source{<0,9,-5> color White}

light_source{<-5,10,-5> color White}
 
                                                          

sphere{
  <0,0.5, 0>, 1         
  texture{ T_Stone40 scale 5}
}  

         
plane{ <0,1,0>,-1
  pigment{ color Gray }
}      


