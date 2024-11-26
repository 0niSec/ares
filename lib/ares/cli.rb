require "thor"
require "ronin/nmap"

module Ares
  class CLI < Thor
    desc "scan [OPTIONS] TARGETS", "Run an Nmap scan"
    option :connect_scan, :type => :boolean, :aliases => "-sT", :desc => "Perform a connect scan"
    option :syn_scan, :type => :boolean, :aliases => "-sS", :desc => "Perform a SYN scan", default: true
    def scan(*targets)
      result = Ronin::Nmap.scan do |nmap|

        nmap.targets = targets
        nmap.syn_scan = :syn_scan
        puts options[:connect_scan]
      end
    end
  end
end