
This MATLAB package implements the Gabor-like wavelet transform in  
1-dimension described in the paper: 

[1] K.N. Chaudhury, M. Unser, "Construction of Hilbert Transform Pairs of 
Wavelet Bases and Gabor-Like Transforms," IEEE Transactions on Signal 
Processing, vol. 57, no. 9, pp. 3411-3425, September 2009.


Author: 
------
K.N. Chaudhury.

Usage:
-----

(1) Use

> generate()

to display the real and imaginary componenets (and modulus) of the fractional
B-spline wavelets used to approximate the Gabor function. 

(2) Use

> demo()

to run the a demo script that performs the Gabor wavelet analysis and 
reconstruction of a test signal.


Notes:
------

The fractional B-spline wavelet and its Hilbert transform are used for
approximating the real and imaginary components of the complex Gabor function. 

The quality of approximation is controlled using the degree ('alpha' 
parameter in the code) of the fractional B-spline. 

The scaling and wavelet filters for the fractional B-splines are (in general) 
infinitely supported, both in space and frequency domain.
For finite length data, the filtering is done by uniformly sampling the 
continuously-defined 2pi-periodic filters in Fourier space (as is done for 
the FFT kernel). 


All filtering (and subsampling) operations are performed in the Fourier space. 
We refer the readers to the following for implementation details:

[2] K.N. Chaudhury, Optimally Localized Wavelets and Smoothing Kernels,
Swiss Federal Institute of Technology Lausanne (EPFL) Thesis no. 4968.

One important detail is that two 'matched' approximation spaces are 
used for performing the multiresolution approximation. Before starting
the standard mutliresolution decomposition, this requires us to project
the signal onto the two different approximation spaces. For finite data,
this done using an all-pass projection filter. In the finite setting, this
projection operation is also invertible.


The modules are as follows:
---------------------------

1. demo.m	

Demonstrates the usage of the software with a simple example.

2. autcorr.m 	    

Computes the frequency response of the autocorrelation function. 	

3. filters.m  

Computes the scaling and wavelet filters.

4. projectionFilters.m    

Computes the filters for the least-squares projection onto the approximation
spaces.  

5. analysis.m	

Computes the complex wavelet subbands at different resolutions.

6. synthesis.m	

Reconstructs the original signal from the lowpass approximation and the
Gabor coefficients.


7. displayResults.m	

Displays the input signal, the real and imaginary componenets of the wavelet 
subbands at each resolution, and their modlus and phase, and also the  
reconstructed signal, and the error.

8.generate.m

Generates and displays the Gabor-like wavelet.

9.exception.m 	

Checks and corrects for inconsistency.