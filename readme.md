## [New Motoko Library]

### Tests
- Uses [@krpeacock](https://github.com/krpeacock) [motoko-unit-tests](https://github.com/krpeacock/motoko-unit-tests) library

### Makefile Commands
- `make test` - runs your motoko tests by interpreting the code with the motoko compiler
  - Tests files have to be in the `/tests` directory and end with `.Test.mo`
- `make doc` - creates html and markdown documentation from your inline comments (comments starting with 3 backslashes `///`)

### Github Actions
- Actions for running tests every time there is a push or pull request to the `main` branch