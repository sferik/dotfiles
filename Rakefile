require 'rake'
user = %x[whoami].chomp
desc "Install all dotfiles into #{user}'s home directory"
task :install do
  Dir['*'].each do |file|
    next if %w[Rakefile README.mkd LICENSE.mkd].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file}")
        puts "identical ~/.#{file}"
      else
        print "overwrite ~/.#{file}? [yN] "
        case $stdin.gets.chomp
        when 'y'
          replace_file(file)
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  %x[rm -rf "$HOME/.#{file}"]
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  %x[ln -s "$PWD/#{file}" "$HOME/.#{file}"]
end
