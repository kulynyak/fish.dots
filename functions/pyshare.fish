function pyshare --wraps='python3 -m http.server' --description 'alias pyshare=python3 -m http.server'
  python3 -m http.server $argv; 
end
