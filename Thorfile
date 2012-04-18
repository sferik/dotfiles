class Dotfiles < Thor
  include Thor::Actions
  Thor::Sandbox::Dotfiles.source_root(File.expand_path('..', __FILE__))
  @user = %x[whoami].chomp

  desc "install", "Install all dotfiles into #{@user}'s home directory"
  method_options :force => :boolean
  def install
    Dir['*'].each do |file|
      next if %w[Gemfile Gemfile.lock Thorfile README.md LICENSE.md].include?(file)
      link_file(file, "~#{@user}/.#{file}", options[:force])
    end
  end
end
