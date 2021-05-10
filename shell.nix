{
	pkgs ? import <nixpkgs> {},
	pkgsUnstable ? import <nixpkgs-unstable> {}
}:

pkgs.mkShell rec {
  buildInputs = with pkgs; [

    # Runtime
		at_spi2_atk.out
		at_spi2_core.out
		libGL_driver.out
		libdrm.out
		libuuid.out
		libxkbcommon.out
		mesa
    glib.out
		gtk3.out
    alsaLib.out
    atk.out
    cairo.out
    pango.out
    cups.lib
    dbus_daemon.lib
    expat.out
    gdk_pixbuf.out
    nspr.out
    nss.out
    xlibs.libX11.out
    xlibs.libxcb.out
    xlibs.libXcomposite.out
    xlibs.libXcursor.out
    xlibs.libXdamage.out
    xlibs.libXext.out
    xlibs.libXfixes.out
    xlibs.libXi.out
    xlibs.libXrandr.out
    xlibs.libXrender.out
    xlibs.libXScrnSaver.out
    xlibs.libXtst.out

		pkgsUnstable.electron_11

    # keep this line if you use bash
    bashInteractive
  ];

  shellHooks = ''
    export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath buildInputs}:$(realpath ./dist/Trello-linux-x64)
  '';
}
