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

# NOTE

{{ Note Placeholder - Additional information that a user needs to know.}}

# SEE ALSO

{{ See also placeholder }}

{{ You can also list related articles, blogs, and video URLs. }}

# KEYWORDS

- passphrase
- password
