module Lightning
  # Runs bin/* commands, handling setup and execution.
  module Cli
    @usage = {}
    extend self

    # Used by bin/* to run commands
    def run_command(command, argv=ARGV)
      @command = command
      if argv.include?('-h') || argv.include?('--help')
        print_usage
      else
        send("#{command}_command", argv)
      end
    rescue StandardError, SyntaxError
      $stderr.puts "Error: "+ $!.message
    end

    private
    def print_usage
      usage_array = Array(@usage[@command])
      usage_array[0] = "Usage: #{usage_array[0]}"
      puts usage_array
    end

    def usage(command, *args)
      @usage[command] = args
    end
  end
end