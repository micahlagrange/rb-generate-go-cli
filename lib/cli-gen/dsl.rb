require 'open3'
require 'fileutils'
require 'cli-gen/commands'
require 'cli-gen/flags'

# DSL stuff
module CliGen
  # Constants
  def self.build_dir
    "#{gemdir}#{application_name}/"
  end

  def self.gemdir
    "#{File.dirname(File.expand_path(__FILE__))}/build/"
  end

  # get properties of the application and configuration that the user is trying to create
  def self.gen
    if File.directory?(build_dir)
      bash("rm -rf #{build_dir}/*")
    end

    FileUtils.mkdir_p(build_dir)
    File.write("#{build_dir}#{application_name}",'test')
  end

  def self.application_name=(new_name)
    @application_name = new_name
  end

  def self.application_name
    @application_name || 'gen-cli-generated-app'
  end

  def self.bash(cmd, env: {}, verbose: false)
    puts "cmd:#{cmd}\nenv:#{env}" if verbose
    o,e,s = Open3.capture3(cmd, environment: env)
    return o,e,s.exitstatus
  end
end
