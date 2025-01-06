To build a Prometheus docker container locally, first run:
docker pull prom/prometheus

Then the command to build the container, must be run from the directory the prometheus.yml file is in:
docker run -d \
  --name prometheus \
  -p 9090:9090 \
  -v ./prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus
  
Access the container in:
localhost:9090

Examples of metrics we expose:
process_cpu_seconds_total
python_info
HTTP_requests_Total_total

(In the UI, write those values in the Query field and click Execute)