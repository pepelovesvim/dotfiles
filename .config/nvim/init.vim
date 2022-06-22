let mapleader = "\\"

" vim-plug
call plug#begin('~/.config/nvim/plugged')
	Plug 'lambdalisue/session.vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/vim-easy-align'
	Plug 'Raimondi/delimitMate'
	Plug 'preservim/nerdtree'
	Plug 'hattya/python-indent.vim', {'for': 'python'}
	Plug 'yegappan/mru'
	Plug 'lervag/vimtex'
	Plug 'ruanyl/vim-gh-line'
	Plug 'tpope/vim-fugitive'
	" Plug 'liuchengxu/vista.vim'
	Plug 'junegunn/fzf.vim'
	Plug 'yegappan/mru'
	Plug 'dense-analysis/ale'
	Plug 'airblade/vim-gitgutter'
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	Plug 'junegunn/vim-easy-align'
	Plug 'miyakogi/conoline.vim'
	Plug 'Yggdroot/indentLine'
	Plug 'itchyny/lightline.vim'
	Plug 'junegunn/gv.vim'
	Plug 'mhinz/vim-startify'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'ryanoasis/vim-devicons'
	" Plug 'vim-syntastic/syntastic'
	Plug 'mattn/emmet-vim'
	Plug 'machakann/vim-highlightedyank'
	Plug 'itchyny/vim-gitbranch'
	Plug 'airblade/vim-gitgutter'
	Plug 'whatyouhide/vim-lengthmatters'
	Plug 'jiangmiao/auto-pairs'
	Plug 'Glench/Vim-Jinja2-Syntax'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'lilydjwg/colorizer'
	Plug 'heavenshell/vim-pydocstring'
	Plug 'samoshkin/vim-mergetool'
	Plug 'preservim/tagbar'
	Plug 'svermeulen/vim-yoink'
	Plug 'yuki-yano/fzf-preview.vim', {'branch': 'release/rpc'}
	Plug 'mbbill/undotree'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'svermeulen/vim-yoink'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	Plug '/bkad/CamelCaseMotion'
call plug#end()

" bufferline
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

" Vim Properties
	set relativenumber
	set number
	set tabstop=4
	set shiftwidth=4
	highlight ColorColumn ctermbg=238
	set cc=81
	set autoread
	filetype plugin on

" Key bindings
	" trailing white spaces
	map <F3> :%s/\s\+$//e<CR>
	map <C-_> :Commentary<CR>
	map <C-h> :noh<CR>
	map <C-s> :w<CR>
	map <leader>t :TagbarOpen fjc<CR>
	map Y y$
	" map <leader>v :Vista<CR>
	map <F2> :NERDTreeToggle<CR>
	" map <leader>w :w<CR>
	map <leader>q :q<CR>
	xmap ga <Plug>(EasyAlign)
	" vim  yoink
	nmap <c-n> <plug>(YoinkPostPasteSwapBack)
	nmap <c-p> <plug>(YoinkPostPasteSwapForward)
	nmap p <plug>(YoinkPaste_p)
	nmap P <plug>(YoinkPaste_P)
	" Also replace the default gp with yoink paste so we can toggle paste in this case too
	nmap gp <plug>(YoinkPaste_gp)
	nmap gP <plug>(YoinkPaste_gP)
	" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler "<c-r>%"<CR>
	map <leader>z :Files ~<CR>

" jedi vim
" 	let g:jedi#completions_enabled = 0
" 	let g:jedi#documentation_cmmand = ""

" fzf
	let g:fzf_colors =
	\ { 'fg':      ['fg', 'Normal'],
	  \ 'bg':      ['bg', 'Normal'],
	  \ 'hl':      ['fg', 'Comment'],
	  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
	  \ 'hl+':     ['fg', 'Statement'],
	  \ 'info':    ['fg', 'PreProc'],
	  \ 'border':  ['fg', 'Ignore'],
	  \ 'prompt':  ['fg', 'Conditional'],
	  \ 'pointer': ['fg', 'Exception'],
	  \ 'marker':  ['fg', 'Keyword'],
	  \ 'spinner': ['fg', 'Label'],
	  \ 'header':  ['fg', 'Comment'] }

" MRU
	" let MRU_Auto_Close = 0

" ale
	map <leader>j :ALENext<CR>
	map <leader>k :ALENext<CR>
	let g:ale_fixers = {
				\ '*': ['remove_trailing_lines', 'trim_whitespace'],
				\}

" conoline
	let g:conoline_color_normal_dark = 'guibg=#181818 ctermbg=238'

" indent line
	let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" airline theme
	let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ 'component': {
	  \ 'filename': '%F',
	  \ },
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	  \ },
	  \ 'component_function': {
	  \   'gitbranch': 'fugitive#head'
	  \ },
	  \ }

" lenght matters
	let g:lengthmatters_excluded = ['text']
	call lengthmatters#highlight_link_to('ColorColumn')

" syntastic
	" set statusline+=%#warningmsg#
	" set statusline+=%{SyntasticStatusLineFlag()}
	" set statusline+=%*
	" set statusline+='%F'
	" let g:syntastic_python_checkers = ['pylint']
	" let g:syntastic_check_on_open = 0
	" let g:syntastic_check_on_wq = 1

" tagbar settings
	let g:tagbar_sort = 0
	let g:tagbar_show_tag_linenumbers = 2

" sample settings
	hi Pmenu ctermfg=254 ctermbg=237 cterm=NONE guifg=#e1e1e1 guibg=#383838 gui=NONE
	hi PmenuSel ctermfg=135 ctermbg=239 cterm=NONE guifg=#b26eff guibg=#4e4e4e gui=NONE

" pydocstring settings
	let g:pydocstring_doq_path = '~/.local/bin/doq'
	let g:pydocstring_formatter = 'numpy'

" vim merge tool
	let g:mergetool_layout = 'mr'
	let g:mergetool_prefer_revision = 'local'


" quit jedi-vim with q
	" function! PreviewWindowOpened() abort
	" for nr in range(1, winnr('$'))
	" 		if getwinvar(nr, "&pvw") == 1
	" 			return ":pclose\<CR>"
	" 		endif
	" 	endfor
	" 	return "q"
	" endfun

	" nnoremap <expr> q PreviewWindowOpened()

" quit vim if no more buffers
	" autocmd BufDelete * if len(filter(range(1, bufnr('$')), '! empty(bufname(v:val)) && buflisted(v:val)')) == 1 | quit | endif

" coc
	" plugins
	let g:coc_global_extensions = [
		\'coc-json',
		\'coc-pyright',
		\'coc-tsserver',
		\]
	set encoding=utf-8

	" TextEdit might fail if hidden is not set.
	set hidden

	" Some servers have issues with backup files, see #649.
	set nobackup
	set nowritebackup

	" Give more space for displaying messages.
	" set cmdheight=2

	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300

	" Don't pass messages to |ins-completion-menu|.
	set shortmess+=c

	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	if has("nvim-0.5.0") || has("patch-8.1.1564")
	  " Recently vim can merge signcolumn and number column into one
	  set signcolumn=number
	else
	  set signcolumn=yes
	endif

	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif

	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
								  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	  else
		execute '!' . &keywordprg . " " . expand('<cword>')
	  endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

	" Formatting selected code.
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder.
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Applying codeAction to the selected region.
	" Example: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap keys for applying codeAction to the current buffer.
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Apply AutoFix to problem on the current line.
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Map function and class text objects
	" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
	xmap if <Plug>(coc-funcobj-i)
	omap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap af <Plug>(coc-funcobj-a)
	xmap ic <Plug>(coc-classobj-i)
	omap ic <Plug>(coc-classobj-i)
	xmap ac <Plug>(coc-classobj-a)
	omap ac <Plug>(coc-classobj-a)

	" Remap <C-f> and <C-b> for scroll float windows/popups.
	if has('nvim-0.4.0') || has('patch-8.2.0750')
	  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	endif

	" Add `:Format` command to format current buffer.
	" command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Mappings for CoCList
	" Show all diagnostics.
	nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions.
	nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
	" Show commands.
	nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document.
	nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols.
	nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list.
	nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
