;utils.au3

;Lecture des fichiers RosBotAvoidanceSettings.ini et RosBotFastModeSettings.ini
Func LectureFastModeIni($CheminFichier)
	$FastModeTolerance = IniRead($CheminFichier, "BotParameters", "Fast mode tolerance", "none")
	$MinimumDuration = IniRead($CheminFichier, "BotParameters", "Minimum duration", "none")
	$LifeLimit = IniRead($CheminFichier, "BotParameters", "Life limit", "none")
	$ScanRange = IniRead($CheminFichier, "BotParameters", "Scan range", "none")
	$DensityLimit = IniRead($CheminFichier, "BotParameters", "Density limit", "none")
	$EliteWeight = IniRead($CheminFichier, "BotParameters", "Elite weight", "none")
	$WardenWeight = IniRead($CheminFichier, "BotParameters", "Warden weight", "none")
	$GoblinWeight = IniRead($CheminFichier, "BotParameters", "Goblin weight", "none")
	$NormalMonsterWeight = IniRead($CheminFichier, "BotParameters", "Normal monster weight", "none")
	AjoutLog("Lecture fichier : " & $CheminFichier)
EndFunc;==>LectureIni

Func RemplirFastModeIni()
	GUICtrlCreateListViewItem("----------------------------------------------------------",$LstViewFastMode)
	GUICtrlCreateListViewItem("Fast mode tolerance" & "|" & $FastModeTolerance,$LstViewFastMode)
	GUICtrlCreateListViewItem("Minimum duration" & "|" & $MinimumDuration,$LstViewFastMode)
	GUICtrlCreateListViewItem("Life limit" & "|" & $LifeLimit,$LstViewFastMode)
	GUICtrlCreateListViewItem("Scan range" & "|" & $ScanRange,$LstViewFastMode)
	GUICtrlCreateListViewItem("Density limit" & "|" & $DensityLimit,$LstViewFastMode)
	GUICtrlCreateListViewItem("Elite weight" & "|" & $EliteWeight,$LstViewFastMode)
	GUICtrlCreateListViewItem("Warden weight" & "|" & $WardenWeight,$LstViewFastMode)
	GUICtrlCreateListViewItem("Goblin weight" & "|" & $GoblinWeight,$LstViewFastMode)
	GUICtrlCreateListViewItem("Normal monster weight" & "|" & $NormalMonsterWeight,$LstViewFastMode)
	AjoutLog("LstViewFastMode remplie")
EndFunc;==>RemplirFastModeIni

Func LectureAvoidanceIni($CheminFichier)
	$BigGuysDetectionDistance = IniRead($CheminFichier, "BotParameters", "BigGuysDetectionDistance", "none")
	$BigGuysDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "BigGuysDetectionLifeLimit", "none")
	$EliteDetectionDistance = IniRead($CheminFichier, "BotParameters", "EliteDetectionDistance", "none")
	$EliteDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "EliteDetectionLifeLimit", "none")
	$MonsterDetectionDistance = IniRead($CheminFichier, "BotParameters", "MonsterDetectionDistance", "none")
	$MonsterDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "MonsterDetectionLifeLimit", "none")
	
	$ArcaneDectectionDistance = IniRead($CheminFichier, "BotParameters", "ArcaneDectectionDistance", "none")
	$ArcaneDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "ArcaneDetectionLifeLimit", "none")
	
	$CreepMobArmDectectionDistance = IniRead($CheminFichier, "BotParameters", "CreepMobArmDectectionDistance", "none")
	$CreepMobArmDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "CreepMobArmDetectionLifeLimit", "none")
	$PlagueDectectionDistance = IniRead($CheminFichier, "BotParameters", "PlagueDectectionDistance", "none")
	$PlagueDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "PlagueDetectionLifeLimit", "none")
	
	$FrozenPulseDetectionDistance = IniRead($CheminFichier, "BotParameters", "FrozenPulseDetectionDistance", "none")
	$FrozenPulseDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "FrozenPulseDetectionLifeLimit", "none")
	$FrozenDetectionDistance = IniRead($CheminFichier, "BotParameters", "FrozenDetectionDistance", "none")
	$FrozenDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "FrozenDetectionLifeLimit", "none")
	
	$MoltenExplosionDistanceAvoid = IniRead($CheminFichier, "BotParameters", "MoltenExplosionDistanceAvoid", "none")
	$MoltenExplosionDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "MoltenExplosionDetectionLifeLimit", "none")
	$MorluMeteorDistanceAvoid = IniRead($CheminFichier, "BotParameters", "MorluMeteorDistanceAvoid", "none")
	$MorluMeteorDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "MorluMeteorDetectionLifeLimit", "none")
	$MortarDistanceAvoid = IniRead($CheminFichier, "BotParameters", "MortarDistanceAvoid", "none")
	$MortarDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "MortarDetectionLifeLimit", "none")
	$DesecratorDetectionDistance = IniRead($CheminFichier, "BotParameters", "DesecratorDetectionDistance", "none")
	$DesecratorDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "DesecratorDetectionLifeLimit", "none")
	
	$OrbiterDetectionDistance = IniRead($CheminFichier, "BotParameters", "OrbiterDetectionDistance", "none")
	$OrbiterDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "OrbiterDetectionLifeLimit", "none")
	$ThunderstormDetectionDistance = IniRead($CheminFichier, "BotParameters", "ThunderstormDetectionDistance", "none")
	$ThunderstormDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "ThunderstormDetectionLifeLimit", "none")

	$MagdhaFireFliesDistance = IniRead($CheminFichier, "BotParameters", "MagdhaFireFliesDistance", "none")
	$MagdhaFireFliesDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "MagdhaFireFliesDetectionLifeLimit", "none")
	$GhomGasCloudDetectionDistance = IniRead($CheminFichier, "BotParameters", "GhomGasCloudDetectionDistance", "none")
	$GhomGasCloudDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "GhomGasCloudDetectionLifeLimit", "none")
	$DiabloRingFireDetectionDistance = IniRead($CheminFichier, "BotParameters", "DiabloRingFireDetectionDistance", "none")
	$DiabloRingFireDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "DiabloRingFireDetectionLifeLimit", "none")
	$DiabloBonePrisonDetectionDistance = IniRead($CheminFichier, "BotParameters", "DiabloBonePrisonDetectionDistance", "none")
	$DiabloBonePrisonDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "DiabloBonePrisonDetectionLifeLimit", "none")
	$DiabloExpandingFireDetectionDistance = IniRead($CheminFichier, "BotParameters", "DiabloExpandingFireDetectionDistance", "none")
	$DiabloExpandingFireDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "DiabloExpandingFireDetectionLifeLimit", "none")
	$ZoltunKulleTwisterDetectionDistance = IniRead($CheminFichier, "BotParameters", "ZoltunKulleTwisterDetectionDistance", "none")
	$ZoltunKulleTwisterDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "ZoltunKulleTwisterDetectionLifeLimit", "none")
	$ZoltunKulleBubbleDetectionDistance = IniRead($CheminFichier, "BotParameters", "ZoltunKulleBubbleDetectionDistance", "none")
	$ZoltunKulleBubbleDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "ZoltunKulleBubbleDetectionLifeLimit", "none")
	$ZoltunKulleFallingRocksDetectionDistance = IniRead($CheminFichier, "BotParameters", "ZoltunKulleFallingRocksDetectionDistance", "none")
	$ZoltunKulleFallingRocksDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "ZoltunKulleFallingRocksDetectionLifeLimit", "none")
	$EmberMeteorsDetectionDistance = IniRead($CheminFichier, "BotParameters", "EmberMeteorsDetectionDistance", "none")
	$EmberMeteorsDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "EmberMeteorsDetectionLifeLimit", "none")
	$RG10YCirclesDetectionDistance = IniRead($CheminFichier, "BotParameters", "RG10YCirclesDetectionDistance", "none")
	$RG10YCirclesDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "RG10YCirclesDetectionLifeLimit", "none")
	$RG20YCirclesDetectionDistance = IniRead($CheminFichier, "BotParameters", "RG20YCirclesDetectionDistance", "none")
	$RG20YCirclesDetectionLifeLimit = IniRead($CheminFichier, "BotParameters", "RG20YCirclesDetectionLifeLimit", "none")
	
	$Algorithm = IniRead($CheminFichier, "BotParameters", "Algorithm", "none")
	
	$SafeZoneMaxSearchRadius = IniRead($CheminFichier, "BotParameters", "SafeZoneMaxSearchRadius", "none")
	$SafeZoneSearchRadiusDelta = IniRead($CheminFichier, "BotParameters", "SafeZoneSearchRadiusDelta", "none")
	$AvoidanceMovetimeout = IniRead($CheminFichier, "BotParameters", "AvoidanceMovetimeout", "none")
	
	$DeactivateUnderConduit = IniRead($CheminFichier, "BotParameters", "DeactivateUnderConduit", "none")
	$DeactivateUnderShield = IniRead($CheminFichier, "BotParameters", "DeactivateUnderShield", "none")
	AjoutLog("Lecture fichier : " & $CheminFichier)
EndFunc;==>LectureAvoidanceIni

Func RemplireAvoidanceIni()
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Monsters",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("BigGuysDetectionDistance" & "|" & $BigGuysDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("BigGuysDetectionLifeLimit" & "|" & $BigGuysDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("EliteDetectionDistance" & "|" & $EliteDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("EliteDetectionLifeLimit" & "|" & $BigGuysDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MonsterDetectionDistance" & "|" & $MonsterDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MonsterDetectionLifeLimit" & "|" & $MonsterDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Arcane",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("ArcaneDectectionDistance" & "|" & $ArcaneDectectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ArcaneDetectionLifeLimit" & "|" & $ArcaneDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Poison",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("CreepMobArmDectectionDistance" & "|" & $CreepMobArmDectectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("CreepMobArmDetectionLifeLimit" & "|" & $CreepMobArmDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("PlagueDectectionDistance" & "|" & $PlagueDectectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("PlagueDetectionLifeLimit" & "|" & $PlagueDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Cold",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("FrozenPulseDetectionDistance" & "|" & $FrozenPulseDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("FrozenPulseDetectionLifeLimit" & "|" & $FrozenPulseDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("FrozenDetectionDistance" & "|" & $FrozenDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("FrozenDetectionLifeLimit" & "|" & $FrozenDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Fire",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("MoltenExplosionDistanceAvoid" & "|" & $MoltenExplosionDistanceAvoid,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MoltenExplosionDetectionLifeLimit" & "|" & $MoltenExplosionDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MorluMeteorDistanceAvoid" & "|" & $MorluMeteorDistanceAvoid,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MorluMeteorDetectionLifeLimit" & "|" & $MorluMeteorDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MortarDistanceAvoid" & "|" & $MortarDistanceAvoid,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MortarDetectionLifeLimit" & "|" & $MortarDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DesecratorDetectionDistance" & "|" & $DesecratorDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DesecratorDetectionLifeLimit" & "|" & $DesecratorDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Lighting",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("OrbiterDetectionDistance" & "|" & $OrbiterDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("OrbiterDetectionLifeLimit" & "|" & $OrbiterDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ThunderstormDetectionDistance" & "|" & $ThunderstormDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ThunderstormDetectionLifeLimit" & "|" & $ThunderstormDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Ubers",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("MagdhaFireFliesDistance" & "|" & $MagdhaFireFliesDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("MagdhaFireFliesDetectionLifeLimit" & "|" & $MagdhaFireFliesDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("GhomGasCloudDetectionDistance" & "|" & $GhomGasCloudDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("GhomGasCloudDetectionLifeLimit" & "|" & $GhomGasCloudDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloRingFireDetectionDistance" & "|" & $DiabloRingFireDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloRingFireDetectionLifeLimit" & "|" & $DiabloRingFireDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloBonePrisonDetectionDistance" & "|" & $DiabloBonePrisonDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloBonePrisonDetectionLifeLimit" & "|" & $DiabloBonePrisonDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloExpandingFireDetectionDistance" & "|" & $DiabloExpandingFireDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DiabloExpandingFireDetectionLifeLimit" & "|" & $DiabloExpandingFireDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleTwisterDetectionDistance" & "|" & $ZoltunKulleTwisterDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleTwisterDetectionLifeLimit" & "|" & $ZoltunKulleTwisterDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleBubbleDetectionDistance" & "|" & $ZoltunKulleBubbleDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleBubbleDetectionLifeLimit" & "|" & $ZoltunKulleBubbleDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleFallingRocksDetectionDistance" & "|" & $ZoltunKulleFallingRocksDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("ZoltunKulleFallingRocksDetectionLifeLimit" & "|" & $ZoltunKulleFallingRocksDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("EmberMeteorsDetectionDistance" & "|" & $EmberMeteorsDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("EmberMeteorsDetectionLifeLimit" & "|" & $EmberMeteorsDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("RG10YCirclesDetectionDistance" & "|" & $RG10YCirclesDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("RG10YCirclesDetectionLifeLimit" & "|" & $RG10YCirclesDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("RG20YCirclesDetectionDistance" & "|" & $RG20YCirclesDetectionDistance,$LstViewAvoidance)
	GUICtrlCreateListViewItem("RG20YCirclesDetectionLifeLimit" & "|" & $RG20YCirclesDetectionLifeLimit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Algorithm",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("Algorithm" & "|" & $Algorithm,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Advanced",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("SafeZoneMaxSearchRadius" & "|" & $SafeZoneMaxSearchRadius,$LstViewAvoidance)
	GUICtrlCreateListViewItem("SafeZoneSearchRadiusDelta" & "|" & $SafeZoneSearchRadiusDelta,$LstViewAvoidance)
	GUICtrlCreateListViewItem("AvoidanceMovetimeout" & "|" & $AvoidanceMovetimeout,$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("---Pylons",$LstViewAvoidance)
	GUICtrlCreateListViewItem("--------------------------------------------------",$LstViewAvoidance)
	GUICtrlCreateListViewItem("DeactivateUnderConduit" & "|" & $DeactivateUnderConduit,$LstViewAvoidance)
	GUICtrlCreateListViewItem("DeactivateUnderShield" & "|" & $DeactivateUnderShield,$LstViewAvoidance)
	AjoutLog("LstViewFastMode remplie")
EndFunc;==>RemplireAvoidanceIni

; Ajout de log
Func AjoutLog($InfoLog)
	$Logs = "[" & @HOUR & ":" & @MIN & ":" & @SEC & "]" & " - " & $InfoLog & @CRLF & $Logs
EndFunc;==>AjoutLog

; Exportation du fichier log
Func CreerFichierLogs ()
	$File = "Logs_" & @MDAY & "-" & @MON & "-" & @YEAR & "_" & @HOUR & "-" & @MIN & "-" & @SEC & ".txt"
	AjoutLog("Fichier Log créé : " & $File)
	$hFile = FileOpen($File, 2)
	FileWrite($hFile, $logs)
	FileClose($hFile)
	ShellExecuteWait($File) ; Affiche le fichier.
EndFunc;==>CreerFichierLogs

; #FUNCTION# ====================================================================================================================
; Name ..........: _GetOSLanguage
; Description ...: Retrieves the language of the OS, this supports 19 of the most popular languages.
; Syntax ........: _GetOSLanguage()
; Parameters ....: None
; Return values .: None
; Author ........: guinness
; Link ..........: http://www.autoitscript.com/forum/topic/131832-getoslanguage-retrieve-the-language-of-the-os/
; Example .......: No
; ===============================================================================================================================
Func _GetOSLanguage()
    Local $aString[20] = [19, "0409 0809 0c09 1009 1409 1809 1c09 2009 2409 2809 2c09 3009 3409", "0404 0804 0c04 1004 0406", "0406", "0413 0813", "0425", _
            "040b", "040c 080c 0c0c 100c 140c 180c", "0407 0807 0c07 1007 1407", "040e", "0410 0810", _
            "0411", "0414 0814", "0415", "0416 0816", "0418", _
            "0419", "081a 0c1a", "040a 080a 0c0a 100a 140a 180a 1c0a 200a 240a 280a 2c0a 300a 340a 380a 3c0a 400a 440a 480a 4c0a 500a", "041d 081d"]

    Local $aLanguage[20] = [19, "English", "Chinese", "Danish", "Dutch", "Estonian", "Finnish", "French", "German", "Hungarian", "Italian", _
            "Japanese", "Norwegian", "Polish", "Portuguese", "Romanian", "Russian", "Serbian", "Spanish", "Swedish"]
    For $i = 1 To $aString[0]
        If StringInStr($aString[$i], @OSLang) Then
            Return $aLanguage[$i]
        EndIf
    Next
    Return $aLanguage[1]
EndFunc   ;==>_GetOSLanguage