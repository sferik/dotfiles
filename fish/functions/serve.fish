function serve
  if set -q argv[1]
    set PORT $argv[1]
  else
    set PORT 3030
    while true
      set i (lsof -ti :$PORT)
      if count $i
        set PORT (math $PORT + 1)
      else
        break
      end
    end
  end
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $PORT, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
end
