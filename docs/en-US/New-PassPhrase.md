---
external help file: PasswordGen-help.xml
Module Name: PasswordGen
online version:
schema: 2.0.0
---

# New-PassPhrase

## SYNOPSIS

Generates passphrase with specified conditions

## SYNTAX

```
New-PassPhrase [[-Words] <Int32>] [[-Symbol] <Char>] [[-Language] <String>] [-Number] [-Capital]
 [<CommonParameters>]
```

## DESCRIPTION

This function generates a passphrase.

## EXAMPLES

### Example 1

```powershell
New-PassPhrase -Words 6 -Number
```

Generates a passphrase with 6 words in it and includes a number.

## PARAMETERS

### -Capital

Capitalize random word's first character

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language

Specifies wordlist language

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: en-US, et-EE

Required: False
Position: 2
Default value: en-US
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number

Include number in the end of random word

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Symbol

The symbol to use as word separator

```yaml
Type: Char
Parameter Sets: (All)
Aliases:
Accepted values: -, _, |, *, .

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Words

Number of words to include.  The number should be between 2 and 10.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: 4
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.String

A generated passphrase

## NOTES

## RELATED LINKS

[New-Password](New-Password.md)
