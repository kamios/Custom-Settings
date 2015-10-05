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

LectureSettingsIni()

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
			Local $SelecSettings = ""
			; On récupère le text sélectionné de la ListBox
			$SelecSettings = GUICtrlRead($LstSettings, $GUI_READ_EXTENDED)
			
			If $SelecSettings = "" Then
				GUICtrlSetState($ImgTemoin1, $GUI_HIDE)
				GUICtrlSetState($ImgTemoin2, $GUI_SHOW)
				MsgBox(16, "Erreur", "Ancuns Settings de sélectionnés !", 3)
				AjoutLog("Pas de chargement : Ancuns Settings de sélectionnés !")
			Else
				; On charge nos fichiers *.ini dans le dossier RoS-BoT
				FileCopy($DossierSettingsIni & "FastMode_" & $SelecSettings & ".ini", $FastModeIni, $FC_OVERWRITE + $FC_CREATEPATH)
				FileCopy($DossierSettingsIni & "Avoidance_" & $SelecSettings & ".ini", $AvoidanceIni, $FC_OVERWRITE + $FC_CREATEPATH)
				GUICtrlSetState($ImgTemoin1, $GUI_SHOW)
				GUICtrlSetState($ImgTemoin2, $GUI_HIDE)
				AjoutLog("Chargement du settings : " & $SelecSettings & " !")
			EndIf
		Case $BrnSave
			; On vide la variable
			$NomSettings = ""
			; On sauvegarde RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini du dossier RoS-BoT
			Save()
			FileCopy($FastModeIni, $DossierSettingsIni & "FastMode_" & $NomSettings & ".ini")
			FileCopy($AvoidanceIni, $DossierSettingsIni & "Avoidance_" & $NomSettings & ".ini")
			AjoutLog("Sauvegarde RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini du dossier RoS-BoT !")
			GUICtrlSetState($ImgTemoin1, $GUI_SHOW)
			GUICtrlSetState($ImgTemoin2, $GUI_HIDE)
			; On ajoute ce settings au fichier settings.ini
			Dim $Var = IniReadSection($SettingsIni, "Settings")
			$NbSections = $Var[0][0]
			$NbSections += 1
			iniwrite($SettingsIni, "Settings", $NbSections, $NomSettings)
			LectureSettingsIni()
		Case $BtnDeleted
			; On supprime le settings et les fichiers correspondant
			
			
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