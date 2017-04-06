

         MODEL DEFAULTS
         --------------

Model Name:         Untitled
Model Description:  
Output File:        parking.out
Output Plot Style:  NOAUTO_FIT
Run Mode:           SINGLE_STEP
Trace Vars:         
Random Number Seed: 12345
Initial Values:     
Ending Condition:   STOP_ON_TIME
Ending Time:        1000.000
Trace Events:       ALL EVENTS TRACED
Hide Edges:         



         STATE VARIABLES
         ---------------

     State Variable #1
Name:          TIME
Description:   Cumulative time exactly X spaces are in use
Type:          REAL
Size:          21

     State Variable #2
Name:          X
Description:   Number of occupied spaces
Type:          INTEGER
Size:          1

     State Variable #3
Name:          BALK
Description:   Number of cars that balk
Type:          INTEGER
Size:          1

     State Variable #4
Name:          CARS
Description:   Total number of cars the simulation sees
Type:          INTEGER
Size:          1

     State Variable #5
Name:          PREVCLK
Description:   Time of last change in occupied spaces
Type:          REAL
Size:          1



          VERTICES
          --------

     Vertex #1
Name:             I
Description:      
State Changes:    
Parameter(s):     X,BALK,PREVCLK,CARS
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.65;  Y:  2.59;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #2
Name:             A
Description:      
State Changes:    BALK=BALK+(X>=20),CARS=CARS+1
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.65;  Y:  1.93;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #3
Name:             P
Description:      
State Changes:    TIME[X]=CLK-PREVCLK,X=X+1,PREVCLK=CLK
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.65;  Y:  1.13;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #4
Name:             L
Description:      
State Changes:    TIME[X]=CLK-PREVCLK,X=X-1,PREVCLK=CLK
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.65;  Y:  0.49;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom



          EDGES
          -----


     Graphics Edge #1

  Sub-Edge #1
Description:   
Type:          Scheduling
Origin:        P
Destination:   L
Condition:     1==1
Delay:         15+10*RND
Priority:      5
Attributes:    

     Graphics Edge #2

  Sub-Edge #2
Description:   
Type:          Scheduling
Origin:        I
Destination:   A
Condition:     1==1
Delay:         -60/2.6*LN{1-RND}
Priority:      5
Attributes:    

     Graphics Edge #3

  Sub-Edge #3
Description:   
Type:          Scheduling
Origin:        A
Destination:   A
Condition:     1==1
Delay:         -60/2.6*LN{1-RND}
Priority:      5
Attributes:    

     Graphics Edge #4

  Sub-Edge #4
Description:   
Type:          Scheduling
Origin:        A
Destination:   P
Condition:     X<20
Delay:         0
Priority:      5
Attributes:    

