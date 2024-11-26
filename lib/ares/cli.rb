require "thor"

module Ares
  class CLI < Thor
    desc "scan [OPTIONS] TARGETS", "Run an Nmap scan"
    def scan(*targets)
      nmap = Ronin::Nmap.new

      nmap.targets = targets
      nmap.options = options

      nmap.run
    end
  end
end