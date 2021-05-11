"""
For example, let’s consider a function f of three variables x, y and z.
Let’s suppose we want to fix two variables (y and z) and integrate f
over x, we could do it with:
"""

using QuadGK

f(x, y, z) = (x^2 + 2y) * z

function integral_of_f(y, z)
    arg(x) = f(x, y, z)
    result = quadgk(arg, 3, 4)
    return result
end
