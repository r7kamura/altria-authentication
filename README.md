# Altria::Authentication

> [!NOTE]
> This project is archived because I no longer actively use it, and there seems to be no recent activity from other users either. If you are still using it and would like to take over maintenance, please contact me somewhere.

Altria authentication plugin.

## Installation
```ruby
# Gemfile.local
gem "doorkeeper", git: "git@github.com:applicake/doorkeeper.git" # for Rails4 support
gem "altria-authentication", git: "git@github.com:r7kamura/altria-authentication.git"
```

```
$ cd /path/to/altria
$ rake db:migrate
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
