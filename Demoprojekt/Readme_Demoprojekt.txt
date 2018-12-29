1. Put the whole Demoprojekt-folder somewhere.
2. Copy 
		- GFM-FillPages.sty
		- GFM-RealPage.sty
		- GFM-Liederbuch.sty
	to the Demoprojekt-folder. The current versions can be found in the main directory
3. Open Demoprojekt.tex
4. Compile the document

In case of problems:

xparse not found => add \usepackage{xparse} in second line in Demoprojekt
still doesn't work => replace \usepackage{xparse} by \usepackage{l3packages}