set -l ASDF_PLUGIN python
set -l ASDF_PLUGIN_VER 3.11.1

asdf plugin add $ASDF_PLUGIN
asdf install $ASDF_PLUGIN $ASDF_PLUGIN_VER
asdf global $ASDF_PLUGIN $ASDF_PLUGIN_VER

set -e ASDF_PLUGIN_VER
set -e ASDF_PLUGIN