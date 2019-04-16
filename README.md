# Codefresh deploy over HTTP

With [Docker-compose deployer over HTTP](https://github.com/gleerman/http-dockercompose-deploy) enabled on the deployment server, this image allows Codefresh to use it for automated builds. Aside from that scenario, it can be used to call any HTTP endpoint from within codefresh.

## Usage

In the codefresh pipeline edit view, configure the build as you normally would. Then, in the _Deploy Script_ section, select the option _Custom Deploy Image_. The deploy image name is `gleerman/cf-deploy-http`.

In the script editor, add the following line:

```
cfhttp-update <URL> --method <METHOD> --bearertoken <TOKEN>
```

These are the parameters:
* `URL`: The entire URL of the endpoint. Don't forget to write the `http://` part and the port if not the standard one is used, since this version of the script is unable to detect if it is not included.
* `--method <METHOD>`: (optional) HTTP method. Can be set to either `GET` or `POST`. Default: `GET`
* `--bearertoken <TOKEN>`: (optional) HTTP `Authorization` Bearer token. This is the output of the [Docker-compose deployer over HTTP](https://github.com/gleerman/http-dockercompose-deploy) script when started (check the logs). When the flag is not set, no token is included.
