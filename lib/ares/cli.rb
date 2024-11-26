require "thor"
require "ronin/nmap"

module Ares
  class CLI < Thor
    desc "scan [OPTIONS] TARGETS", "Run an Nmap scan"
    option :connect_scan, :type => :boolean, :aliases => "-sT", :desc => "Perform a connect scan"
    option :syn_scan, :type => :boolean, :aliases => "-sS", :desc => "Perform a SYN scan", default: true
    def scan(*targets)
      xml = Ronin::Nmap.scan do |nmap|
        nmap.syn_scan = options[:syn_scan]
        nmap.connect_scan = options[:connect_scan]
        nmap.targets = targets
      end
    end
  end
end