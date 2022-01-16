call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'tpope/vim-fugitive' " git
    Plug 'preservim/nerdcommenter' " comments toggle
    Plug 'romgrk/barbar.nvim' " status bar (top)
    Plug 'nvim-lualine/lualine.nvim' " status line (bottom)
    Plug 'kyazdani42/nvim-web-devicons' " programming icons
    Plug 'luochen1990/rainbow' " Coloured brackets
    Plug 'tomasiser/vim-code-dark' " colorscheme
    Plug 'mfussenegger/nvim-dap' " debugger
    Plug 'lambdalisue/suda.vim' " sudo write
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " file explorer
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq', 'do': 'python3 -m coq deps'} " code completion
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " 9000+ Snippets
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'Raimondi/delimitMate'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()