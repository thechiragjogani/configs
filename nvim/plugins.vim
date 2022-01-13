runtime macros/matchit.vim  " enable extended % matching

let bufferline = get(g:, 'bufferline', {})
let bufferline.add_in_buffer_number_order = v:true
let bufferline.animation = v:true
let bufferline.auto_hide = v:false
let bufferline.tabpages = v:true
let bufferline.closable = v:true
let bufferline.clickable = v:true
let bufferline.icons = v:true
let bufferline.icon_custom_colors = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:true
let bufferline.maximum_padding = 4
let bufferline.maximum_length = 30
let bufferline.semantic_letters = v:true
let bufferline.letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
let bufferline.no_name_title = v:null

let g:coq_settings = { "keymap.jump_to_mark": "<c-l>" }
let g:coq_settings.auto_start = "true | 'shut-up'"

let g:suda_smart_edit = v:true

let g:chadtree_settings = { 'keymap.toggle_hidden': ["."], 'options.show_hidden': v:false}

let g:mkdp_echo_preview_url = 1
let g:mkdp_page_title = '${name}'
let g:mkdp_filetypes = ['markdown', 'html', 'phtml']
let g:mkdp_auto_start = 1
let g:mkdp_command_for_global = 1
let g:mkdp_browser = 'firefox-esr'

let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_pos = 'xfce'
let g:asynctasks_term_reuse = 1