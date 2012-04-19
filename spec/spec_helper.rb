# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

TROPO_SMS_RESPONSE_OPEN = {"session"=>{"id"=>"f33027a075e4381b8cd25a77b4523ed1", "accountId"=>"116309", "timestamp"=>"2012-04-18T19:46:16.100Z", "userType"=>"HUMAN", "initialText"=>"Wal-mart", "callId"=>"beab313e845165a530fc1157f50171c5", "to"=>{"id"=>"14842020381", "name"=>nil, "channel"=>"TEXT", "network"=>"SMS"}, "from"=>{"id"=>"14152751223", "name"=>nil, "channel"=>"TEXT", "network"=>"SMS"}, "headers"=>{"Max-Forwards"=>"70", "Content-Length"=>"124", "Contact"=>"<sip:10.6.93.101:5066;transport=udp>", "To"=>"<sip:9990009648@10.6.69.204:5061;to=14157669288>", "CSeq"=>"1 INVITE", "Via"=>"SIP/2.0/UDP 10.6.93.101:5066;branch=z9hG4bKhjmtoz", "Call-ID"=>"1opa8k", "Content-Type"=>"application/sdp", "From"=>"<sip:7472EADF-8564-47DF-88A6A0D357B19798@10.6.61.201;channel=private;user=14152751223;msg=asdf;network=SMS;step=3>;tag=ltku4m"}}, "response"=>{}}
TROPO_SMS_RESPONSE_MULTI = {"session"=>{"id"=>"f33027a075e4381b8cd25a77b4523ed1", "accountId"=>"116309", "timestamp"=>"2012-04-18T19:46:16.100Z", "userType"=>"HUMAN", "initialText"=>"a", "callId"=>"beab313e845165a530fc1157f50171c5", "to"=>{"id"=>"14842020381", "name"=>nil, "channel"=>"TEXT", "network"=>"SMS"}, "from"=>{"id"=>"14152751223", "name"=>nil, "channel"=>"TEXT", "network"=>"SMS"}, "headers"=>{"Max-Forwards"=>"70", "Content-Length"=>"124", "Contact"=>"<sip:10.6.93.101:5066;transport=udp>", "To"=>"<sip:9990009648@10.6.69.204:5061;to=14157669288>", "CSeq"=>"1 INVITE", "Via"=>"SIP/2.0/UDP 10.6.93.101:5066;branch=z9hG4bKhjmtoz", "Call-ID"=>"1opa8k", "Content-Type"=>"application/sdp", "From"=>"<sip:7472EADF-8564-47DF-88A6A0D357B19798@10.6.61.201;channel=private;user=14152751223;msg=asdf;network=SMS;step=3>;tag=ltku4m"}}, "response"=>{}}

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
