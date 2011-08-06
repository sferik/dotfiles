class Dotfiles < Thor
  include Thor::Actions
  Thor::Sandbox::Dotfiles.source_root(File.expand_path('..', __FILE__))
  @user = %x[whoami].chomp

  desc "install", "Install all dotfiles into #{@user}'s home directory"
  method_options :force => :boolean
  def install
    FileUtils.mkdir_p File.expand_path('~') + "/tmp"
    Dir['*'].each do |file|
      next if %w[Gemfile Gemfile.lock Thorfile README.md LICENSE.md screenshots].include? file
      case file
      when "com.apple.Terminal.plist"
        link_file(file, "~/Library/Preferences/com.apple.Terminal.plist", options[:force])
      else
        link_file(file, "~#{@user}/.#{file}", options[:force])
      end
    end
  end
end
