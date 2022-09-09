### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ 251dd2cf-fc8f-4dbb-a702-b36e39dd2b15
function complement(strand)
	strand = lowercase(strand)
	return(replace(strand, "a" => "t", "t" => "a", "c" => "g", "g" => "c"))
end

# ╔═╡ d2abe46a-fc87-4e8c-9c60-34c6a222052d
print(complement("actgatcgtac"))

# ╔═╡ 71b40459-9ebb-4a34-b9e0-f538237f31d2
function dsDNA(strand)
	strand = lowercase(strand)
	upper = strand |> complement |> reverse
	lower = strand
	println(upper)
	println(lower)
end

# ╔═╡ fecc4d96-f4b9-49a5-92e2-219b3730f978
print(reverse("tgactagcatg"))

# ╔═╡ 3b38501d-c593-447b-8cdd-705f799c776d
print(dsDNA("actgatcgtac"))

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
InteractiveUtils = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
Markdown = "d6f4376e-aef5-505a-96c1-9c027394607a"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "66a1b3efdb45b2e70b2b71265bc901b19503ab27"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
"""

# ╔═╡ Cell order:
# ╠═251dd2cf-fc8f-4dbb-a702-b36e39dd2b15
# ╠═d2abe46a-fc87-4e8c-9c60-34c6a222052d
# ╠═71b40459-9ebb-4a34-b9e0-f538237f31d2
# ╠═fecc4d96-f4b9-49a5-92e2-219b3730f978
# ╠═3b38501d-c593-447b-8cdd-705f799c776d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
