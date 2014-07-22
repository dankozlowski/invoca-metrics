require File.expand_path('./../track_sent_message',  __FILE__)

module MetricsTestHelpers
  include TrackSentMessage

  def stub_metrics_as_production_unicorn
    stub_metrics("prod-fe1", nil, "unicorn")
  end

  def stub_metrics_as_staging_unicorn
    stub_metrics("staging-full-fe1", "staging", "unicorn")
  end

  def stub_metrics(server_name, cluster_name, service_name)
    Invoca::Metrics.server_name = server_name
    Invoca::Metrics.cluster_name = cluster_name
    Invoca::Metrics.service_name = service_name
  end

  def metrics_client_with_message_tracking
    metrics = Invoca::Metrics::Client.metrics
    metrics.extend TrackSentMessage
    metrics
  end

  def mock_timer_and_expected_args(expected_calls)
    any_instance_of(Invoca::Metrics::Client) do |client|
      mock(client).timer.at_least(1).with_any_args do |*args|
        expected_calls.delete(args)
        true
      end
    end
  end

  def mock_gauge_and_expected_args(expected_calls)
    any_instance_of(Invoca::Metrics::Client) do |client|
      mock(client).gauge.at_least(1).with_any_args do |*args|
        expected_calls.delete(args)
        true
      end
    end
  end

end
