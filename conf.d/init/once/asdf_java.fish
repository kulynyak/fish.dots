set -l ASDF_PLUGIN java
set -l ASDF_PLUGIN_VER temurin-17.0.5+8

asdf plugin add $ASDF_PLUGIN
asdf install $ASDF_PLUGIN $ASDF_PLUGIN_VER
asdf global $ASDF_PLUGIN $ASDF_PLUGIN_VER

set -e ASDF_PLUGIN_VER
set -e ASDF_PLUGIN