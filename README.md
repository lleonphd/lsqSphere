# lsqSphere
This project takes a point cloud of measurements (i.e., a set of x-y-z points in space) and fits a sphere to the given point cloud.

Start with the pdf doc "least squares circle and sphere.pdf". This presents the solution to the problem using the method of least-squares.

The corresponding ".tex" file was used to generate the pdf. 

The primary Matlab function is "wlsqSphere.m".

"test_wlsqSphere.m" is a tester Matlab script that applies "wlsqSphere.m" to a few toy problems. I used Matlab's Publish tool to create more readable version of the script and its outputs.
