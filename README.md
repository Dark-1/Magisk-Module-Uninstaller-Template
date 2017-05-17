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
  
  
GitHub Pages Site : [**Magisk Module Uninstaller Template**](https://dark-1.github.io/Magisk-Module-Uninstaller-Template "GitHub Pages") .  
GitHub Repository : [**Magisk-Module-Uninstaller-Template**](https://github.com/dark-1/Magisk-Module-Uninstaller-Template "GitHub") .  
XDA Developers Thread : [**[Magisk] Magisk Module Uninstaller Template**](https://forum.xda-developers.com/apps/magisk/magisk-module-uninstaller-template-t3597600 "XDA Developers") .  
  

----------

----------

## Notes ##  
  
Kindly Change what is requried in "config.sh", ie "MODID" & "print_modname()".  
The "config.sh" from Here can also be Copied/Replaced over by "config.sh" from your **Magisk Module Installer**.[ No Problem Doing This ]  
  
I have **Copied** the Code from "magisk-module-template" ZIP by **topjohnwu**.  
I have **Edited** some part of the Code to make it work for All General Magisk Module.  
I have **Removed** Un-Necessary part of Code Because It is *Either* Not Used *OR* Not Needed.  
I have **Removed** Un-Necessary Directory(s) & File(s) Because It is *Either* Not Used *OR* Not Needed.  
  
You might require to make changes to "update-binary" if you did some changes to "update-binary" in "Magisk Module Installer" of your Magisk Module.    
  
#### Thing's that are Removed ####  
  
1. From **update-binary** File :  
    1. Funtion : `grep_prop()` , `set_perm()` , `set_perm_recursive()` , `request_size_check()` .  
    2. Variable : `INSTALLER` , `API` , `ABI` , `ABI2` , `ABILONG` , `ARCH` , `IS64BIT` .  
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
  

----------

## Changelog ##  
#### Close to Magisk Module Template v3 ! ####  
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
  
.
