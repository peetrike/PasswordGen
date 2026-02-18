---
external help file: PasswordGen-help.xml
Module Name: PasswordGen
online version:
schema: 2.0.0
---

# New-Password

## SYNOPSIS

Generates a random password string.

## SYNTAX

```
New-Password [[-Length] <Int32>] [[-Number] <Char[]>] [[-Letter] <Char[]>] [[-Capital] <Char[]>]
 [[-Symbol] <Char[]>] [<CommonParameters>]
```

## DESCRIPTION

This function generates string of random characters meant to be used as password.
Function uses character sets with some characters removed for improved readability.

## EXAMPLES

### Example 1

```powershell
Get-Password -Length 20
```

Generates a string with length of 20 characters.

## PARAMETERS

### -Capital

Specifies capital letters to use when generating password

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: ABCDEFGHJKLMNPRSTUVWXYZ
Accept pipeline input: False
Accept wildcard characters: False
```

### -Length

Specifies desired password length

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: random number between 15 and 20
Accept pipeline input: False
Accept wildcard characters: False
```

### -Letter

Specifies lowercase letters to use when generating password

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: abcdefghijkmnpqrstuvwxyz
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number

Specifies numbers to use when generating password

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 23456789
Accept pipeline input: False
Accept wildcard characters: False
```

### -Symbol

Specifies other symbols to use when generating password.

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.String

Generated password

## NOTES

## RELATED LINKS

[New-PassPhrase](New-PassPhrase.md)
