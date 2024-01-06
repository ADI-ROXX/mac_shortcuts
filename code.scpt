tell application "Finder"
	set selectedItems to selection
	

	if (count of selectedItems) > 0 then

		set foldersList to {}
		set out to ""
		repeat with selectedItem in selectedItems
		
			set folderPath to POSIX path of (selectedItem as text)

			set end of foldersList to folderPath
			set out to out & " " & quoted form of folderPath
		end repeat 
		do shell script "code " & out
		
		
	else
		tell application "Finder"
			set finderWindows to every window
			set numberOfWindows to count of finderWindows

		end tell
		if numberOfWindows > 0 then
			tell application "Finder"
				set currentFolder to target of window 1 as alias
				set folderPath to POSIX path of currentFolder
				
			end tell
			
			set command to "code " & quoted form of folderPath
			do shell script command
		end if
	end if
end tell
