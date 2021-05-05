# Docker container security check Buildkite plugin

Performs various security checks on Docker container 

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - create1st/docker-security-check-plugin#v1.0.0:
          image-name: 'docker-image:v1.2.3'
```

## Configuration

### `image-name` (Required, string)

Docker image name 

## Developing

To run the linter:
```shell
docker-compose run --rm lint
```

To run the tests:
```shell
docker-compose run --rm tests
```

## Contributing
1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request