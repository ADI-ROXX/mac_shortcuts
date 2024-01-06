tell application "Finder"
    set theFolder to (get selection) as alias
    set folderPath to POSIX path of theFolder
end tell
set the clipboard to folderPath
