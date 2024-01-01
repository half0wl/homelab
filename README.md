# 🔬 homelab

Personal homelab - nothing to see here!

## Services

| Name | Location |  Purpose |
| ---- | ------  | --- |
| [`services/pihole-and-dns`](services/pihole-and-dns) | [`dns.gallifrey.sh`](https://dns.gallifrey.sh) | Network-wide domain/ads blocking + `dnsmasq` for local DNS server |
| [`services/homebridge`](services/pihole-and-dns) | [`homebridge.gallifrey.sh`](https://homebridge.gallifrey.sh) | Connecting unsupported devices to Apple HomeKit |
| [`services/unifi-network-application`](services/unifi-network-application) | [`unifi.gallifrey.sh`](https://unifi.gallifrey.sh) | UniFi controller for network devices |
| [`services/nginx-certbot`](services/nginx-certbot) | N/A | NGINX Reverse Proxy + SSL via LetsEncrypt/Certbot |

*p/s: the locations above are unreachable from the public!*

## Recipes

### Running Playbooks

```sh
$ ansible-playbook \
    -i ansible/inventory.yml \
    services/$SERVICE/playbook.yml \
    --ask-become-pass
```

## License

Do whatever you want.
