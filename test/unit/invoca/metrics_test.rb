require File.expand_path('../../../test_helper',  __FILE__)

class MetricsClientTest < Minitest::Test

  should "raise an exception if service name is not defined" do
    Invoca::Metrics.service_name = nil
    assert_raises(ArgumentError) { Invoca::Metrics.service_name }
  end

end
