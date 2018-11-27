make-activity
=============

### This is the Homework#9 repository of **Divita Pal**

#### Overview
The repo basically includes the files required for STAT 547 homework  assignment#9. The repo was seeded with Jenny's makefile and the markdown and HTML files were named `report`. The analysis done by me was similar to Jenny's expect the fact that I only looked into the `frequency of English Vowels`in the `words.txt`.

#### Content
The repo consists of the following files:
1. [Histogram.png](https://github.com/STAT545-UBC-students/hw09-divita95/blob/master/histogram.png): The picture showing the frequency of English word length
2. [Hist_vowels.png](https://github.com/STAT545-UBC-students/hw09-divita95/blob/master/hist_vowels.png): Picture showing the frequency of english vowels
3. [Report.html](https://github.com/STAT545-UBC-students/hw09-divita95/blob/master/report.html): The html file created by Jenny
4. [Vowels_report.html](https://github.com/STAT545-UBC-students/hw09-divita95/blob/master/vowels_report.html): The html file created for english vowel frequency
5. [Makefile](https://github.com/STAT545-UBC-students/hw09-divita95/blob/master/Makefile): The file can consist of all the directives to perform the specific target.

#### Packages Required
The packages required to be loaded are:
```{r}
library(tidyverse)
library(stringr)
library(rsconnect)
```
You can just copy and paste the above chunck in the console or use `install.packages()` to first install and then load.

#### Changes made
For this assignment, I created a new R script which gave me the frequency count of each vowel that is `A E I O U` and rendered it to the orginial makefile. The R script was named `vowels.R` and the output file was named `vowels_count.tsv`. The tsv file ouput was used as an input for the `vowels_report.Rmd` file and the .md and .html output files were `vowels_report.md` and `vowels_report.html` respectively. The histogram representing the analysis was stored under `hist_vowels.png`. All the files were rendered to the original makefiles. Links to all the files are provided above.
