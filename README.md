
# simple-devshell-flake

This is a very small template for begginers using nix flakes.

Nix flakes was confusing to me at first, because all I wanted was a simple 
way to provide a `nix.shell` equivalent flake, which was not something 
the default `nix flake init` provided.

To use it, you can do `nix flake init -t github:cosineblast/simple-devshell-flake`.

If you end up using it often, I recommend adding some alias to it in your shell config.


If you'd like the flake to define the devshell in `shell.nix` (allowing one to use `nix-shell` as well),
I recommend replacing the `pkgs.mkShell` call with `import ./shell.nix { inherit pkgs; }`, and defining your
`shell.nix` as usual.
