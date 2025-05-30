BMED469 – Biomedical Image Processing – Lab Homework 4
This repository contains the MATLAB implementation for Lab Homework 4, focused on Watershed Segmentation from the BMED469 Biomedical Image Processing course.

Objective
Understand and apply Watershed Segmentation in MATLAB.

Explore preprocessing techniques (Gaussian filtering, morphological operations).

Segment anatomical structures from a biomedical image (brain.jpg).

Visualize and analyze results using watershed lines and labeled regions.

Screenshots
Screenshot 1 – MATLAB Code

Screenshot 2 – Segmentation Output

Files in This Repository
File Name	Description
lab4homework.m	MATLAB script performing watershed segmentation
brain.jpg	Input biomedical image
Screenshot1.png	Screenshot showing MATLAB code
Screenshot2.png	Screenshot showing segmentation output

How to Run
Place all files in the same directory.

Open MATLAB.

Navigate to the directory containing the files.

Run the script by typing:

matlab
Copy
Edit
lab4homework
This will:

Load the input image (brain.jpg)

Apply Gaussian smoothing and morphological preprocessing

Perform Watershed Segmentation

Display the original, gradient, and segmented images

Summary of Results
Watershed segmentation effectively separates overlapping or touching regions by treating the image as a topographic surface.

Morphological operations and distance transforms enhance foreground/background separation.

The final labeled result shows clear region separation with color-coding.

⚙️ Requirements
MATLAB R2018b or newer recommended

Image Processing Toolbox

📚 License
This repository is intended for educational use as part of BMED469 coursework.

