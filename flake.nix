{
  outputs = { self } : {
    templates.default = {
      path = ./shell-template;
      description = "A very basic flake template with devShell";
    };
  };
}
