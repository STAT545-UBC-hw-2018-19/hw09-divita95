library(stringr)
library(tidyverse)
words <- readLines("words.txt")
vowels_lower_cha <- str_to_lower(words)
a_count <- str_count(vowels_lower_cha, "a")
e_count <- str_count(vowels_lower_cha, "e")
i_count <- str_count(vowels_lower_cha, "i")
o_count <- str_count(vowels_lower_cha, "o")
u_count <- str_count(vowels_lower_cha, "u")
vowels_count <- tibble( A = sum(a_count),
											 E = sum(e_count),
											 I = sum(i_count),
											 O = sum(o_count),
											 U = sum(u_count))
vow <- vowels_count %>%  
	gather(key = "vowels_new", value = "Freq", A:U)

#vowels_data <- table(vowels_count)
write.table(vow,"vowels_count.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)