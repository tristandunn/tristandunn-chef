# tristandunn-chef

The Chef recipes used for my personal website.

## Port Forwarding

The `vagrant-trigger` plug-in is used to achieve sane port forwarding. See the triggers in the [Vagrantfile][].

```sh
# If you're using Homebrew you'll probably need this variable.
$ export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

$ vagrant plugin install vagrant-triggers
```

## SSL

SSL is only be enabled if a certificate is present. Self-signed certificates can be generated for the local copy.

```sh
$ cd /etc/ssl
$ openssl genrsa -out tristandunn.com.key 2048
$ openssl req -new -x509 -key tristandunn.com.key -out tristandunn.com.crt -days 3650 -subj /CN=tristandunn.local

$ cd /etc/ssl/certs
$ openssl dhparam -out dhparam.pem 4096
```

On OS X, drag it the `.crt` file into the "Keychain Access" application and set it to "Always Trust".

[Vagrantfile]: https://github.com/tristandunn/tristandunn.com-chef/blob/master/Vagrantfile
