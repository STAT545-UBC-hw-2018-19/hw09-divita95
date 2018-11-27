all: words.txt report.html vowels_report.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html
	rm -f words.txt vowels_count.tsv hist_vowels.png vowels_report.md vowels_report.html

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'


report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

vowels_report.html: vowels_report.Rmd vowels_count.tsv hist_vowels.png
	Rscript -e 'rmarkdown::render("$<")'


histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf


hist_vowels.png: vowels_count.tsv
	Rscript -e 'library(ggplot2); qplot(x = vowels_new, y = Freq, data=read.delim("$<"),geom = "col", xlab = "English Vowels", ylab = "Frequency", fill=I("blue"), col=I("black")) ; ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<


vowels_count.tsv: vowels.R words.txt
	Rscript $<

#words.txt: /usr/share/dict/words
#cp $< $@


