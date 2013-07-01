function ruby2md5sum
  for arg in $argv
    set -lx hash (md5sum $arg | cut -d ' ' -f 1)
    set -lx ruby (md5sum $arg | cut -d ' ' -f 3)
    mv $ruby $hash
  end
end
