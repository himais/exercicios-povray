#include "colors.inc"

camera { 
     location <2, 3, -10> 
     look_at <1, 1, 2> 
} 

light_source { <2, 4, -3> color Red} 

light_source { <-2, 4, -3> color Blue} 

light_source { <0, -4, -5> color Green} 

sphere { 
	<1, 1, 2>, 2 
	texture { 
		pigment { 
			color White 
		} 
	  }
} 

plane {
        y, -4
        pigment{
                color Red
         }  
}   
plane {
        y, 6
        pigment{
                color Red
         }  
}
plane {
        x, 6
        pigment{
                color Red
         }  
}
plane {
        x, -6
        pigment{
                color Red
         }  
}
     
plane {
        z, 10
        pigment{
                color Red
         }  
}

