tell application "iTerm"
	tell current window
		set newTab to (create tab with default profile)
		
		tell newTab
			tell current session
				write text "source activate thermo && jupyter notebook"
			end tell
		end tell
	end tell
end tell