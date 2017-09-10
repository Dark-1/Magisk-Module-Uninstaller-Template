# Magisk Module Uninstaller Template #  

----------

### Magisk ###  
by **topjohnwu**  

----------

This is a **Magisk Module Uninstaller Template** *ZIP* for Developers.  
A.K.A. "**M2UT**" in Short.  
  
By **Dark**❶  
Profile @ XDA-Developers : [**Dark**❶](http://forum.xda-developers.com/member.php?u=7292542 "XDA Profile") .  
Profile @ GitHub : [**Dark**❶](https://github.com/dark-1 "GitHub Profile") .   
WebSite @ GitHub Pages : [**Dark**❶ WebSite](https://dark-1.github.io "GitHub WebSite") .   
  
**Magisk Module Uninstaller Template** :-  
GitHub Pages Site : [**Magisk Module Uninstaller Template**](https://dark-1.github.io/Magisk-Module-Uninstaller-Template "GitHub Pages") .  
GitHub Repository : [**Magisk-Module-Uninstaller-Template**](https://github.com/dark-1/Magisk-Module-Uninstaller-Template "GitHub") .  
XDA Developers Thread : [**[Magisk] Magisk Module Uninstaller Template**](https://forum.xda-developers.com/apps/magisk/magisk-module-uninstaller-template-t3597600 "XDA Developers") .  
  

----------

----------

## Notes ##  
  
Kindly Change what is required in "config.sh" file , ThatIs "MODID" & "print_modname()".  
Also If Needed add Script in Function "script_before_uninstall()" & "script_after_uninstall()" in "config.sh" file .  
  
And Also Edit this README file as per the Needs , But somewhere in a corner Kindly Credit me for my Work , It's Highly Appreciated .  
  
I have **Copied** the Code from "magisk-module-template" ZIP by **topjohnwu**.  
I have **Edited** some part of the Code to make it work for All General Magisk Module.  
I have **Removed** Un-Necessary part of Code Because It is *Either* Not Used *OR* Not Needed.  
I have **Removed** Un-Necessary Directory(s) & File(s) Because It is *Either* Not Used *OR* Not Needed.  
  
You might require to make changes to "update-binary" if you did some changes to "update-binary" in "Magisk Module Installer" of your Magisk Module.    
  
#### Thing's that are Removed ####  
  
1. From **update-binary** File :  
    1. Funtion : Un-Necessary Function's .  
    2. Variable : Un-Necessary Variable's .  
2. From **config.sh** File :  
    1. Funtion : `set_permissions()` .  
    2. Variable : `AUTOMOUNT` , `PROPFILE` , `POSTFSDATA` , `LATESTARTSERVICE` , `REPLACE` .  
3. Directory(s) & File(s) :  
    1. File `module.prop` .  
    2. Directory `system` & All it's Content : File `placeholder` .  
    3. Directory `common` & All it's Content : File `file_contexts_image` , `post-fs-data.sh` , `service.sh` , `system.prop` .  
  
  
###### EnJoY ...  :smiley: ######  
  
#### Credit's ####
  
Thanks **topjohnwu** for Magisk & for the code in "magisk-module-template" , could not have done without it.  
  
Kindly Give me some Credits for my Work , It's Highly Appreciated .  
And Also just Informing or mentioning me wherever it is used , will give me some satisfaction .  
Thanking You for the Same.  
  

----------

## Changelog ##  
    
#### v0.0 ####  
- Initialized.  

#### v1.0 ####  
- Initial Release.  
- Copied the Code.  
- Edited some part of the Code.  
- Removed Un-Necessary part of Code.  
- Removed Un-Necessary Directory(s) & File(s).  
   
#### v1.1 ####  
- Updated `README` .  
- Updated `config.sh` .  
- Updated `update-binary` .  
- Added `.gitattributes` .  
- Fixed `curSizeM` & `curFreeM` .  
   
#### v1.2 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Added Function `image_resize_shrink()` & `image_check()` .  
- Changed Most Function Variable's to Local Variable's .  
- Modified Check for `IMG` in `/data` OR `/cache` .  
- And Then , Called `image_check()` to Verify .  
   
#### v1.3 ####  
- Updated to Magisk Module Template v4 ! .  
- UnReleased Version .  
   
#### v1.4 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Removed all Un-Necessary Function's .  
- Removed all Un-Necessary Variable's .  
- ReNamed `INSTALLER` to `UNINSTALLER` .   
- Added Function `script_before_uninstall()` & `script_after_uninstall()` .  
- Close to Magisk Module Template v4 ! .  
   
#### v1.5 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Updated `config.sh` .  
- Added Some CODE .  
- Removed all Un-Necessary Function's .  
- Removed all Un-Necessary Variable's .  
- ReNamed Variable `INSTALLER` to `UNINSTALLER` .   
- Close to Magisk Module Template v1400 ! .  
   
#### v1.6 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Removed All `Dummy` Function & Variable coz of below Bug & Thanks to `TheComputerGuy96` .  
- Fixed a Major Bug where Script was Executing in TWRP 3.0.2-0 but didn't in TWRP 3.1.1-0 .  
- Now the *ZIP* will Flash/Execute as Intended , Sorry that I realized it too late .  
   
#### v1.7 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Fixed a Minor Bug .  
   
#### v1.8 ####  
- Updated `README` .  
- Updated `update-binary` .  
- Fixed a Critical Bug Fix .  
- Added code to Display if Module is Not Installed .  
  
.
