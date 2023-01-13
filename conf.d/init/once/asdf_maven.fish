set -l ASDF_PLUGIN maven
set -l ASDF_PLUGIN_VER 3.8.6

asdf plugin add $ASDF_PLUGIN
asdf install $ASDF_PLUGIN $ASDF_PLUGIN_VER
asdf global $ASDF_PLUGIN $ASDF_PLUGIN_VER

set -e ASDF_PLUGIN_VER
set -e ASDF_PLUGIN