### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ c7ab4890-9211-11eb-08df-1705766c4abc
md"_Homework 0, version 3 -- Spring 2021_"

# ╔═╡ c608f298-9212-11eb-1c39-c90ee6ffb62f
md"""
Submission by: **Abdoulaye Diallo**
"""

# ╔═╡ c608e95e-9212-11eb-3da6-47769b3fe95e
# edit the code below to set your name and kerberos ID (i.e. email without @mit.edu)

student = (name = "Abdoulaye Diallo", kerberos_id = "abdoulaye")

# press the ▶ button in the bottom right of this cell to run your edits
# or use Shift+Enter

# you might need to wait until all other cells in this notebook have completed running. 
# scroll down the page to see what's up

# ╔═╡ c608df7e-9212-11eb-27e2-d34e2db864eb
md"""
# Homework 0: Getting up and running

HW0 release date: Monday, Feb 15, 2021.

**HW0 due date: Thursday, Feb 18, 2021, 11:59pm EST**, _but best completed before Wednesday's lecture if possible_.

First of all, **_welcome to the course!_** We are excited to teach you about real world applications of scientific computing, using the same tools that we work with ourselves.

We'd like everyone to **submit this zeroth homework assignment**. It will not affect your grade, but it will help us get everything running smoothly when the course starts. If you're stuck or don't have much time, just fill in your name and ID and submit 🙂
"""

# ╔═╡ 24b9d7ec-9213-11eb-128f-55a0b4c63430
md"""## Homework Logistics
Homeworks are in the form of [Pluto notebooks](https://github.com/fonsp/Pluto.jl). Your must complete them and submit them on [Canvas](https://canvas.mit.edu/courses/5637) (if you are an MIT student.). If you are not an MIT student, we encourage you to [join Discord](https://discord.gg/Z5qnVf8) and find someone to cross-grade.

Homeworks will be released on Thursdays and due on Thursdays 11:59pm Eastern time.

HW0 is for you to get your system set up correctly and to test our grading software. You must submit it but it will not count towards your grade.
"""

# ╔═╡ 247e6722-9213-11eb-2e3f-5db6eb9547ed
md"## Requirements of this HW0

- Install Julia and set up Pluto    
- Do the required Exercise 0.

That’s it, but if you like you can do the _OPTIONAL_ exercises that follow."

# ╔═╡ c608d0e2-9212-11eb-05ad-931fef7cf405
md"""# Installation
Before being able to run this notebook succesfully locally, you will need to [set up Julia and Pluto.](/Spring21/installation/)

One you have Julia and Pluto installed, you can click the button at the top right of this page and follow the instructions to edit this notebook locally and submit.
"""

# ╔═╡ 58ff2572-9213-11eb-1e21-0755abc126d8
md"## (Required) Exercice 0 - _Making a basic function_
Computing the square of a number is easy -- you just multiply it with itself.

##### Algorithm:

Given: $x$

Output: $x^2$

1. Multiply `x` by `x`
"

# ╔═╡ 58c4d1ce-9213-11eb-14cb-4d0d6f9e05cc
function basic_square(x)
	return x * x
end

# ╔═╡ c58f8da4-9212-11eb-02e7-a74fb034431a
let
	result = basic_square(5)
	if !(result isa Number)
		md"""
!!! warning "Not a number"
    `basic_square` did not return a number. Did you forget to write `return`?
		"""
	elseif abs(result - 5*5) < 0.01
		md"""
!!! correct
    Well done!
		"""
	else
		md"""
!!! warning "Incorrect"
    Keep working on it!
		"""
	end
end

# ╔═╡ 4ac75154-9214-11eb-1505-0d175bfe8c60


# ╔═╡ 4a8bce0e-9214-11eb-34a2-813f2e66472a


# ╔═╡ Cell order:
# ╠═c7ab4890-9211-11eb-08df-1705766c4abc
# ╟─c608f298-9212-11eb-1c39-c90ee6ffb62f
# ╠═c608e95e-9212-11eb-3da6-47769b3fe95e
# ╟─c608df7e-9212-11eb-27e2-d34e2db864eb
# ╟─24b9d7ec-9213-11eb-128f-55a0b4c63430
# ╟─247e6722-9213-11eb-2e3f-5db6eb9547ed
# ╟─c608d0e2-9212-11eb-05ad-931fef7cf405
# ╟─58ff2572-9213-11eb-1e21-0755abc126d8
# ╠═58c4d1ce-9213-11eb-14cb-4d0d6f9e05cc
# ╟─c58f8da4-9212-11eb-02e7-a74fb034431a
# ╠═4ac75154-9214-11eb-1505-0d175bfe8c60
# ╠═4a8bce0e-9214-11eb-34a2-813f2e66472a
