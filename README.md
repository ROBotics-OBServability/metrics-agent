# Robs Agent

## TODO

* [ ] Script installazione 
* [ ] Otel collector deve comunicare verso fuori (altro otel collector)
* [ ] Aggiungere raccolta dei log (Loki)
* [ ] Rimpiazzare glances con node_exporter+process-exporter
* [ ] Migrare da docker a qualcosa di meglio

---

This module contains the software stack needed to extract metrics from a machine. It should serves as a gateway to push metrics, logs and more.

To spin up all services:

```bash
sudo docker compose up -d
```

To see the metrics from the OpenTelemetry collector:

```bash
sudo docker compose logs opentelemetry-collector -f
```

## More data

Visit [http://localhost:9091/metrics](http://localhost:9091/metrics) to inspect raw data from glances.

Visit [http://localhost:9090](http://localhost:9090) to inspect Prometheus (**TODO**: remove).
