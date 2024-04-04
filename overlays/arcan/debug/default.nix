final: prev: {
  arcan = prev.arcan.overrideAttrs (super: {
    patches = [ ./ctx.patch ];

    cmakeFlags = [
      (prev.lib.cmakeFeature "CMAKE_BUILD_TYPE" "Debug")
      (prev.lib.cmakeFeature "LUA_TRACE_METHOD" "stderr")
    ] ++ super.cmakeFlags;
  });
}
