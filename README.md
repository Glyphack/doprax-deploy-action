# Doprax Deploy Action
A GitHub action to projects from Github to [Doprax](https://www.doprax.com/).

## Action inputs

## Inputs

- `email` Doprax account email
- `password` Doprax account password
- `api key` Doprax account API key
- `project_name` name of the project to deploy
## Example usage

```yaml
name: Deploy
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: deploy action step
        uses: Glyphack/doprax-deploy-action@v1
        with:
          email: ${{ secrets.DOPRAX_EMAIL }}
          password: ${{ secrets.DOPRAX_PASSWORD }}
          api_key: ${{ secrets.DOPRAX_API_KEY}}
          project_name: "myProject"
```
