function each_ruby
  set initial_version (rbenv version | cut -d ' ' -f 1)
  for v in (rbenv versions --bare)
    rbenv shell $v
    eval $argv
  end
  rbenv shell $initial_version
end
