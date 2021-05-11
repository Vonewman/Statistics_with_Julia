### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 6f79ce34-a2d8-44f9-b6c7-f519bd65964c
begin
	using DelimitedFiles
	EVDdata = DelimitedFiles.readdlm("wikipediaEVDdatesconverted.csv", ',')
	epidays = EVDdata[:, 1]
end

# ╔═╡ f995301f-fdd2-494f-80da-c149d720585f
using Plots

# ╔═╡ 12e8007a-a3bd-11eb-1a3a-b3d5a5c00706
md"""
# Simple plots with the Plots package
"""

# ╔═╡ 9bf5ef2a-0c6e-43cf-a7f3-d96804b0b9ee
md"""
## In this lecture

- [Outcome](#Outcome)
- [Load the Plots package into a current notebook](#Load-the-Plots-package-into-a-current-notebook)
- [Activate the GR backend for use with Plots](#Activate-the-GR-backend-for-use-with-Plots)
- [Plot a curve from coordinate data](#Plot-a-curve-from-coordinate-data)
- [Tweak the current plot](#Tweak-the-current-plot)
- [Save the current plot](#Save-the-current-plot)

"""

# ╔═╡ 68273bbd-ef16-489d-9959-35607d35fb2c
md"""
[Back to the top](#In-this-lecture)
"""

# ╔═╡ e56d0f89-caa3-4c32-b48a-99521d82bbe7
md"""
## Outcome

After this lecture, you will be able to
- Explain how the Plots package relates to other plotting projects in Julia
- Load the Plots package into a current notebook and the GR backend for use with Plots
- Plot coordinate data as lines in the default style supplied by Plots
- Modify the current plot style: replace lines with markers, add title and labels, remove legend and grid lines
- Save the current plot in .png and .pdf format

[Back to the top](#In-this-lecture)
"""

# ╔═╡ 6b878931-5be7-4b6c-b20e-44dd1abdc2ad
md"""To start, we load the data that we saved last time (the *converted* data, of course), and we create the x- and y-coordinates of the points we want to plot. Those are of course just columns 1 and 2 of the data.

We use array slicing to extract the data we need---note the use of  the ``:`` operator
"""

# ╔═╡ 22e90784-48b2-409c-962f-6d60dc7a3d0c
allcases = EVDdata[:, 2]

# ╔═╡ 91bf3ab3-5273-4b0d-b447-cd3be1dc055e
md"""
## Load the Plots package into a current notebook

Julia has quite a few projects on visualising scientific and technical data, and  several of them are concerned mainly with making plots. 

We choose to offer you the Plots package, together with the GR backend.

We load Plots with a simple command. This also works from your own home installation, though  you may have to add the Plots package by issuing ``Pkg.add("Plots")``.

WARNING: sadly, one pays substantial compilation cost for Plots. This is being worked on, but for now, the first time you load Plots in a notebook, as well the first plot you make, you'll wait as much as a minute or two.
"""

# ╔═╡ a3bfe994-b434-46db-8274-60fa66c778a4
md"## Activate the GR backend for use with Plots"

# ╔═╡ 8409215f-dfb6-43ce-a8da-2901519bb1f7
md"""
As I said above, having loaded Plots we need to specify which backend to use. The idea of Plots is that we specify a plot with *identical code*, irrrespective of backend. To change backends is then just to run the command for the new backend.

However, not all backends do the same things, of course, so some things work better in some back-ends and other things in others. For more information, do consult the Plots homepage at https://juliaplots.github.io . The GR examples are at http://docs.juliaplots.org/latest/examples/gr/ .

Here's how to specify GR as the backend for  Plots to use:
"""

# ╔═╡ 7be1fedb-cb15-4dfd-b073-3de8f76efd9c
gr()

# ╔═╡ 98044629-7b11-4af0-b7b9-c3e870a18234
md"""
Note that it is enough to use ``gr()``. That is, no arguments are needed. Plots has reasonable default values it uses, but the user can override them. For example, you can  specify a picture size of your own liking.
"""

# ╔═╡ b4bb9ae9-78fb-48ad-8531-a580c6bc8b1a
md"[Back to the top](#In-this-lecture)"

# ╔═╡ bc0f9dd2-0ab7-448c-ab0d-4fe707f19e9f
md"""
## Plot a curve from coordinate data

For Plots to work as advertised, it must be extremely straightforward to plot the data. And it is:
"""

# ╔═╡ e57e1451-4ed8-4a37-a566-94fef874e151
plot(epidays, allcases)

# ╔═╡ cfc58170-b498-4ec6-ae77-2439d1a0dac2
md"""
Hm, not too bad! Good choice of scale for the two axes. A light blue for the curve is not that readable for some people, but it looks pretty. The default is to show a legend but neither title nor axis labels.

Plots lives up to its billing---simple to use, good pictures produced.
"""

# ╔═╡ 8316ccdc-a080-4526-8a5b-99270c31b5ed
md"""
[Back to the top](#In-this-lecture)
"""

# ╔═╡ 3578c4f2-9de8-449f-8081-9e89a966e80c
md"""
## Tweak the current plot
"""

# ╔═╡ faf627da-3ce9-4995-86bf-14a4d7b8f1ff
md"""
We choose different attributes by specifying the values of keywords. Plots provides many ways to do this, but I'll show only a few. For more information, see the Plots homepage https://juliaplots.github.io/ .

I think the plot would be better if it used symbols for the data points. Let's also omit the line. That means the line type is set to ``scatter``. The keyword for the symbol that is plotted is ``marker``, and I  choose ``diamond`` as its value. Note the use of the colon in the syntax below!
"""

# ╔═╡ 002015a3-1803-4563-a06f-ad094eeb758b
plot(epidays, allcases, linetype = :scatter, marker = :diamond)

# ╔═╡ 3b8da727-e37c-4490-80ef-93cc1d083b08
md"""
We should also add a title and axis labels, and while we're at it we'll turn off the legend. For illustration, I also change the line type and line style so that a gray dotted line is plotted between the diamonds, the the grid off and  I increase the size of the diamonds.

For the long command that results, it is a good idea to use white space to break it into logical parts. Note that although visually it looks like several lines, it is just one function call and so in the sense of computer programming it is just one unit of code.
"""

# ╔═╡ 7177bda8-f6dc-401b-a15c-659b5d5e3877
plot(epidays, allcases,   # here are the data to be plotted, below are the attributes
title       = "West African EVD epidemic, total cases", 
xlabel    = "Days since 22 March 2014",
ylabel    = "Total cases to date (three countries)",
marker  = (:diamond, 8),  # note the use of  parentheses to group the marker attributes into a composite of attributes 
                          # and because we plot both the path and the points, we use plot rather than scatter
line         = (:path, "gray"),   # line attributes likewise put together as one unit by the use of parantheses
legend   = false,
grid        = false)    

# A nice thing: this layout permits us add comments to individual parts of  the function call. 
# Also, notice that it helps readibility to line up vertically all the assignment "=" signs

# ╔═╡ bc8539da-1cec-471d-8cdd-ce43d22b1f31
md"""
## Save the current plot

Of course, one needs to be able to save plots from the screen in a format to be used elsewhere. For documents and presentations, pdf is a good format, while for websites .png is often preferred. 

The function to use is savefig(). Plots will follow the extension you provide for the filename. If you omit the filename, the defaults kick in and Plots will use png as the format and add .png as the file extension.

All three cases are illustrated below. After you've saved the figures, check in your folder that they are there and work as advertised!
"""

# ╔═╡ f85d1fb2-cc4e-48a9-bbfe-46a6e2500f17
begin 
	savefig("WAfricanEVD_noformatspecified")
	savefig("WAfricanEVD.pdf")      # Saved as a pdf
	savefig("WAfricanEVD.png")     # Saved png format
end

# ╔═╡ f08a32af-eee2-4d43-bb2b-4040f91aaca2


# ╔═╡ Cell order:
# ╟─12e8007a-a3bd-11eb-1a3a-b3d5a5c00706
# ╟─9bf5ef2a-0c6e-43cf-a7f3-d96804b0b9ee
# ╟─68273bbd-ef16-489d-9959-35607d35fb2c
# ╟─e56d0f89-caa3-4c32-b48a-99521d82bbe7
# ╟─6b878931-5be7-4b6c-b20e-44dd1abdc2ad
# ╠═6f79ce34-a2d8-44f9-b6c7-f519bd65964c
# ╠═22e90784-48b2-409c-962f-6d60dc7a3d0c
# ╟─91bf3ab3-5273-4b0d-b447-cd3be1dc055e
# ╠═f995301f-fdd2-494f-80da-c149d720585f
# ╟─a3bfe994-b434-46db-8274-60fa66c778a4
# ╟─8409215f-dfb6-43ce-a8da-2901519bb1f7
# ╠═7be1fedb-cb15-4dfd-b073-3de8f76efd9c
# ╟─98044629-7b11-4af0-b7b9-c3e870a18234
# ╟─b4bb9ae9-78fb-48ad-8531-a580c6bc8b1a
# ╟─bc0f9dd2-0ab7-448c-ab0d-4fe707f19e9f
# ╠═e57e1451-4ed8-4a37-a566-94fef874e151
# ╟─cfc58170-b498-4ec6-ae77-2439d1a0dac2
# ╟─8316ccdc-a080-4526-8a5b-99270c31b5ed
# ╟─3578c4f2-9de8-449f-8081-9e89a966e80c
# ╟─faf627da-3ce9-4995-86bf-14a4d7b8f1ff
# ╠═002015a3-1803-4563-a06f-ad094eeb758b
# ╟─3b8da727-e37c-4490-80ef-93cc1d083b08
# ╟─7177bda8-f6dc-401b-a15c-659b5d5e3877
# ╟─bc8539da-1cec-471d-8cdd-ce43d22b1f31
# ╠═f85d1fb2-cc4e-48a9-bbfe-46a6e2500f17
# ╠═f08a32af-eee2-4d43-bb2b-4040f91aaca2
