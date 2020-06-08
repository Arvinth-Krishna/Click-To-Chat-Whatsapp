:cu
cls
@echo off
echo.
echo ****************************************
echo                 WhatSend
echo ****************************************

echo This is an app used to send Whatapp message to Non-Contacts.
echo.
echo.




SET contactname1=
SET contactname2=
SET contactname3=
SET contactname4=
SET contactname5=
SET contactname6=
SET contactname7=
SET contactname8=

SET num1=
SET num2=
SET num3=
SET num4=
SET num5=
SET num6=
SET num7=
SET num8=

SET url=whatsapp://send?phone=91



echo.

echo Enter 1 to  Open Phonebook
echo Enter 2 to  Open Whatsapp
echo Enter 3 to  Enter Non-contact Number
echo.

echo Choose from above Number:
set /p down=
echo.
if %down%== p goto fuck1
if %down%== ' goto fuck1
if %down%== 1 goto fuck1
if %down%== 2 goto fuck2
if %down%== 3 goto fuck3
if %down%== 4 goto fuck4  

# [: PHONEBOOK CODE :]


:fuck1
cls
echo.
echo.
echo		  ***THE PHONEBOOK***

echo ------------------------------
echo	 1) %contactname1% 
echo ------------------------------
echo	 2) %contactname2% 
echo ------------------------------
echo	 3) %contactname3% 
echo ------------------------------
echo	 4) %contactname4% 
echo ------------------------------
echo	 5) %contactname5% 
echo ------------------------------
echo	 6) %contactname6% 
echo ------------------------------
echo	 7) %contactname7% 
echo ------------------------------
echo	 8) %contactname8% 
echo ------------------------------
echo	 9) To Go Back
echo ------------------------------
echo.

echo Choose from above Number:
set /p contact=



if %contact%== 1 goto c1
if %contact%== 2 goto c2
if %contact%== 3 goto c3
if %contact%== 4 goto c4  
if %contact%== 5 goto c5
if %contact%== 7 goto c7
if %contact%== 7 goto c8
if %contact%== 9 goto cu



:c1
SET "ws=%url%%num1%"
start %ws%
exit

:c2
SET "ws=%url%%num2%"
start %ws%
exit

:c3
SET "ws=%url%%num3%"
start %ws%
exit

:c4
SET "ws=%url%%num4%"
start %ws%
exit

:c5
SET "ws=%url%%num5%"
start %ws%
exit

:c6
SET "ws=%url%%num6%"
start %ws%
exit

:c7
SET "ws=%url%%num7%"
start %ws%
exit

:c8
SET "ws=%url%%num8%"
start %ws%
exit



# [: Open Whatsapp:]

:fuck2
set name="Arvinth Krishna G"
start \Users\%name%\AppData\Local\WhatsApp\WhatsApp.exe
exit

# [: Unsaved Contacts:]

:fuck3
echo.
echo.
cls
echo *************************************************
echo.
echo  1) TO GO Back
echo.
echo Enter the Mobile Number (Without Country Code): 
SET /p mobileNumber= 
if %mobileNumber%== 1 goto cu
SET c=%url%
SET "ws=%url%%mobileNumber%"
start %ws%
exit







