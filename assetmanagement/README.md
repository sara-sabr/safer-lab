# Snipe IT

## Installation Requirements

The system you wish to install thiis one must have the following already installed.

- Docker
- Docker Compose
- Git

## Instructions

1. Git clone this repository
```git clone https://github.com/sara-sabr/safer-lab.git```

2. ```cd safer-lab/assetmanagement/```

3. Modify the following values in docker-compose.yml

| Parameter                 | Description                |
| ------------------------  | -------------------------- |
| ```<root pws>```          | Root MySQL password        |
| ```<pws>```               | snipeit MySQL password     |
| ```<api key>```           | API key (see below)        |
| ```<front url>```         | Public URL starting with HTTPS |
| ```<smtp server>```       | SMTP host name |
| ```<sender address>```    | SMTP from address |
| ```<sender name>```       | SMTP from address display name |
| ```<sender username>```   | SMTP username |
| ```<sender password>```   | SMTP password |
| ```<domain name>```       | The domain name of the server |

### Get API key

You will need to generatee an API key which can be obtained by taking the response of the following command.

``` docker run --rm snipe/snipe-it ```

which results in

```bash
#Please re-run this container with an environment variable $APP_KEY
#An example APP_KEY you could use is:
base64:D5oGA+zhFSVA3VwuoZoQ21RAcwBtJv/RGiqOcZ7BUvI=
```

### Generate a SSL cert using Let's Encrypt

Let's encrypt is a service that provides certificates for free, however they expire every 3 months. So, you will need to regenerate them every four months.

Follow instructions found in: https://certbot.eff.org/ by selecting: My HTTP website is running __None of the above__ on __Ubuntu 18.04 LTS__.

4. Now run ```docker-compose up -d```
5. You should now access your site at HTTPS://```<domain name>```
6. Follow the prompts to finish the installation.
