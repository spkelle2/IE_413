

         MODEL DEFAULTS
         --------------

Model Name:         Untitled
Model Description:  
Output File:        dice.out
Output Plot Style:  NOAUTO_FIT
Run Mode:           SINGLE_STEP
Trace Vars:         A[IN],B[IN],C[IN],D[IN],E[IN],F[IN],G[IN],H[IN]
Random Number Seed: 12345
Initial Values:     0
Ending Condition:   STOP_ON_TIME
Ending Time:        100.000
Trace Events:       ALL EVENTS TRACED
Hide Edges:         



         STATE VARIABLES
         ---------------

     State Variable #1
Name:          A
Description:   value for die A
Type:          INTEGER
Size:          10000

     State Variable #2
Name:          B
Description:   value for die B
Type:          INTEGER
Size:          10000

     State Variable #3
Name:          C
Description:   value for die C
Type:          INTEGER
Size:          10000

     State Variable #4
Name:          D
Description:   value for die D
Type:          INTEGER
Size:          10000

     State Variable #5
Name:          E
Description:   value for die E
Type:          INTEGER
Size:          10000

     State Variable #6
Name:          F
Description:   value for die F
Type:          INTEGER
Size:          10000

     State Variable #7
Name:          G
Description:   value for die G
Type:          INTEGER
Size:          10000

     State Variable #8
Name:          H
Description:   value for die H
Type:          INTEGER
Size:          10000

     State Variable #9
Name:          ID
Description:   Index of dice rolls
Type:          INTEGER
Size:          1

     State Variable #10
Name:          IN
Description:   Current dice roll
Type:          INTEGER
Size:          1

     State Variable #11
Name:          X
Description:   Current RND value
Type:          REAL
Size:          1



          VERTICES
          --------

     Vertex #1
Name:             1
Description:      
State Changes:    
Parameter(s):     ID
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.39;  Y:  2.54;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #2
Name:             2
Description:      
State Changes:    X=RND,A[IN]=1+3*(X>.33)+5*(X>.66),X=RND,B[IN]=2+3*(X>.33)+2*(X>.66),X=RND,C[IN]=2+(X>.33)+3*(X>.66),X=RND,D[IN]=1+(X>.16)+(X>.33)+(X>.5)+(X>.66)+(X>.83),X=RND,E[IN]=3+2*(X>.33)+2*(X>.66)+(X>.83),X=RND,F[IN]=4+(X>.16),X=RND,G[IN]=1+4*(X>.16)+2*(X>.5)+2*(X>.83),X=RND,H[IN]=2+(X>.16)+(X>.33)+(X>.5)+3*(X>.66),ID=ID+1
Parameter(s):     IN
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.39;  Y:  1.62;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom



          EDGES
          -----


     Graphics Edge #1

  Sub-Edge #1
Description:   
Type:          Scheduling
Origin:        1
Destination:   2
Condition:     1==1
Delay:         0
Priority:      5
Attributes:    ID

     Graphics Edge #2

  Sub-Edge #2
Description:   
Type:          Scheduling
Origin:        2
Destination:   2
Condition:     1==1
Delay:         1
Priority:      5
Attributes:    ID

