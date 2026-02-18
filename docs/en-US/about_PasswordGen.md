# PasswordGen

## about_PasswordGen


# SHORT DESCRIPTION

A module that helps to generate passwords

# LONG DESCRIPTION

This module contains commands:

- New-PassPhrase: generates passphrases
- New-Password: generates random string

# EXAMPLES

```powershell
New-PassPhrase -Language et-ee -Words 5 -Number
```

Generates passphrase from 5 words obtained from Estonian wordlist.
The random word has number appended.

```powershell
New-Password -Length 32
```

Generates random string with length of 32 characters.

# SEE ALSO

[Windows LAPS passwords and passphrases](https://learn.microsoft.com/windows-server/identity/laps/laps-concepts-passwords-passphrases)

# KEYWORDS

- passphrase
- password
