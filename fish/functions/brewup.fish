function brewup
  brew update
  set -lx outdated_brews (brew outdated)
  if count $outdated_brews
    brew uninstall $outdated_brews
    brew install $outdated_brews
  end
end
