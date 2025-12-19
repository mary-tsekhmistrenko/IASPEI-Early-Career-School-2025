# Legacy seismology: Digitizing old waveforms for modern seismology
## IASPEI Early Career Scientific School on digitizing legacy seismic data and validating them using ocean microseism

## Authors: 
* Raphael De Plaen ([@RDePlaen](https://github.com/RDePlaen))
* Thomas Lecocq ([@seismotom](https://github.com/ThomasLecocq))
* Josep Batllo


## Introduction:

Analog seismograms on photographic paper, smoked paper and other magnetic support are records of ground motion that cover most of the 20th century. Whether for past earthquakes or the analysis of continuous wavefiled for time dependent seismology, this represents a wealth of information that can not be found anywhere else but remains hard to exploit with modern tools.
In this excersise, we will explore the digitisation of old seismic records and the challenges that can be encountered before they can be used for modern seismology.
The paper seismograms that we will use have already been scanned but need to be vectorised.

Throughout much of the 20th century, ground motion was recorded on analog seismograms using photographic paper, smoked paper, magnetic media, etc. 
These records capture an invaluable archive of past earthquakes and continuous seismic signals, offering insights that are unavailable from modern datasets alone, seismic or otherwise. 
Making use of this information today is challenging, as the original formats are not directly compatible with modern analysis tools.

In this exercise, we will explore the process of digitizing historical seismic records and discuss the main challenges involved in preparing them for contemporary seismological studies. The seismograms we will work with have already been scanned, but they still need to be converted into vectorized form before they can be analyzed.

<p align="center">
  <img src="./figures/gal.jpg" width=600></img>
</p>

This morning's exercise will teach you:
1. How to vectorize seismic traces from a scanned seismogram. 
2. How to convert the time series into ground motion using the transfer function
3. Validate the spectra of the vectorised trace by comparing it with corresponding WaveWatch III ocean model

Download the missing data from [here](https://drive.google.com/drive/folders/1fbM5bdcqHHhwoMNBJcT90rWbKXTNZu_G?usp=sharing) and put it in the data folder.

## References:
* Lecocq, T., Ardhuin, F., Collin, F., & Camelbeeck, T. (2020). On the extraction of microseismic ground motion from analog seismograms for the validation of ocean‐climate models. Seismological Research Letters, 91(3), 1518-1530.

* Ishii, M., & Ishii, H. (2022). DigitSeis: software to extract time series from analogue seismograms. Progress in Earth and Planetary Science, 9(1), 50.

* Tomasetto, L., Boué, P., Ardhuin, F., Stutzmann, É., Xu, Z., De Plaen, R., & Stehly, L. (2025, April). WMSAN: Wave Model Sources of Ambient Noise Python Library. From Modeling to Applications. In EGU General Assembly-Ambient Seismic Noise and Seismic Interferometry.
