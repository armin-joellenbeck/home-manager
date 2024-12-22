{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    extraConfig = {
      advice = {
	skippedCherryPicks = false;
      };

      core = {
        editor = "vi";
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
        name = "Armin Jöllenbck";
        email = "armin@joellenbeck.net";
      };
    };
  };
}
