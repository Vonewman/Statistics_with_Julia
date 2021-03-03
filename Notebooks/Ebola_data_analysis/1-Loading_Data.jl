### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 2e473a0a-7b88-11eb-3173-6197fc9edbea
begin
	using DelimitedFiles
	wikiEVDraw = DelimitedFiles.readdlm("wikipediaEVDraw.csv", ',')  # getting quotes right is important!
end

# ╔═╡ e4e86e9e-7b80-11eb-0c52-a1d2fefb3ab1
md"""
## Ebola and Wikipedia: Loading publicly available data using Julia
"""

# ╔═╡ e20150d6-7b82-11eb-26ea-ab9a3a9b6454
md"""## In this lecture

- [Outcome](#Outcome)
- [Wikipedia data on the West African EVD epidemic](#Wikipedia-data-on-the-West-African-EVD-epidemic)
- [Loading the DelimitedFiles package](#Loading-the-DelimitedFiles-package)
- [Using readdlm() to load a .csv file](#Using-readdlm-to-load-a-.csv-file)
"""

# ╔═╡ e1a3ebf8-7b82-11eb-079d-bf9602759ae6
md"""
[Back to the top](#In-this-lecture)
"""

# ╔═╡ e096b880-7b82-11eb-1d43-69b8b68892e0
md"""
### Outcome

After this lecture, you will be able to
- Find data on the West African EVD epidemic online
- Load a Julia package
- Use readdlm() to load this data from a .csv file

[Back to the top](#In-this-lecture)
"""

# ╔═╡ d8045e6e-7b84-11eb-1081-fdb6f410535e
md"""
### Wikipedia data on the West African EVD epidemic

Wikipedia has many excellent articles on Ebola. We will be using one with fairly complete data on the timeline of cases: https://en.wikipedia.org/wiki/West_African_Ebola_virus_epidemic_timeline_of_reported_cases_and_deaths

Go there now, please, and navigate until you see a table that looks like this:

<img src="Week2_Lecture2_1-Wikipedia-EVD-cases.png" alt="(Screenshot of wikipedia table of WA EVD cases)">
"""


# ╔═╡ d7db8ebc-7b84-11eb-1b6f-9dae225005a5
md"""
We have provided the data as a file named wikipediaEVDraw.csv. The ".csv" extension indicates that it is a comma-separated file, and the "raw" in the filename indicates that the data are imported as is, without any changes.

If you would like to learn how to create .csv files from tables on the web, please go the optional lecture "How to export web tables to .csv files".
"""

# ╔═╡ b9e5377a-7b87-11eb-14c3-d7a9dd870d2c
md"""
### Loading the DelimitedFiles package

Here is a special Julia moment: our first time to load a package explicitly. 

As noted in an earlier lecture, Julia consists of some basics that are always loaded, plus extensions that can be additionally loaded. One of these is the DelimitedFiles package, which is part of the standard library, but in order to use it, you have to load it. To do so is very simple: you just enter ``using DelimitedFiles``. We need it to read the .csv file of EVD data.

But *why* do we need to load the DelimitedFiles package? Why isn't it available out of the box, when you start up Julia?

The reason is efficiency, of two kinds. First there is starting-up efficiency, then there is functionality efficiency.

Starting-up efficiency is achieved by not cluttering the starting-up process with all kinds of features that aren't essential to starting up. Most programs go a little beyond the absolute minimum, though, and Julia is no exception. However, although .csv files are very often used, they are only one of many kinds of delimited files. It is part of the Julia philosophy to put related functionalities together in one place, so the methods for reading and writing delimited files are all in the DelimitedFiles package. This makes it both quite large and full of features that are only rarely needed---in other words, it makes DelimitedFiles incompatible with starting-up efficiency.

Functionality efficiency is achieved by making it easy to find the functionality you need, quick to write the code you need, and for this code to run optimally fast. How this is achieved is an advanced topic, but one thing is clear: making it possible read a .csv file in out-of-the box Julia does not necessarily help with any of this.

What you see here is a strong element of Julia's design, which values consistency and efficiency above convenience.
"""

# ╔═╡ b9ab1c20-7b87-11eb-25cd-5fb16e7d21e5
md"""
### Using readdlm to load a .csv file

Now we can start using Julia again. In a new notebook for you Week 2 Julia code, enter and execute the line below:
"""

# ╔═╡ d7b84cfe-7b84-11eb-1c66-2b85b2156ae1
md"""
The ``readdlm()`` function is Julia's way to read any file that consists of lines separated into data items with a delimiter of some sort. In fact, the very word "readdlm" is an abbreviation of "read-with-a-delimiter". 

Notice five things
- We loaded the DelimitedFiles package with ``using DelimitedFiles``.
- In order to use ``readdlm()``, we have to say that it sits in the DelimitedFiles package, using the dot syntax ``DelimitedFiles.readdlm()``. This use$^1$ of dot syntax for referencing an object that sits inside another object is also used in languages like C++ and Java. 
- We have used a variable to contain the data from the file (you could change the name, though, if you like)
- The file name is given as a string, using double quotes
- The delimeter is given as a character, using single quotes

Finally, we see from the output the type the data: after they have been stored in the variable as an array, the elements are of type ``Any``. This is not good for computation---in particular, for modelling we need the data in terms of days since the start of the epidemic. Our next job is to convert the strings in columnn one into integers which give number of days since 22 March 2014.

$^1$ The dot syntax for using ``readdlm()`` can be avoided, but to present that we would need to discuss modules, and that is a relatively advanced topic that is not important for this course.
"""

# ╔═╡ Cell order:
# ╟─e4e86e9e-7b80-11eb-0c52-a1d2fefb3ab1
# ╟─e20150d6-7b82-11eb-26ea-ab9a3a9b6454
# ╟─e1a3ebf8-7b82-11eb-079d-bf9602759ae6
# ╟─e096b880-7b82-11eb-1d43-69b8b68892e0
# ╟─d8045e6e-7b84-11eb-1081-fdb6f410535e
# ╟─d7db8ebc-7b84-11eb-1b6f-9dae225005a5
# ╟─b9e5377a-7b87-11eb-14c3-d7a9dd870d2c
# ╟─b9ab1c20-7b87-11eb-25cd-5fb16e7d21e5
# ╠═2e473a0a-7b88-11eb-3173-6197fc9edbea
# ╟─d7b84cfe-7b84-11eb-1c66-2b85b2156ae1
