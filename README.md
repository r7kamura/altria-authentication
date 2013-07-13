# Altria::Doorkeeper
Altria authentication plugin.

## Installation
```
# Gemfile.local
gem "doorkeeper", git: "git@github.com:applicake/doorkeeper.git" # for Rails4 support
gem "altria-doorkeeper", git: "git@github.com:r7kamura/altria-doorkeeper.git"
```

## Usage
1. For HTML API, a user need to sign in to access any page. (We are not providing a sign-up form)
2. For JSON API, a user need to pass an access token via HTTP Authorization header or params.
