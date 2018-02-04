/*

Aula 7
Exercício 2 - sor.pov

*/

#include "colors.inc" 
#include "textures.inc"  

//Camera
camera {
        location <0, 7.5, -25>
        look_at <0, 2, 5> 
        angle 36
}   

//Luz 
light_source { <500,500,-1000> color White}

//Chão
plane {
        y, -1   
        texture { Jade } 
}   
  
//Fundo
plane {
        z, 55   
        texture { Starfield } 
} 

//Pontos da nave
sor {
        8, // qtde pontos
        <0, 0>, 
        <2, 0.8>,
        <4, 1.8 >,
        <2, 2.9>,    //2.7
        <1, 4>,
        <0.5, 4.5>,
        <0.2, 4.6>,
        <0, 4.7> 

        texture { Silver_Metal }    
        translate y*2.9  
        rotate z*5

}  
   
//Luz da nave   
light_source{ 
        <0,2.9,0>
        color White
        spotlight        
        radius 40       
        falloff 48     
        tightness 10   
        point_at <0.5, 0, 0> 
}
      
      




  
