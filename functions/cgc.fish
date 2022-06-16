function cgc --wraps='cat ~/.gitconfig' --wraps='bat ~/.gitconfig' --description 'alias cgc=bat ~/.gitconfig'
  bat ~/.gitconfig $argv; 
end
