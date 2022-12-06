; All Structures Tracker macro v1.0 made by Avocat
; Edit the hotkeys at the bottom of the script

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance,  Force

; Window Icon
Menu, Tray, Icon, assets/icon.ico
iconsize := 32
hIcon := LoadPicture("assets/icon.ico", "Compass w" iconsize " h" iconsize, imgtype)
Gui +LastFound
SendMessage 0x0080, 1, hIcon

Gui, +hwndHGUI -MinimizeBox
HMENU := DllCall("GetSystemMenu", "Ptr", HGUI, "UInt", 0, "UPtr")
DllCall("DeleteMenu", "Ptr", HMENU, "UInt", 0xF020, "UInt", 0) ; MINIMIZE
DllCall("DeleteMenu", "Ptr", HMENU, "UInt", 0xF030, "UInt", 0) ; MAXIMIZE

; Window Creation    
Gui, Add, Button, x17 y14 w100 h40 vBastion gBastion, Bastion Remnant
Gui, Add, Button, x17 y64 w100 h40 vBT gBT, Buried Treasure
Gui, Add, Button, x17 y114 w100 h40 vDesertPyramid gDesertPyramid, Desert Pyramid
Gui, Add, Button, x17 y164 w100 h40 vEndCity gEndCity, End City
Gui, Add, Button, x17 y214 w100 h40 vIgloo gIgloo, Igloo
Gui, Add, Button, x17 y264 w100 h40 vJungleTemple gJungleTemple, Jungle Temple
Gui, Add, Button, x17 y314 w100 h40 vMineshaft gMineshaft, Mineshaft
Gui, Add, Button, x17 y364 w100 h40 vNetherFortress gNetherFortress, Nether Fortress
Gui, Add, Button, x17 y414 w100 h40 vNetherFossil gNetherFossil, Nether Fossil
Gui, Add, Button, x132 y14 w100 h40 vOceanMonument gOceanMonument, Ocean Monument
Gui, Add, Button, x132 y64 w100 h40 vOceanRuins gOceanRuins, Ocean Ruins
Gui, Add, Button, x132 y114 w100 h40 vPillagerOutpost gPillagerOutpost, Pillager Outpost
Gui, Add, Button, x132 y164 w100 h40 vRuinedPortal gRuinedPortal, Ruined Portal
Gui, Add, Button, x132 y214 w100 h40 vShipwreck gShipwreck, Shipwreck
Gui, Add, Button, x132 y264 w100 h40 vStronghold gStronghold, Stronghold
Gui, Add, Button, x132 y314 w100 h40 vSwampHut gSwampHut, Swamp Hut
Gui, Add, Button, x132 y364 w100 h40 vVillage gVillage, Village
Gui, Add, Button, x132 y414 w100 h40 vWoodlandMansion gWoodlandMansion, Woodland Mansion
Gui, Add, Button, x17 y469 w215 h40 Disabled vClear gClear, Clear

; Overlay Reset on Startup
Clear()

Clear()
{
    GuiControl, Enable, Bastion
    GuiControl, Enable, BT
    GuiControl, Enable, DesertPyramid
    GuiControl, Enable, EndCity
    GuiControl, Enable, Igloo
    GuiControl, Enable, JungleTemple
    GuiControl, Enable, Mineshaft
    GuiControl, Enable, NetherFortress
    GuiControl, Enable, NetherFossil
    GuiControl, Enable, OceanMonument
    GuiControl, Enable, OceanRuins
    GuiControl, Enable, PillagerOutpost
    GuiControl, Enable, RuinedPortal
    GuiControl, Enable, Shipwreck
    GuiControl, Enable, Stronghold
    GuiControl, Enable, SwampHut
    GuiControl, Enable, Village
    GuiControl, Enable, WoodlandMansion
    GuiControl, Disable, Clear
    cmd := "python.exe """ . A_ScriptDir . "\functions\clear.py"""
    RunWait,%cmd%,,Hide
    ASWin()
}

ASWin()
{
    Gui, Show, Center h529 w253, All Structures Tracker v1.0 by Avocat
    Return

    Bastion:
    GuiControl, Disable, Bastion
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\bastion_remnant.py"""
    RunWait,%cmd%,,Hide
    return

    BT:
    GuiControl, Disable, BT
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\buried_treasure.py"""
    RunWait,%cmd%,,Hide
    Return

    DesertPyramid:
    GuiControl, Disable, DesertPyramid
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\desert_pyramid.py"""
    RunWait,%cmd%,,Hide
    Return

    EndCity:
    GuiControl, Disable, EndCity
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\end_city.py"""
    RunWait,%cmd%,,Hide
    Return

    Igloo:
    GuiControl, Disable, Igloo
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\igloo.py"""
    RunWait,%cmd%,,Hide
    Return

    JungleTemple:
    GuiControl, Disable, JungleTemple
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\jungle_temple.py"""
    RunWait,%cmd%,,Hide
    Return

    Mineshaft:
    GuiControl, Disable, Mineshaft
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\mineshaft.py"""
    RunWait,%cmd%,,Hide
    Return

    NetherFortress:
    GuiControl, Disable, NetherFortress
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\nether_fortress.py"""
    RunWait,%cmd%,,Hide
    Return

    NetherFossil:
    GuiControl, Disable, NetherFossil
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\nether_fossil.py"""
    RunWait,%cmd%,,Hide
    return

    OceanMonument:
    GuiControl, Disable, OceanMonument
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\ocean_monument.py"""
    RunWait,%cmd%,,Hide
    return

    OceanRuins:
    GuiControl, Disable, OceanRuins
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\ocean_ruins.py"""
    RunWait,%cmd%,,Hide
    return

    PillagerOutpost:
    GuiControl, Disable, PillagerOutpost
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\pillager_outpost.py"""
    RunWait,%cmd%,,Hide
    Return

    RuinedPortal:
    GuiControl, Disable, RuinedPortal
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\ruined_portal.py"""
    RunWait,%cmd%,,Hide
    Return

    Shipwreck:
    GuiControl, Disable, Shipwreck
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\shipwreck.py"""
    RunWait,%cmd%,,Hide
    Return

    Stronghold:
    GuiControl, Disable, Stronghold
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\stronghold.py"""
    RunWait,%cmd%,,Hide
    Return

    SwampHut:
    GuiControl, Disable, SwampHut
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\swamp_hut.py"""
    RunWait,%cmd%,,Hide
    Return

    Village:
    GuiControl, Disable, Village
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\village.py"""
    RunWait,%cmd%,,Hide
    return

    WoodlandMansion:
    GuiControl, Disable, WoodlandMansion
    GuiControl, Enable, Clear
    Gui, Hide
    cmd := "python.exe """ . A_ScriptDir . "\functions\woodland_mansion.py"""
    RunWait,%cmd%,,Hide
    return

    Clear:
    Clear()
    return
}

; Hoykeys Settings (replace XButton1 by whatever you want)
*XButton1::ASWin() ; Enable the GUI
#IfWinActive, All Structures Tracker
*XButton1::Gui, Hide ; Disable the GUI
!F4::ExitApp ; Exit