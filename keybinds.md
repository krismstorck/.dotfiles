# Keybinds

I am using Hammerspoon to manage my system wide keybinds.

## Global

**Open application**

| Leader		  		 | Combo | Action	      	   				|
|------------------------|-------|----------------------------------|
| `F18` (Caps Lock) [^1] | `a`   | 									|			
|						 | `b`   | Open Safari       				| 
|				  		 | `c`   | Open VS Code      				|
|						 | `d`   | Open Calendar     				|
|				 		 | `e`   | Open GIMP		   				|
|						 | `f`	 |									|
|						 | `g`	 |									|
|						 | `l`   | Open Podcasts     				|
|						 | `n`   | Open Notes	   				  	|
|						 | `m`   | Open Activty Monitor				|
|						 | `o`   | Reload Hammerspoon configuration |
|				  		 | `p`   | Open Photos       			    |
|						 | `r`   | Open Reminders	   				|
|				  		 | `s`   | Open Sublime Text 				|
|				  		 | `t`   | Open iTerm        				|
|						 | `v`   | Open UTM		   				  	|
| 				  		 | `u`   | Open Finder 						|
|						 | `w`   | Open Bitwarden		   			|
|						 | `x`   | Open Network settings		   	|

[^1]: Using `hidutil` to [remap this](https://hidutil-generator.netlify.app)

**Window management**

Using yabai for bsp. 

| Leader	 | Combo | Action	        			  |
|------------|-------|--------------------------------|
| Ctrl + Opt | `m`   | Turn on window management mode |

Windows management mode ('WMM') must be enabled first and can be exited by ESC
Once in WMM the following recipes can be used:


| Leader 			 | Combo | Action
|--------------------|-------|-------------------------------|
| Opt    			 | `j` 	 | Focus south  				 |
| Opt  	 			 | `k` 	 | Focus north  				 |
| Opt  	 			 | `l` 	 | Focus east   				 |
| Opt  				 | `h` 	 | Focus west   				 |
| Ctrl + Shift + Opt | `j` 	 | Swap south   				 |
| Ctrl + Shift + Opt | `k` 	 | Swap north   				 |
| Ctrl + Shift + Opt | `l` 	 | Swap east    				 |
| Ctrl + Shift + Opt | `h` 	 | Swap west    				 |
| Ctrl + Shift + Cmd | `j` 	 | Move south	  				 |
| Ctrl + Shift + Cmd | `k` 	 | Move north	  				 |
| Ctrl + Shift + Cmd | `l` 	 | Move east    				 |
| Ctrl + Shift + Cmd | `h` 	 | Move west    				 |
| Ctrl + Cmd 		 | `j` 	 | Resize south 				 |
| Ctrl + Cmd		 | `k` 	 | Resize north 				 |
| Ctrl + Cmd		 | `l` 	 | Resize east 					 |
| Ctrl + Cmd		 | `h` 	 | Resize west 					 |
| Shift + Opt		 | `.` 	 | Move window to next space	 |
| Shift + Opt		 | `,` 	 | Move window to previous space |
| Shift + Opt 		 | `0` 	 | Balances windows 			 |
| Shift + Opt		 | Space | Rotate windows 90° 			 |
| Ctrl + Shift + Cmd | Space | Toggle float					 |


**Go to URL...**

| Leader				| Combo | Action 									 |
|-----------------------|-------|--------------------------------------------|
| `F18` (Caps Lock) + a | `b`   | https://pin.it/1BNKGEL					 | 	| 						| `d` 	| https://drive.google.com 			 		 |
|						| `g` 	| https://www.github.com/krismstorck 		 |
|						| `k`   | https://www.krismstorck.com 				 |
|						| `p`   | https://www.reddit.com/user/9minutes/m/lp/ |
|						| `t` 	| https://www.trello.com 	 				 |


**Quick folder access**

| Leader		  		| Combo | Action	           		 |
|-----------------------|-------|----------------------------|
| `F18` (Caps Lock) + f | `b` 	| ~/src/personal/blog 		 |
|				  		| `d` 	| ~/Downloads 		   		 |
| 				  		| `l`	| ~/src/learning 			 |
|                 		| `k`	| ~/src/personal/krismstorck |
| 				  		| `m`	| ~/Write/mind-palace		 |
|				  		| `p`	| ~/Documents/Personal 		 |
|	              		| `r` 	| ~/.dotfiles	   			 |
|                		| `s` 	| ~/src				   		 |

**Quick file access**

| Leader		  		|Combo| Action	        				  |
|-----------------------|-----|-----------------------------------|
| `F18` (Caps Lock) + t | `h` | Open Hammerspoon config in Neovim |
|				  		| `t` | Open tmux config in Neovim 		  |
|				  		| `y` | Open yabai config in Neovim		  |
|				  		| `z` | Open zsh config in Neovim		  |
|				  		| `k` | Open keybinds.md in Sublime Text  |


