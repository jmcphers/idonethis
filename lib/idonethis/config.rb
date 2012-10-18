require 'singleton'
require 'yaml'

module IDoneThis
  class Config < Hashie::Mash
    include Singleton

    def initialize
      config_data = YAML.load_file("#{ENV['HOME']}/.idonethisrc")

      super(config_data)
    end

    def sender
      IDoneThis::Senders.const_get(self["sender"]).new
    end
  end

  def self.config
    Config.instance
  end
end