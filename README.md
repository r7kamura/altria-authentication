# Altria::Authentication
Altria authentication plugin.

## Installation
```
# Gemfile.local
gem "doorkeeper", git: "git@github.com:applicake/doorkeeper.git" # for Rails4 support
gem "altria-authentication", git: "git@github.com:r7kamura/altria-authentication.git"
```

## Usage
1. For JSON API, a user need to pass an access token via HTTP Authorization header or params.
2. For HTML API, a user need to sign in to access any page. (Please use console to register a new user)
