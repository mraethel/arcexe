final: prev: {
  arcan = prev.arcan.overrideAttrs (super: {
    cmakeFlags = [
      (prev.lib.cmakeFeature "CMAKE_BUILD_TYPE" "DebugTrace")
    ] ++ super.cmakeFlags;
  });
}
