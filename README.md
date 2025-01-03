## Resumé

### Preview

See https://alexsutila.github.io/Resume/

### Compilation

If you for any reason wish to compile it yourself, there is a [flake](https://wiki.nixos.org/wiki/Flakes) for convenience to create a development shell for gathering dependencies and compiling. I've tried to keep the footprint relatively small. Once in the devshell there is a Makefile which will build the final PDF to `build/resume.pdf`.

See [nix package manager installation page](https://nixos.org/download/). Assuming you have the nix package manager with flakes enabled, this can all be accomplished with the two commands below:

```bash
nix develop # Enter devShell
make # Compile the PDF
```
