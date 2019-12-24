# Python Pytest GitHub Action
Github Action for Pytest with Python Slim Docker image (supports install of numpy and pandas and takes very less time to build)

Run any Pytest command using the action -

```bash
$ Pytest test/unit
```

### Usage

```yml
- name: Python Pylin GitHub Action
  uses: fylein/python-pytest-github-action@v1
  with:
    args: pip3 install -r requirements.txt && pytest test/unit
```
