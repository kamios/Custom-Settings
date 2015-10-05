;variables.au3

; Déclaration de variables
Global $SettingsIni = @ScriptDir & "\settings.ini"
Global $Logs = ""
Global $Version = "Alpha"
Global $VersionAutoIT = "Version d'AutoIT : " & @AutoItVersion

Global $DossierSettingsIni = @ScriptDir & "\settings\"
Global $AvoidanceDefaut = $DossierSettingsIni & "RosBotAvoidanceSettings_Defaut.ini"
Global $FastModeDefaut = $DossierSettingsIni & "RosBotFastModeSettings_Defaut.ini"
Global $AvoidanceIni = @MyDocumentsDir & "\RoS-BoT\RosBotAvoidanceSettings.ini"
Global $FastModeIni = @MyDocumentsDir & "\RoS-BoT\RosBotFastModeSettings.ini"
Global $NomSettings = ""

;Fast Mode
Global $FastModeTolerance = 0
Global $MinimumDuration = 2500
Global $LifeLimit = 50
Global $ScanRange = 50
Global $DensityLimit = 10
Global $EliteWeight = 10
Global $WardenWeight = 10
Global $GoblinWeight = 10
Global $NormalMonsterWeight = 2

;Avoidance
Global $BigGuysDetectionDistance = 10
Global $BigGuysDetectionLifeLimit = 100
Global $EliteDetectionDistance = 5
Global $EliteDetectionLifeLimit = 100
Global $MonsterDetectionDistance = 0
Global $MonsterDetectionLifeLimit = 100
Global $ArcaneDectectionDistance = 25
Global $ArcaneDetectionLifeLimit = 100
Global $CreepMobArmDectectionDistance = 12
Global $CreepMobArmDetectionLifeLimit = 100
Global $PlagueDectectionDistance = 8
Global $PlagueDetectionLifeLimit = 100
Global $FrozenPulseDetectionDistance = 10
Global $FrozenPulseDetectionLifeLimit = 100
Global $MoltenExplosionDistanceAvoid = 18
Global $MoltenExplosionDetectionLifeLimit = 100
Global $MorluMeteorDistanceAvoid = 20
Global $MorluMeteorDetectionLifeLimit = 100
Global $MortarDistanceAvoid = 10
Global $MortarDetectionLifeLimit = 100
Global $OrbiterDetectionDistance = 6
Global $OrbiterDetectionLifeLimit = 100
Global $ThunderstormDetectionDistance = 15
Global $ThunderstormDetectionLifeLimit = 100
Global $FrozenDetectionDistance = 20
Global $FrozenDetectionLifeLimit = 100
Global $DesecratorDetectionDistance = 6
Global $DesecratorDetectionLifeLimit = 100
Global $MagdhaFireFliesDistance = 10
Global $MagdhaFireFliesDetectionLifeLimit = 100
Global $GhomGasCloudDetectionDistance = 10
Global $GhomGasCloudDetectionLifeLimit = 100
Global $DiabloRingFireDetectionDistance = 10
Global $DiabloRingFireDetectionLifeLimit = 100
Global $DiabloBonePrisonDetectionDistance = 10
Global $DiabloBonePrisonDetectionLifeLimit = 100
Global $DiabloExpandingFireDetectionDistance = 10
Global $DiabloExpandingFireDetectionLifeLimit = 100
Global $ZoltunKulleTwisterDetectionDistance = 10
Global $ZoltunKulleTwisterDetectionLifeLimit = 100
Global $ZoltunKulleBubbleDetectionDistance = 15
Global $ZoltunKulleBubbleDetectionLifeLimit = 100
Global $ZoltunKulleFallingRocksDetectionDistance = 15
Global $ZoltunKulleFallingRocksDetectionLifeLimit = 100
Global $EmberMeteorsDetectionDistance = 20
Global $EmberMeteorsDetectionLifeLimit = 100
Global $RG10YCirclesDetectionDistance = 12
Global $RG10YCirclesDetectionLifeLimit = 100
Global $RG20YCirclesDetectionDistance = 22
Global $RG20YCirclesDetectionLifeLimit = 100
Global $Algorithm = "StayInFight"
Global $SafeZoneMaxSearchRadius = 50
Global $SafeZoneSearchRadiusDelta = 5
Global $AvoidanceMovetimeout = 500
Global $DeactivateUnderConduit = False
Global $DeactivateUnderShield = True