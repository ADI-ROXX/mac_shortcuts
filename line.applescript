set out to (do shell script "/Users/scripts/MouseLocation")
set AppleScript's text item delimiters to ","
set stringParts to text items of out
set AppleScript's text item delimiters to ""
set xPos to item 1 of stringParts
set yPos to item 2 of stringParts
tell application "Finder"
    set selectedItems to selection as list
    set diff to 0 
    repeat with thisItem in selectedItems
        set itemPath to POSIX path of (thisItem as alias)
        set selectedItemName to name of thisItem

        set desktop position of thisItem to {xPos, yPos}
        if (count of characters of selectedItemName)<12 then
            set yPos to yPos+85-diff
        else
            -- display notification with title "text" subtitle selectedItemName
            set yPos to yPos+103-diff
        end if
        
        -- display dialog "Item: " & name of thisItem & " is at location: " & itemPath

        

        -- return z
    end repeat
end tell
