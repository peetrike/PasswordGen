function New-PassPhrase {
    # .EXTERNALHELP PasswordGen-help.xml
    [OutputType([string])]
    [CmdletBinding()]
    param (
            [ValidateRange(2, 10)]
            [int]
        $Words = 4,
            [ValidateSet('-', '_', '|', '*', '.')]
            [char]
        $Symbol = '-',
            [ValidateSet('en-US', 'et-EE')]
            [string]
        $Language = 'en-US',
            [switch]
        $Number,
            [switch]
        $Capital
    )

    $WordListPath = Join-Path -Path $PSScriptRoot -ChildPath ('{0}\wordlist.txt' -f $Language)
    if (-not (Test-Path -Path $WordListPath -PathType Leaf)) {
        Write-Error -Message 'WordList not available'
        return
    }

    $hash = Get-FileHash -Path $WordListPath

    if ($hash.hash -ne $Script:hashlist[$Language]) {
        Write-Error -Message 'Wordlist Hash does not match'
        return
    }

    $WordList = Get-Content -Path $WordListPath
    $Selection = $WordList | Where-Object { $_ } | Get-Random -Count $Words
    if ($Number) {
        $i = Get-Random -Maximum ($Words)
        $Selection[$i] += Get-Random -Maximum 10
    }

    if ($Capital) {
        $i = Get-Random -Maximum ($Words)
        $word = $Selection[$i]
        $char = $word[0]
        $Selection[$i] = ([string]$char).ToUpper() + $word.trimstart($char)
    }

    $Selection -join $Symbol
}
