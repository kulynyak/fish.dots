function ip --wraps=ifconfig\ \|\ grep\ \"inet\ \"\ \|\ grep\ -Fv\ 127.0.0.1\ \|\ awk\ \'\{print\ \$2\}\' --description alias\ ip=ifconfig\ \|\ grep\ \"inet\ \"\ \|\ grep\ -Fv\ 127.0.0.1\ \|\ awk\ \'\{print\ \$2\}\'
  ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' $argv; 
end
