### Put this in `~/.asdfrc`

```bash
legacy_version_file = yes
```

### Specify lang version in `.tool-versions`

```bash
ruby 2.6.5
```

## May be useful

### Rubocop trick

```bash
#!/bin/bash
bundle exec rubocop "$@"
# place it to /usr/local/bin/rubocop and add to PATH
# sudo chmod +x /usr/local/bin/rubocop
```