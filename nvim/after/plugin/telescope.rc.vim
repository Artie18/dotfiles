nnoremap <silent> ;fr <cmd>Telescope live_grep<CR>
nnoremap <silent> ;ff <cmd>Telescope find_files<CR>

nnoremap <silent> ;j <cmd>tabprevious<CR>
nnoremap <silent> ;l <cmd>tabnext<CR>
nnoremap <silent> ;n <cmd>tabnew<CR>
nnoremap <silent> ;gi <cmd>GoImports<CR>


let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

