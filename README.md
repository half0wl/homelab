# 🔬 homelab

Personal homelab - nothing to see here!

[https://raychen.io/writing/homelab-setup](https://raychen.io/writing/homelab-setup)

## Services

| Name                                                                       | Location                                                           | Purpose                                                             |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------- |
| [`services/pihole-and-dns`](services/pihole-and-dns)                       | [`dns.gallifrey.sh`](https://dns.gallifrey.sh)                     | Network-wide domain/ads blocking + `dnsmasq` for local DNS server   |
| [`services/homebridge`](services/pihole-and-dns)                           | [`homebridge.gallifrey.sh`](https://homebridge.gallifrey.sh)       | Connecting unsupported devices to Apple HomeKit                     |
| [`services/unifi-network-application`](services/unifi-network-application) | [`unifi.gallifrey.sh`](https://unifi.gallifrey.sh)                 | UniFi controller for network devices                                |
| [`services/observability`](services/observability)                         | [`observability.gallifrey.sh`](https://observability.gallifrey.sh) | Monitoring stack via Grafana, cAdvisor, and Prometheus+NodeExporter |
| [`services/nginx-certbot`](services/nginx-certbot)                         | N/A                                                                | NGINX Reverse Proxy + SSL via LetsEncrypt/Certbot                   |

_p/s: the locations above are unreachable from the public!_

## Recipes

### Running Playbooks

```sh
$ ansible-playbook \
    -i ansible/inventory.yml \
    services/$SERVICE/playbook.yml \
    --ask-become-pass
```

### Renewing LE cert

1. Edit [`services/nginx-certbot/cloudflare.ini`](services/nginx-certbot/cloudflare.ini)
with a valid "Edit Zone DNS" token from CF
2. Run the Ansible playbook [`services/nginx-certbot/playbook.yml`](services/nginx-certbot/playbook.yml)
3. SSH into host and restart the nginx container

## License

Do whatever you want.
