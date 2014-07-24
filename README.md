# Invoca::Metrics

Metrics generation for your apps!

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

Out of the four settings above, only `service_name` is required.  The others are optional.

## Usage

Mixin the Source module:

    class MyClass
      include Invoca::Metrics::Source
      ...
    end

Then call any method from `Invoca::Metrics::Client` via the `metrics` member:

    metrics.timer("some_process/execution_time", time_in_ms)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
