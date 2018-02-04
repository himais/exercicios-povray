//Aula 8 - Atividade 1 - Maíra Tabata 1561545.pov
//Arquivo Letras_01.pov
  
  #include "colors.inc"
  camera {
    location <0, 1, -10>
    look_at 0
    angle 35
  }

  light_source { <500,500,-1000> White }
  plane {
    y,0
    pigment { checker Green Pink }
  }                  
  

  text {
    ttf "timrom.ttf"    // fonte da letra
    "POV-RAY 3.0" 0.5,  // texto desejado e profundidade 
    2*x                  // distancia entre letras no eixo x 
    
    translate -3*x
    pigment { Red }
  }               
 




  


     
   



  