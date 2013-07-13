# Altria::Authentication
Altria authentication plugin.

## Installation
```ruby
# Gemfile.local
gem "doorkeeper", git: "git@github.com:applicake/doorkeeper.git" # for Rails4 support
gem "altria-authentication", git: "git@github.com:r7kamura/altria-authentication.git"
```

## Usage
You need to create new User records for your application users.
Please do it via rails console.

```
$ rails c
> User.create(email: "test@example.com", password: "xxxxxxxx")
```

### HTML API
Altria becomes to force users to sign in to access any page.

### JSON API
Altria becomes to need an access token to access JSON API.
Access token can be passed via Authorization header or params.
We are using [doorkeeper](https://github.com/applicake/doorkeeper) to provide OAuth2 for Rails.
