Vehicle Path Tracking using Pure Pursuit Controller

This submission contains a set of models to show the implementation of a Pure Pursuit controller on a vehicle under different scenarios. 

---------------------------------------------------------------------------------------------------------------------------------------------------

About the models:
These models show a workflow to implement a Pure Pursuit controller to track a planned path. Steps below describe the workflow:
1. Generating waypoints
2. Formulating required steering angle for lateral control
3. Implementing a longitudinal controller to track the path at higher velocity
4. Visualizing vehicle final path in Bird's-Eye Scope and a 3D simulation environment. 


# Models

## 1_Curved_Low_Velocity
### purePursuitCurveLowVel
Contains a model to implement a Pure Pursuit controller for a vehicle moving at low velocity


## 2_Curved_High_Velocity
### purePursuitCurveHighVel
Contains a model to implement a Pure Pursuit along with a PI longitudinal controller for a vehicle moving at high velocity

## 3_USCity
### purePursuitUSCity
It contains a model to drive the vehicle through the US City scene. 


PRODUCT REQUIREMENTS:

The models use the following MathWorks products, all from R2020a release:
1)MATLAB
2)Simulink
3)Vehicle Dynamics Blockset
4)Automated Driving Toolbox
5)Navigation Toolbox

6)Aerospace Blockset 
7)Aerospace Toolbox
Note: The Aerospace Blockset and Aerospace Toolbox are only required for the "purePursuitUSCity" model to convert from rad/s to degree/s.
In case of the absence of these two toolboxes, define the conversion factor from rad/s to degree/s using a gain block and use the model. 



Minimum Hardware Requirements for Running Models in 3D Simulation Environment:

1. Graphics card (GPU) — Virtual Reality-ready with 8 GB of onboard RAM
2. Processor (CPU) — 2.60 GHz
3. Memory (RAM) — 12 GB
For more information please visit this web page: https://www.mathworks.com/help/driving/ug/3d-visualization-engine-requirements.html 

---------------------------------------------------------------------------------------------------------------------------------------------------

Copyright 2020 The MathWorks, Inc.