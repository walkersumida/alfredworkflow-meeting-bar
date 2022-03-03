ignoring application responses
	tell application "System Events"
		delay 0.3
		tell process "MeetingBar"
			click menu bar item 1 of menu bar 2
		end tell
	end tell
end ignoring

delay 0.1
do shell script "killall System\\ Events"
delay 0.1

tell application "System Events" to tell process "MeetingBar"
	tell menu bar item 1 of menu bar 2
		click menu item "Join next event meeting" of menu 1
	end tell
end tell
