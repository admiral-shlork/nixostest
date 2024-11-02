{pkgs, brlaser_nixpkgs, ...}: {

  services.printing = {
    enable = true;
    drivers = [brlaser_nixpkgs.legacyPackages.x86_64-linux.brlaser];
  };

  hardware.printers = {
    ensureDefaultPrinter = "Brother_HL-L2370DN";
    ensurePrinters = [
      {
        name = "Brother_HL-L2370DN";
        description = "Brother HL-L2370DN";
        #deviceUri = "dnssd://Brother%20HL-L2370DN%20series._ipp._tcp.local/?uuid=e3248000-80ce-11db-8000-b42200bfd1de";
        deviceUri = "socket://10.0.0.181";
        model = "drv:///brlaser.drv/brl2370d.ppd";
      }
    ];
  };
}