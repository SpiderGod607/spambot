set shell = createobject ("wscript.shell")

strtext = inputbox ("Write down your message you like to spam")
strtimes = inputbox ("How many times do you like to spam?")
strspeed = inputbox ("How fast do you like to spam? (1000 = one per sec, 100 = 10 per sec etc)")
strtimeneed = inputbox ("How many SECONDS do you need to get to your victems input box?")
If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "You entered something else then a number on Times, Speed and/or Time need. shutting down"
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your input area where you are going to spam."
wscript.sleep strtimeneed2
shell.sendkeys ("Hello world" & "{enter}")
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
shell.sendkeys ("thats it for now" & "{enter}")
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Want to spam again with the same info?",36)
If returnvalue=6 Then
Msgbox "Ok Spambot will activate again"
End If
If returnvalue=7 Then
msgbox "Spambox is shutting down"
wscript.quit
End IF
loop
