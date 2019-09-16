## Repository URL: https://github.com/itobuztech/docker-aws-itobuz

## Build instruction
- docker build -t itobuz/itobuz-aws:4.0.0 .
- docker push itobuz/itobuz-aws:4.0.0

## Features
- Node 10.x.x
- Aws CLI

## Deploy to AWS or any domain with ssh
- scp -r ./path/* username@domain:remote-path

## Example bitbucket.pipelines.yml
```
image: itobuz/itobuz-aws:version

pipelines:
  branches:
    dev:
      - step:
          caches:
            - node
          script:
            - npm install
            - npm run build
            - scp -r ./dist/* username@domain:/var/www/public-html
```