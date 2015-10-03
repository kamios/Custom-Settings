;*****************************************
;Custom_Settings.au3 by sebo
;Créé avec ISN AutoIt Studio v. 0.99 BETA
;*****************************************
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Include <GuiButton.au3>
#include <GuiListView.au3>
#include <GuiTab.au3>
#include <ListBoxConstants.au3>
#include <EditConstants.au3>
#include <File.au3>
#include <Misc.au3>
#include "lib\utils.au3"
#include "lib\variables.au3"
#include "lib\interface.au3"

AjoutLog("---------------------------------------------------------------")
AjoutLog("		Démarrage de Custom Settings (version " & $Version & ")")
AjoutLog("---------------------------------------------------------------")
AjoutLog($VersionAutoIT)
AjoutLog("Langue OS : " & _GetOSLanguage())

; On test si le fichier de config existe
If FileExists($SettingsIni) = 0 Then
	_FileCreate($SettingsIni) ; Sinon on le créé
	; On met les valeurs par défaut pour la création du fichier
	iniwrite($SettingsIni, "BotParameters","AvoidanceSettings","Defaut")
	iniwrite($SettingsIni, "BotParameters","FastModeSettings","Defaut")
	AjoutLog("Fichier settings crée !")
Else
	AjoutLog("Fichier settings : OK")
EndIf

; Test sur les fichiers RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini
If FileExists($FastModeIni) = 1 and FileExists($AvoidanceIni) = 1 Then
	AjoutLog("Fichiers RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini : OK")
Else
	AjoutLog("Fichiers RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini : Absent")
	MsgBox(48, "Erreur", "Il semblerait que les fichiers RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini ne soit pas présent dans le dossier RoS-BoT !", 5)
	Exit
EndIf



; On remplit les deux listView
Local $AvoidanceSettings = IniRead($SettingsIni, "BotParameters", "AvoidanceSettings", "none")
Local $FastModeSettings = IniRead($SettingsIni, "BotParameters", "FastModeSettings", "none")
LectureFastModeIni($DossierSettingsIni & "FastMode_" & $FastModeSettings & ".ini")
RemplirFastModeIni()
LectureAvoidanceIni($DossierSettingsIni & "Avoidance_" & $AvoidanceSettings & ".ini")
RemplireAvoidanceIni()

; Affichage GUI
GUISetState(@SW_SHOW, $Main)

While 1
$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $BtnLog
			CreerFichierLogs ()
		Case $BtnLoad
			
		Case $BrnSave
			
	EndSwitch
WEnd