<#
    .SYNOPSIS
        A DSC configuration script to set SCCM Client setting in SoftwareCenter Installed-applications-hidden to true.
#>

Configuration Example
{
    Import-DscResource -ModuleName ConfigMgrCBDsc -ModuleVersion '1.0.0.0'

    Node localhost
    {
        ClientSettings ExampleSettings
        {
            SiteCode          = 'Lab'
            Name              = 'Test'
            DeviceSettingName = 'SoftwareCenter'
            Setting           = 'installed-applications-hidden'
            SettingValue      = 'true'
        }
    }
}