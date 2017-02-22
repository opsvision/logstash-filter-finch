# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"
require "rest-client"

# This  filter will replace the contents of the default 
# message field with whatever you specify in the configuration.
#
# It is only intended to be used as an .
class LogStash::Filters::Finch < LogStash::Filters::Base

  # Setting the config_name here is required. This is how you
  # configure this filter from your Logstash config.
  #
  # filter {
  #    {
  #     field_name => "message"
  #   }
  # }
  #
  config_name "finch"
  
  # Declare configuration settings
  config :field_name, :validate => :string, :required => true

  public
  def register
    # Add instance variables 
  end # def register

  public
  def filter(event)

    payload = event.get(@field_name)
    event.set("payload", payload)

    # filter_matched should go in the last line of our successful code
    filter_matched(event)
  end # def filter
end # class LogStash::Filters::Finch
