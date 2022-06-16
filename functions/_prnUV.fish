function _prnUV --description "Print registered universal variables"
  echo "_U_INIT_REGISTERED_VARS=$_U_INIT_REGISTERED_VARS"
  for U_VAR in $_U_INIT_REGISTERED_VARS
    echo "$U_VAR=$$U_VAR"
  end
end
