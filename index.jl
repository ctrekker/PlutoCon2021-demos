### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ c09023be-e4a3-4969-a938-6a9d46008c4b
html"""

<div style="
position: absolute;
width: calc(100% - 30px);
border: 50vw solid hsl(15deg 80% 85%);
border-top: 500px solid hsl(15deg 80% 85%);
border-bottom: none;
box-sizing: content-box;
left: calc(-50vw + 15px);
top: -500px;
height: 200px;
pointer-events: none;
"></div>

<div style="
height: 200px;
width: 100%;
background: hsl(15deg 80% 85%);
color: #fff;
padding-top: 10px;
">
<span style="
font-family: Vollkorn, serif;
font-weight: 700;
font-feature-settings: 'lnum', 'pnum';
"> 
<p style="text-align: center; font-size: 2rem; background: hsl(344deg 29% 63%); border-radius: 20px; margin-block-end: 0px; margin-left: 1em; margin-right: 1em;">
PlutoCon 2021
</p>
<p style="text-align: center; font-size: 2rem; color: #1f2a4896; margin-top: 0px;">
<em>demo page</em>
</p>
</div>

<style>
body {
overflow-x: hidden;
}
</style>
"""

# ╔═╡ c6e22e1b-759f-4eca-b3c6-2d16b133c79d
md"""
Welcome to the PlutoCon demo page! The notebooks on this site were submitted by Pluto users, and you can view them in your browser. Just like the website [computationalthinking.mit.edu](computationalthinking.mit.edu), we will use our [fancy new technology](https://github.com/JuliaPluto/PlutoSliderServer.jl) to run sliders, button, webcam inputs, etc. directly on the website.
"""

# ╔═╡ 03869e11-5785-4b05-b830-64e25aa66dc6


# ╔═╡ 92fa5931-5ac5-4358-a141-210f73806925
md"""
## Notebooks
"""

# ╔═╡ a5d4e8bc-75b6-40c9-81cd-220f41d16261


# ╔═╡ 29507706-e205-4c14-8535-b56955093f2f


# ╔═╡ 5fc9f211-1519-4843-a3e5-3bf2ffb59a40


# ╔═╡ 08516ec4-c572-4dec-8efa-4034dd91cb9f
md"""
## Submit your notebook!
Would you like **_your cool notebook_** to become an interactive web page?

You can either:

1. email your notebook to [fons@plutojl.org](mailto:fons@plutojl.org)
2. open a Pull Request to [this repository](https://github.com/JuliaPluto/PlutoCon2021-demos), adding your notebook.

Be sure to write your name and an introduction inside the notebook. Use `@bind` to make your notebook interactive!
"""

# ╔═╡ 74966583-b867-491d-9cba-38e3e827a3d8


# ╔═╡ 416fb2fa-9b31-4e27-9722-6bf8bc6fdf30


# ╔═╡ 9aa74fa4-e1fa-4847-88f5-0805efaaec1a


# ╔═╡ 4ed08503-b27d-42e0-891d-fb5297004c43


# ╔═╡ 88a92de9-5814-499c-8b31-71c3d3b949a2


# ╔═╡ facbbc3b-63d1-4826-9ee6-e9a34416e06f


# ╔═╡ 17523d60-32be-4f7b-b18e-af93db42c6fb


# ╔═╡ 34cab700-81a4-4ff8-9940-bc823065eea2
md"""
## Appendix
"""

# ╔═╡ ff3c1dcb-b023-4d12-9b74-1090be7a8dbc
i_am_at = pwd()

# ╔═╡ 8b4d1fe6-e689-44d3-8e31-ce6e3162d882
friends = readdir(i_am_at)

# ╔═╡ bcd491b0-50cc-4cd4-9751-9ba8b39f7e0d
notebookfiles = let
	allfiles = filter(isfile, friends)
	jlfiles = filter(x -> occursin(".jl",x), allfiles)
	
	plutofiles = filter(jlfiles) do f
		readline(f) == "### A Pluto.jl notebook ###"
	end
	
	setdiff(plutofiles, ["index.jl"])
end

# ╔═╡ 376534be-acfa-4c65-a9c0-d424c63e8a4e
all_the_notebooks = """
<ul>
$(map(notebookfiles) do path
	html_filename = if endswith(path, ".jl")
		path[1:end-3] * ".html"
	else
		path * ".html"
	end
	
"<li><a href=\"$(html_filename)\">$(html_filename[1:end-5])</a></li>"
end |> join
)
</ul>
""" |> HTML

# ╔═╡ Cell order:
# ╟─c09023be-e4a3-4969-a938-6a9d46008c4b
# ╟─c6e22e1b-759f-4eca-b3c6-2d16b133c79d
# ╟─03869e11-5785-4b05-b830-64e25aa66dc6
# ╟─92fa5931-5ac5-4358-a141-210f73806925
# ╟─376534be-acfa-4c65-a9c0-d424c63e8a4e
# ╟─a5d4e8bc-75b6-40c9-81cd-220f41d16261
# ╟─29507706-e205-4c14-8535-b56955093f2f
# ╟─5fc9f211-1519-4843-a3e5-3bf2ffb59a40
# ╟─08516ec4-c572-4dec-8efa-4034dd91cb9f
# ╟─74966583-b867-491d-9cba-38e3e827a3d8
# ╟─416fb2fa-9b31-4e27-9722-6bf8bc6fdf30
# ╟─9aa74fa4-e1fa-4847-88f5-0805efaaec1a
# ╟─4ed08503-b27d-42e0-891d-fb5297004c43
# ╟─88a92de9-5814-499c-8b31-71c3d3b949a2
# ╟─facbbc3b-63d1-4826-9ee6-e9a34416e06f
# ╟─17523d60-32be-4f7b-b18e-af93db42c6fb
# ╟─34cab700-81a4-4ff8-9940-bc823065eea2
# ╟─ff3c1dcb-b023-4d12-9b74-1090be7a8dbc
# ╟─8b4d1fe6-e689-44d3-8e31-ce6e3162d882
# ╟─bcd491b0-50cc-4cd4-9751-9ba8b39f7e0d
