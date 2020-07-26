"C Code automatic indent
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab

"Close brackets automatic
inoremap (                 ()<left>
inoremap (<CR>        (<CR>)<Esc>O
inoremap ()                ()

inoremap {                 {}<left>
inoremap {<CR>        {<CR>}<Esc>O
inoremap {}                {}

inoremap [					[]<left>

"Cursor column displayed
set cursorcolumn
set ruler

"Side-by-side spaces highlighted
highlight    DoubleWhiteSpace ctermbg=red guibg=red
match        DoubleWhiteSpace  /  /

"whitespace before line break highlighted
let c_space_errros = 1

"Backup files in folder in .vim
silent !mkdir -p ~/.vim/.backup
set backup
set backupdir=~/.vim/.backup

"Header

autocmd FileWritePost *.c call FileHeading()
autocmd BufWritePost *.c call Update()

function Update()
	let date = strftime("%Y/%m/%d")
	let time = strftime("%H:%M:%S")
	let user = $USER
	let k = 14 - strwidth(user)
	while k > 0
		let user = user . " "
		let k = k - 1
	endwhile
	call  setline(9, "/*   Updated: ".date." ".time." by ".user."########   odam.nl         */")
endfunction

function FileHeading()
	let filename = "/*   ".expand('%:t')
	let i = 50 - strwidth(expand('%:t'))
	while i > 0
		let filename = filename . " "
		let i = i - 1
	endwhile
	if $MAIL
		let mail = $MAIL
	else
		let mail = "<marvin@codam.nl>"
	endif
	let username = "/*   By: ".$USER . " "
	let l = 54 - strwidth(username) - strwidth(mail)
	while l > 0
		let mail = mail . " "
		let l = l - 1
	endwhile
	let date = strftime("%Y/%m/%d")
	let time = strftime("%H:%M:%S")
	let user = $USER
	let k = 14 - strwidth(user)
	while k > 0
		let user = user . " "
		let k = k - 1
	endwhile
	call append(0, "/* ************************************************************************** */")
	call append(1, "/*                                                                            */")
	call append(2, "/*                                                        ::::::::            */")
	call append(3, "".filename." :+:    :+:            */")
	call append(4, "/*                                                     +:+                    */")
	call append(5, "".username."".mail."+#+                     */")
	call append(6, "/*                                                   +#+                      */")
	call append(7, "/*   Created: ".date." ".time." by ".user."#+#    #+#                 */")
	call append(8, "/*   Updated: ".date." ".time." by ".user."########   odam.nl         */")
	call append(9, "/*                                                                            */")
	call append(10, "/* ************************************************************************** */")
	call append(11, "")
endfunction

nnoremap <C-c><C-h> :execute FileHeading()<CR>
