module github.com/temporalio/samples-go

go 1.16

replace github.com/cactus/go-statsd-client => github.com/cactus/go-statsd-client v3.2.1+incompatible

require (
	github.com/HdrHistogram/hdrhistogram-go v1.1.2 // indirect
	github.com/faiface/beep v1.1.0 // indirect
	github.com/golang/mock v1.6.0
	github.com/golang/snappy v0.0.4
	github.com/google/uuid v1.3.0
	github.com/hashicorp/go-plugin v1.4.3
	github.com/opentracing/opentracing-go v1.2.0
	github.com/pborman/uuid v1.2.1
	github.com/prometheus/client_golang v1.12.1
	github.com/stretchr/testify v1.8.2
	github.com/uber-go/tally/v4 v4.1.1
	github.com/uber/jaeger-client-go v2.29.1+incompatible
	github.com/uber/jaeger-lib v2.4.1+incompatible // indirect
	go.temporal.io/api v1.19.1-0.20230322213042-07fb271d475b
	go.temporal.io/sdk v1.22.2
	go.temporal.io/sdk/contrib/opentracing v0.1.0
	go.temporal.io/sdk/contrib/tally v0.2.0
	go.temporal.io/sdk/contrib/tools/workflowcheck v0.0.0-20230413153418-eaa3802876de
	go.temporal.io/server v1.15.2
	go.uber.org/multierr v1.7.0
	go.uber.org/zap v1.20.0
	golang.org/x/exp/shiny v0.0.0-20230510235704-dd950f8aeaea // indirect
	google.golang.org/grpc v1.54.0
	gopkg.in/square/go-jose.v2 v2.6.0
	gopkg.in/yaml.v3 v3.0.1
)
