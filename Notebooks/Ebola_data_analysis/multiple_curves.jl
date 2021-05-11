### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ aa4dc729-e08f-4640-b155-d3e3e89c2aa7
begin
	using DelimitedFiles
	EVDdata = DelimitedFiles.readdlm("wikipediaEVDdatesconverted.csv", ',') # again: don't forget the delimiter!
	EVDdata[end-9:end, :] # note the use of "end" in the array slicing
                      # ... and that end-9:end is a range with 10 elements
end

# ╔═╡ 460426d8-a765-11eb-3c06-05bb861b8819
md"""
# Multiple curves in a single diagram
"""

# ╔═╡ 444c4122-db4a-4c64-8b86-026c978bd6ca
md"""
## In this lecture

- [Outcome](#Outcome)
- ["if" statements](#"if"-statements)
- [Using "for" and "if" to fill in missing data](#Using-"for"-and-"if"-to-fill-in-missing-data)
- [Plotting the different countries' data simultaneously](#Plotting-the-different-countries'-data-simultaneously)
- [Customising the simultaneous plot](#Customising-the-simultaneous-plot)
"""

# ╔═╡ be0cd91f-e8f6-4edc-a704-3a58b918e4a8
md"""
## Outcome

After this lecture, you will be able to
- Use ``if`` to check for and remove non-numerical values in the data
- Plot several data series simultaneously
- Provide different markers and colours for the several data series
- Provide names to use in a legend for the plot

[Back to the top](#In-this-lecture)
"""

# ╔═╡ 1379c072-155b-4816-81e8-4cce42be0550
md"""
## "if" statements

The ``if`` statement, and variations thereof, are one of the most fundamental structures in  any programming language.

Basically, from time to time, a program needs to choose between a path on which to proceed.

The simplest choice is between doing something and doing nothing, which applies to a few of  the data in our West African EVD data set. Let's load it now to illustrate; we slice to show only the last 10 lines, which is where the missing data are. 
"""

# ╔═╡ a4fe5906-7012-42d9-8829-d1f9d2411518
md"""
We see that some of  them are not numbers. The last four columns (check the Wikipedia page again to confirm) are for Liberia and Sierra Leone. The absent data are because the first cases in those countries were reported after 22 March 2014.

We would like to change them. First let's look at "if" statements, via some examples
"""

# ╔═╡ 86cbcd59-64d0-406a-9d16-99fcf10e3250
begin
	a = rand()
	println("a now has the value $a")
	if a > 0.5
		println("this is quite a large value")
	end
end

# ╔═╡ 2f03c06b-4bdc-475b-a5e1-60f5895f0642
let
	for k = 1:8
   	b = rand()
   	println("b now has the value $b")
   	if b > 0.5
			println("this is quite a large value")
		end 
	end
end

# ╔═╡ 65abc0e1-d00e-4ffd-a5e0-dd2d245ad6d2


# ╔═╡ d7494402-3d35-4c5b-8a50-b235906bd860


# ╔═╡ 2df0f82b-0b51-45bc-aba8-ae8c81196571


# ╔═╡ d70f1b30-e9d2-45ef-9966-df02e1a4ff7a


# ╔═╡ Cell order:
# ╟─460426d8-a765-11eb-3c06-05bb861b8819
# ╟─444c4122-db4a-4c64-8b86-026c978bd6ca
# ╟─be0cd91f-e8f6-4edc-a704-3a58b918e4a8
# ╟─1379c072-155b-4816-81e8-4cce42be0550
# ╠═aa4dc729-e08f-4640-b155-d3e3e89c2aa7
# ╟─a4fe5906-7012-42d9-8829-d1f9d2411518
# ╠═86cbcd59-64d0-406a-9d16-99fcf10e3250
# ╠═2f03c06b-4bdc-475b-a5e1-60f5895f0642
# ╠═65abc0e1-d00e-4ffd-a5e0-dd2d245ad6d2
# ╠═d7494402-3d35-4c5b-8a50-b235906bd860
# ╠═2df0f82b-0b51-45bc-aba8-ae8c81196571
# ╠═d70f1b30-e9d2-45ef-9966-df02e1a4ff7a
