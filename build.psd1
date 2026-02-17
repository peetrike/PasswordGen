@{
    ModuleManifest           = 'src/PasswordGen.psd1'
    # Subsequent relative paths are relative to the ModuleManifest
    OutputDirectory          = '../Release'
    CopyPaths                = 'en-US', 'et-EE'
    VersionedOutputDirectory = $false
    Suffix                   = '_init.ps1'
}
