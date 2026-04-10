# Contributing

## Setup

```sh
git clone https://github.com/gremlinltd/REPO_NAME.git
cd REPO_NAME
```

## Commits

We use [Conventional Commits](https://www.conventionalcommits.org/). Commit messages look like this:

```
type(optional scope): description
```

Types and what they do on merge to main:

| Type        | Version bump | Example                      |
| ----------- | ------------ | ---------------------------- |
| `fix:`      | patch        | `fix: handle edge case`      |
| `feat:`     | minor        | `feat: add new feature`      |
| `feat!:`    | major        | `feat!: breaking change`     |
| `chore:`    | patch        | `chore: update dependencies` |
| `docs:`     | patch        | `docs: fix typo`             |
| `refactor:` | patch        | `refactor: simplify logic`   |
| `test:`     | patch        | `test: add missing tests`    |
| `ci:`       | patch        | `ci: pin action versions`    |

CI enforces this, so you'll know straight away if a message doesn't match.

## Branching

We use Gitflow:

- `main` - releases, never commit directly
- `develop` - integration branch
- `feature/<name>` - new features
- `bugfix/<name>` - bug fixes
- `hotfix/<name>` - urgent fixes off main
- `release/<name>` - release prep

## Pull requests

- Fill out the PR template
- Keep changes focused, one thing per PR
- Commit messages drive the changelog and version bumps, so keep them conventional
