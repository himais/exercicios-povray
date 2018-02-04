/*

Aula 7
Exercício 1 - Taca.pov
Maíra Satiko Tabata - 1561545

*/

#include "colors.inc"  
#include "woods.inc" 
#include "glass.inc"    
#include "consts.inc"

//Camera
camera {
        location <0, 1.5, -13>
        look_at <0, 1, 5> 
        angle 36
}
  
//Fundo
background { LightSteelBlue }

//Luz 
light_source { <1000,1000,-1000> color White}

//Chão
plane {
        y, -1   
        texture { T_Wood30 } 
}   

//Cone para o recorte da base e o topo
#declare taca = 
        cone {
                <-2,2,0>, 0.2   // Centro, Raio
                <-2,-1,0>, 1    // Centro, Raio 
                open
        } 
                                     
//União dos objetos que formam a taça
union {  
        //Criar a base redonda --> box e o cone 
       
        intersection{
                box { <-1, -1, 3>, <1, -0.8, 5>        
                        translate z*-1
                } 
                
                object {
                        taca            
                        translate x*2                
                        translate z*3
                }  
        } //fim intersecção 
        
        merge{
                //Topo 
                object{
                        taca 
                        scale -1
                        translate y * 2
                        translate x*-2 
                        translate z*3 
                        interior { ior Water_Ior }
                }  
                
                //Comprimento 
                cylinder {              
                
                        <0, 0, 3> <0, 1, 3>, 0.25
                        translate y*-0.5
                        scale y*2                          
                } 
        }  
        
        pigment { Col_Glass_Ruby }  
        finish{ 
                F_Glass8                
              /*  specular 0.6
                roughness 0.010
                ambient 0
                diffuse 0.1
                brilliance 5
                reflection{ 0.1, 0.1 fresnel on}    */
        }  
        
        translate z*-3 
}//fim união                                              


     
   



  