#
# Makefile for i9100
#

# The original zip file, MUST be specified by each product
local-zip-file     := XXKPQ.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_YPG1.zip

# All apps from zip and has smali files chanded(need to be builded by apktool)
local-modified-apps := MediaProvider Phone Settings Browser SystemUI

# All apks from MIUI execept MIUISystemUI and framework-res.apk
local-miui-apps     := Contacts ContactsProvider ThemeManager \
	DownloadProvider Notes Music Updater SideKick

local-miui-modified-apps := Launcher2 DownloadProviderUi

# All apps need to be removed from original ZIP file
local-remove-apps   := Email Memo MiniDiary Protips PhoneErrService SamsungWidget_ProgramMonitor \
	SnsProvider TwLauncher45 VoiceSearch MusicPlayer SoundPlayer Divx wipereceiver \
	ApplicationsProvider BadgeProvider BluetoothPbap InputEventApp MmsProvisioning Personalization \
	Phone_Util PopupuiReceiver Preconfig serviceModeApp SimDetachNotifier wssyncmlnps

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp misc/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
	@echo Add google apks
	cp misc/apk/* $(ZIP_DIR)/system/app/
	@echo Replace build.prop
	cp misc/build.prop $(ZIP_DIR)/system/build.prop
	@echo Add miui bootanimation
	cp misc/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip
	rm $(ZIP_DIR)/system/media/bootsamsung.qmg
	rm $(ZIP_DIR)/system/media/bootsamsungloop.qmg

local-test:
	echo "an example action"
