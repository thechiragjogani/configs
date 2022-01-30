set rtp+=$HOME/.config/nvim/
set rtp+=$HOME/.config/nvim/plugged/nvim-lspconfig/
set rtp+=$HOME/.config/nvim/plugged/coq_nvim/
lua require("plug")
source $HOME/.config/nvim/plug.vim " plugin loader
source $HOME/.config/nvim/general.vim " general settings
source $HOME/.config/nvim/leader.vim " leader key settings
source $HOME/.config/nvim/function.vim " custom functions
source $HOME/.config/nvim/plugins.vim " plugin specific settings