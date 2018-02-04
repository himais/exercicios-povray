//Aula 8 - Atividade 1
//Arquivo Objetos.pov
  
  
// Persistence Of Vision raytracer version 3.5 sample file.

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

#declare Rad_Quality = 3;

//====================================== 

/* 

Antigo: 

global_settings {
  assumed_gamma 1       // fator de correção do brilho
  radiosity {           
    pretrace_start 0.08 
    pretrace_end   0.02 // tamanho dos blocos de mosaico da visualição (preview)
                        // porcentagem em relação ao tamanho da imagem
                        
    count 50            // qtd de raios emitidos por pixel
                        // quanto maior melhor a qualidade da imagem (35 a 1600)
                        
    error_bound 0.5     // tolerancia de erro (float a partir de 0)
                        // quanto menor, melhor a qualidade da imagem
    
    recursion_limit 1   // determina quantidade máxima de recursao
                        // para o calculo da radiosidade (de 1 a 20)
                       
  } 
}*/

global_settings {
  assumed_gamma 1

        #switch (Rad_Quality)
         #case (1)
          radiosity {             // --- Padrão: Settings 1 (fast) ---
            pretrace_start 0.08
            pretrace_end   0.02
            count 50
            error_bound 0.5
            recursion_limit 1
          }
         #break
         #case (2)
          radiosity {             // --- Settings 2 (medium quality) ---
            pretrace_start 0.08
            pretrace_end   0.01
            count 120
            error_bound 0.25
            recursion_limit 1
          }
         #break
         #case (3)
          radiosity {             // --- Settings 3 (high quality) ---
            pretrace_start 0.08
            pretrace_end   0.005
            count 400
            error_bound 0.1
            recursion_limit 1
          }
         #break
         #case (4)
          radiosity {             // --- Settings 4 (medium quality, recursion_limit 2) ---
            pretrace_start 0.08
            pretrace_end   0.005
            count 350
            error_bound 0.15
            recursion_limit 2
          }
         #break
         #end

} 

//======================================

camera {
   location <-10, 30, -145>
   look_at <0, 0, 0> 
}

// luz pontual
light_source {
   <-10, 20, -10> color White
   }

// parede
plane { x, 10
        pigment {White}
}
plane { x, -20
        pigment {White}
}

// chão
plane { y, 0
   pigment { Tan }
   finish {
      crand 0.015
      ambient 0.12
      diffuse 0.8
   }
}


// Objetos
sphere {
   <0, 7, 0>, 7

   pigment { Red }
   finish {
      ambient 0.1
      diffuse 0.7
      phong 1
      phong_size 80
   }
}

box {
   <-3, -3, -3>, <3, 3, 3>
   pigment { Gold filter 0.92 }
   finish {
      ambient 0.1
      diffuse 0.7
      phong 1
      phong_size 50
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
