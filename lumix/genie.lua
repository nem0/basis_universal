solution "basis_lumix"
	location(_ACTION)
	targetdir(_ACTION .. "/bin/")
	configurations { "Release" }
	platforms { "x64" }
	project "basisu"

		language "C++"
		kind "StaticLib"
		flags { "Symbols", "Optimize", "ReleaseRuntime" }
		defines { "BASISU_SUPPORT_SSE=1" }
		files {
			"../transcoder/**.h",
			"../transcoder/**.cpp",
			"../encoder/**.h",
			"../encoder/**.c",
			"../encoder/**.cpp"
		}
