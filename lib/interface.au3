;interface.au3

; Interface principal
Global $Main = GUICreate("Custom Settings",684,375,-1,-1,-1,-1)
Global $tab = GUICtrlCreatetab(218,10,389,358,-1,-1)
GuiCtrlSetState(-1,2048)
GUICtrlCreateTabItem("Fast Mode")
GUICtrlCreateTabItem("Avoidance")
GUICtrlCreateTabItem("")
_GUICtrlTab_SetCurFocus($tab,-1)
GUISwitch($Main,_GUICtrlTab_SetCurFocus($tab,1)&GUICtrlRead ($tab, 1))
Global $LstViewAvoidance = GUICtrlCreatelistview("",228,40,362,318,-1,$WS_EX_CLIENTEDGE)
_GUICtrlListView_InsertColumn($LstViewAvoidance, 0, "Paramètre", 260)
_GUICtrlListView_InsertColumn($LstViewAvoidance, 1, "Valeur", 78)
GUICtrlCreateTabItem("")
Global $BtnLog = GUICtrlCreateButton("Log",616,328,57,30,-1,-1)
Global $BtnLoad = GUICtrlCreateButton("Load",616,40,57,30,-1,-1)
Global $BrnSave = GUICtrlCreateButton("Save",616,74,57,30,-1,-1)
Global $BtnDeleted = GUICtrlCreateButton("Delete",616,108,57,30,-1,-1)
Global $ImgTemoin1 = GUICtrlCreatePic(@ScriptDir & "\Images\yes.jpg",617,143,54,50,-1,-1)
GUICtrlSetState($ImgTemoin1, $GUI_HIDE)
Global $ImgTemoin2 = GUICtrlCreatePic(@ScriptDir & "\Images\no.jpg",617,143,54,50,-1,-1)
GUICtrlSetState($ImgTemoin2, $GUI_HIDE)
GUISwitch($Main,_GUICtrlTab_SetCurFocus($tab,0)&GUICtrlRead ($tab, 1))
Global $LstViewFastMode = GUICtrlCreatelistview("",228,40,362,318,-1,$WS_EX_CLIENTEDGE)
_GUICtrlListView_InsertColumn($LstViewFastMode, 0, "Paramètre", 300)
_GUICtrlListView_InsertColumn($LstViewFastMode, 1, "Valeur", 58)
GUICtrlCreateTabItem("")
Global $LstSettings = GUICtrlCreatelist("",10,9,200,357,-1,$WS_EX_CLIENTEDGE)
_GUICtrlTab_SetCurFocus($tab,0)

; Fenêtre de savegarde de settings
Func Save()
	$Save = GUICreate("Save",170,100,-1,-1,-1,$WS_EX_TOPMOST)
	$TxtNomSettings = GUICtrlCreateInput("",10,31,150,20,-1,$WS_EX_CLIENTEDGE)
	GUICtrlCreateLabel("Nom du settings :",10,10,87,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	$BtnEnregistrer = GUICtrlCreateButton("Enregistrer",10,59,150,30,-1,-1)
	
	; Affichage GUI
	GUISetState(@SW_SHOW, $Save)
	AjoutLog("Ouverture de la fenêtre Save !")
	While 1
		$nMsg = GUIGetMsg()

		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				AjoutLog("Fermeture de la fenêtre Save !")
				GUIDelete($Save)
				ExitLoop
			Case $BtnEnregistrer
				$NomSettings = GUICtrlRead($TxtNomSettings)
				AjoutLog("Fermeture de la fenêtre Save ($NomSettings modifié)!")
				GUIDelete($Save)
				ExitLoop
		EndSwitch
	WEnd
EndFunc