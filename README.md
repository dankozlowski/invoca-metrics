# Invoca::Metrics

Metrics generation for Sensu

## Installation

Add this line to your application's Gemfile:

    gem 'invoca-metrics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install invoca-metrics

## Setup

Add the following code to your application...

    require 'invoca/metrics'

    Invoca::Metrics.service_name    = "my_cool_application"
    Invoca::Metrics.server_name     = "some_hostname"
    Invoca::Metrics.cluster_name    = "cluster name (if you have one)"
    Invoca::Metrics.sub_server_name = "some_worker_process"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
