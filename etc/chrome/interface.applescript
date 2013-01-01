
on run argv
   tell application "Google Chrome"
		tell window 1
			if ("search" = item 1 of argv) then
				 open location "http://google.com/search?q=" & item 2 of argv
			else if ("next-tab" = item 1 of argv) then
				 	set active tab index to active tab index + 1
			else if ("prev-tab" = item 1 of argv) then
				 	set active tab index to active tab index -1
			else
		   		tell active tab
		 			 if ("next" = item 1 of argv) then
		 			 	execute javascript "var x = document.documentElement.scrollLeft || document.body.scrollLeft; var y = document.documentElement.scrollTop || document.body.scrollTop; y += 30; window.scroll(x, y);"
		 			else if ("previous" = item 1 of argv) then
		 				execute javascript "var x = document.documentElement.scrollLeft || document.body.scrollLeft; var y = document.documentElement.scrollTop || document.body.scrollTop; y -= 30; window.scroll(x, y);"
		 			else if ("reload" = item 1 of argv) then
		 				execute javascript "location.reload();"
		 			else if ("go-forward" = item 1 of argv) then
		 				 go forward
		 			else if ("go-back" = item 1 of argv) then
		 				 go back
		 			end if
		 		end tell
			end if
		end tell
	end tell
end run
