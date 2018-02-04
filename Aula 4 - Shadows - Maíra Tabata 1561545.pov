// Persistence Of Vision raytracer version 3.5 sample file.
// Area_light example
// File by Steve Anger
//
// -w320 -h240
// -w800 -h600 +a0.3

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
//======================================
camera {
   location <-10, 30, -45>
   look_at <0, 0, 0> 
}
   
//======================================
// Iluminação
//======================================
                           
// luz pontual
light_source {
   <0, 5, -10> color White
   }

                                           
//Luz ocupa área bidimensional provocando sombras suaves
light_source {
   <2, 5, -10> 
   color White                     
   area_light 
        <5, 0, 0>, <0, 0, 5>, // vetores que determinam a area
        10, 10                // qtd linhas e colunas da area
   adaptive 8    // calcula a qtd de luz q atinge a superficie
  // jitter       // posição aleatória dos pontos de luz na área definida pelos vetores 
} 
                                         



  
//======================================
                              
// wall
plane { x, 10
        pigment {White}
}
   
// Floor
plane { y, 0
   pigment { Tan }
   finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }
}
     

// A few simple objects to cast some fuzzy shadows

sphere {
   <0, 7, 0>, 7

   pigment { Red }
   finish {
      ambient 0.1
      diffuse 0.7                 
      phong 1
      //phong_size 80
   }
}

box {
   <-3, -3, -3>, <3, 3, 3>

   pigment { Pink }
//   pigment { Gold filter 0.92 }
   finish {
      ambient 0.1
      diffuse 0.7
      //phong 1
      //phong_size 50
   }    
   
   interior{
      ior 1.3
   }

   rotate -40*y
   translate <-6, 3, -14>
}

cylinder {
   <0, -4, 0>, <0, 4, 0>, 2.5
   translate <-17, 4, -8>
   pigment { Copper }
   finish {
        ambient 0.1
        diffuse 0.7
        phong 1
        phong_size 60
    }
}
