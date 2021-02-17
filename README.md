# oidc-proxy

Configuring nodejs App to provide oidc configuration proxy for OpenID connect discovery.

This is a sample nodejs application to enable OpenID Connect Discovery protocol (ie .well-known/openid-configuration URL).

You can use our provided image in `ibmcloudacademy/oidc-proxy:v1` or build your own image.

## Build your own image

1. Clone the git repository:

    ```
    git clone https://github.com/vbudi000/oidc-proxy
    ```

2. Build the image:

    ```
    cd oidc-proxy
    docker build -t <namespace>/<image>:<tag>
    docker push <namespace>/<image>:<tag>
    ```

## Run your proxy

1. Edit configmap.yaml and modify the JSON discovery endpoint

2. Edit deployment.yaml if you are using your own image

3. Create the objects in OpenShift

    ```
    oc new-project oidc-proxy
    oc create -f configmap.yaml
    oc create -f deployment.yaml
    oc create -f service.yaml
    oc create -f route.yaml
    ```

4. Create new OpenID authentication provider with the issuer of `https://oidc-proxy-oidc-proxy.apps.<cluster>.<domain>`. You can use the ca bundle from openshift-console namespace called default-ingress-cert.
