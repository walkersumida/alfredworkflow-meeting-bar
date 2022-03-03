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
		click menu item "Quick Actions" of menu 1
		click menu item 2 of menu 1 of menu item "Quick Actions" of menu 1
	end tell
end tell
