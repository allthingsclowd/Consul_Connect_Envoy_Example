  storage "consul" {
    address = "127.0.0.1:8321"
    scheme = "https"
    path    = "vault/"
    tls_ca_file = "/etc/vault.d/pki/tls/certs/consul/consul-ca.pem"
    tls_cert_file = "/etc/vault.d/pki/tls/certs/consul/server.pem"
    tls_key_file = "/etc/vault.d/pki/tls/private/consul/server-key.pem"
    token = "c16c927e-7719-70e6-5f38-5be7563ef816"
  }

  ui = true

  listener "tcp" {
    address = "0.0.0.0:8322"
    tls_disable = 0
    tls_cert_file = "/etc/vault.d/pki/tls/certs/vault/hashistack-server.pem"
    tls_key_file = "/etc/vault.d/pki/tls/private/vault/hashistack-server-key.pem"
  }

  # Advertise the non-loopback interface
  api_addr = "https://192.168.99.11:8322"
  cluster_addr = "https://192.168.99.11:8322"
