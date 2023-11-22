add_repositories("liteldev-repo https://github.com/LiteLDev/xmake-repo.git")
add_requires("levilamina ^0.1.0")

target("plugin")
    add_files("src/**.cc")
    add_includedirs("include")
    add_packages("levilamina")
    add_rules("mode.debug", "mode.release")
    set_arch("x64")
    set_kind("shared")
    set_languages("cxx20")
    set_plat("windows")
    set_toolchains("msvc")
