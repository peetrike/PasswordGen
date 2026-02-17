function Get-RandomString {
    # .EXTERNALHELP PasswordGen-help.xml
    [OutputType([string])]
    [CmdletBinding()]
    param (
            [ValidateRange(4, 128)]
            [int]
        $Length = (Get-Random -Minimum 15 -Maximum 21),
            [ValidatePattern('\d')]
            [char[]]
        $Number = ('23456789'.ToCharArray()),
            [ValidatePattern('[a-z]')]
            [char[]]
        $Letter = ('abcdefghijkmnpqrstuvwxyz'.ToCharArray()),
            [char[]]
            [ValidatePattern('[A-Z]')]
        $Capital = ('ABCDEFGHJKLMNPRSTUVWXYZ'.ToCharArray()),
            [char[]]
        $Symbol = ('!#%+@:=?*'.ToCharArray())
    )

    $table = @{
        Capital = $Capital
        Letter  = $Letter
        Number  = $Number
        Symbol  = $Symbol
    }
    $AllSymbol = $Number + $Letter + $Capital + $Symbol

    [char[]] $everySet = foreach ($key in $table.Keys | Get-Random -Count 4) {
        Get-Random -InputObject $table.$key
    }
    [char[]] $allSet = for ($i = 5; $i -le $Length; $i++) { Get-Random -InputObject $AllSymbol }
    $full = $allSet.Count
    $half = if ($full) { Get-Random -Maximum $full } else { 0 }

    $builder = [System.Text.StringBuilder] $Length
    if ($half -gt 0) { [void] $builder.Append($allSet, 0, $half) }
    [void] $builder.Append($everySet)
    if ($length -gt 4) { [void] $builder.Append($allSet, $half, $full - $half) }
    $builder.ToString()
}
