asdf plugin add direnv
set -l ASDF_DIRENV_VER 2.32.2
asdf install direnv $ASDF_DIRENV_VER
asdf global direnv $ASDF_DIRENV_VER
set -e ASDF_DIRENV_VER
