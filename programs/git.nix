{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    extraConfig = {
      advice = {
		skippedCherryPicks = false;
      };

      core = {
        editor = "micro";
      };

      fetch = {
		prune = true;
		pruneTags = true;
      };
      
      init = {
        defaultBranch = "main";
      };

      push = {
		autoSetupRemote = true;
      };
 
      user = {
        name = "Armin Jöllenbeck";
        email = "armin@joellenbeck.net";
      };
    };
  };
}
