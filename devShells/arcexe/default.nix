{ 
  mkShell,
  arcan-all-wrapped
}: mkShell {
  name = "arcan exercises";
  packages = [ arcan-all-wrapped ];
  shellHook = ''
  {
    xdg-open https://github.com/letoram/arcan/wiki/Exercises &
    xdg-open https://github.com/letoram/arcan/wiki/API &
    xdg-open https://github.com/letoram/arcan/tree/master/doc &
  } &>/dev/null
  '';
}
