;*****************************************
;Custom_Settings.au3 by sebo
;Créé avec ISN AutoIt Studio v. 0.99 BETA
;*****************************************
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Include <GuiButton.au3>
#include <GuiListView.au3>
#include <GuiListBox.au3>
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
	iniwrite($SettingsIni, "BotParameters","Settings","Defaut")
	IniWriteSection($SettingsIni, "Settings", "1=Defaut")
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

; On lit settings.ini pour recupérer toute les clés de la section settings
Local $READ = IniReadSection($SettingsIni, "Settings")
For $x = 1 To $READ[0][0]
   GUICtrlSetData($LstSettings, $READ[$x][1])
Next

; On remplit les deux listView
Local $Settings = IniRead($SettingsIni, "BotParameters", "Settings", "none")
LectureFastModeIni($DossierSettingsIni & "FastMode_" & $Settings & ".ini")
RemplirFastModeIni()
LectureAvoidanceIni($DossierSettingsIni & "Avoidance_" & $Settings & ".ini")
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
			
		Case $LstSettings
			; On vide les deux ListView
			_GUICtrlListView_DeleteAllItems($LstViewFastMode)
			_GUICtrlListView_DeleteAllItems($LstViewAvoidance)
			AjoutLog("On vide les deux ListView")
			; On récupère le text sélectionné de la ListBox
			Local $SelecSettings = GUICtrlRead($LstSettings, $GUI_READ_EXTENDED)
			AjoutLog("Settings : " & $SelecSettings & " sélectionné !")
			; On rempli en fonction de la lecture de la ListBox
			LectureFastModeIni($DossierSettingsIni & "FastMode_" & $SelecSettings & ".ini")
			RemplirFastModeIni()
			LectureAvoidanceIni($DossierSettingsIni & "Avoidance_" & $SelecSettings & ".ini")
			RemplireAvoidanceIni()

	EndSwitch
WEnd