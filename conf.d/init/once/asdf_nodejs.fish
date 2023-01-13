set -l ASDF_PLUGIN nodejs
set -l ASDF_PLUGIN_VER 19.4.0

asdf plugin add $ASDF_PLUGIN
asdf install $ASDF_PLUGIN $ASDF_PLUGIN_VER
asdf global $ASDF_PLUGIN $ASDF_PLUGIN_VER

set -e ASDF_PLUGIN_VER
set -e ASDF_PLUGIN