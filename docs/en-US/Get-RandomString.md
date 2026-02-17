---
external help file: PasswordGen-help.xml
Module Name: PasswordGen
online version:
schema: 2.0.0
---

# Get-RandomString

## SYNOPSIS

Generates random string from provided characters

## SYNTAX

```
Get-RandomString [[-Length] <Int32>] [[-Number] <Char[]>] [[-Letter] <Char[]>] [[-Capital] <Char[]>]
 [[-Symbol] <Char[]>] [<CommonParameters>]
```

## DESCRIPTION

{{ Fill in the Description }}

## EXAMPLES

### Example 1

```powershell
Get-RandomString -Length 20
```

Generates random string using 20 characters

## PARAMETERS

### -Capital

List of capital letters to use

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Length

The string length

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Letter

List of lowercase letters to use

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number

List of numbers to use

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Symbol

List of symbol characters to use

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

The generated string

## NOTES

## RELATED LINKS

[New-PassPhrase](New-PassPhrase.md)
