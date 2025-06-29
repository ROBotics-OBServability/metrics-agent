# ROBS Metrics Agent

## Get started

```bash
curl https://raw.githubusercontent.com/ROBotics-OBServability/metrics-agent/b311af468372577bac4f0084e8988bb09e49e683/setup.sh | bash
```

At the moment, to see the metrics from the OTEL collector you can do:

```bash
cd ~/metrics-agent
sudo docker compose logs opentelemetry-collector -f
```

## TODO

* [x] Installation script
* [ ] Make OTEL collector communicate to the outside
* [ ] Add Loki for log collection
* [ ] Replace glances with node_exporter + process-exporter
* [ ] Migrate from Docker to something else
