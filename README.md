# depcheck-action

Run [pip-compile](https://github.com/jazzband/pip-tools) in a Github Workflow
and compare the output with the pre-existing requirements.txt. This is helpful
if you want to ensure that changes to requirements.in are correctly updated to
requirements.txt.

## Usage

To use, create a workflow file (e.g. `.github/workflows/parity-check.yml`) with the following:

```
name: depcheck
on: [push]
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: pip-compile-parity
      uses: theahura/pip-compile-diff-action@main
```
