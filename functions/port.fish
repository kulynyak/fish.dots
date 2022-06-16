function port --wraps='netstat -ntlp tcp' --description 'alias port=netstat -ntlp tcp'
  netstat -ntlp tcp $argv; 
end
