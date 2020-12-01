objectdef wkitUplink
{
    method Initialize()
    {
        LGUI2:LoadPackageFile[WhatKeyIsThis.Uplink.lgui2Package.json]
    }

    method Shutdown()
    {
        LGUI2:UnloadPackageFile[WhatKeyIsThis.Uplink.lgui2Package.json]
    }

    variable string LastButton="Press a Key"

    method OnButton()
    {
        echo "[What Key is This] ${Context.Args.AsJSON~}"
        LastButton:Set["${Context.Args[controlName]~}"]
    }
}

variable(global) wkitUplink WKITUplink

function main()
{
    while 1
        waitframe
}