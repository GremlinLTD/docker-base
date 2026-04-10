## What does this do?

<!-- Brief description of the change -->

## Why?

<!-- What problem does this solve or what feature does it add? -->

## How to test

- [ ] `docker build -f alpine/Dockerfile .`
- [ ] `docker build -f ubuntu/Dockerfile .`
- [ ] `shellcheck entrypoint/entrypoint.sh`
- [ ] Tested manually with `docker run`

## Commit type

<!-- Which applies? This determines the version bump on merge to main -->

- [ ] `fix:` - patch bump
- [ ] `feat:` - minor bump
- [ ] `feat!:` or breaking change - major bump
- [ ] `chore:` / `docs:` / `refactor:` - patch bump
