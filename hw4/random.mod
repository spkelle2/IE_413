

         MODEL DEFAULTS
         --------------

Model Name:         Untitled
Model Description:  
Output File:        random.out
Output Plot Style:  NOAUTO_FIT
Run Mode:           SINGLE_STEP
Trace Vars:         VALUE[ID],ID
Random Number Seed: 12345
Initial Values:     ID=0
Ending Condition:   STOP_ON_TIME
Ending Time:        1000.000
Trace Events:       ALL EVENTS TRACED
Hide Edges:         



         STATE VARIABLES
         ---------------

     State Variable #1
Name:          VALUE
Description:   Value for a given Randomly Generated Number
Type:          REAL
Size:          1000

     State Variable #2
Name:          ID
Description:   Index of RND's
Type:          INTEGER
Size:          1



          VERTICES
          --------

     Vertex #1
Name:             A
Description:      
State Changes:    
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.35;  Y:  2.26;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #2
Name:             B
Description:      Increment ID
State Changes:    VALUE[ID]=RND,ID=ID+1
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.35;  Y:  1.61;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom



          EDGES
          -----


     Graphics Edge #1

  Sub-Edge #1
Description:   
Type:          Scheduling
Origin:        A
Destination:   B
Condition:     1==1
Delay:         0
Priority:      5
Attributes:    

     Graphics Edge #2

  Sub-Edge #2
Description:   
Type:          Scheduling
Origin:        B
Destination:   B
Condition:     1==1
Delay:         1
Priority:      5
Attributes:    

