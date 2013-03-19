" Nice tabs with only filename
if !exists("*MyTabLine")
  if exists("+showtabline")
    function MyTabLine()
      let s = ''
      let t = tabpagenr()
      let i = 1
      while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
          let file = '<unsaved>'
        endif
        let s .= ' ' . file . ' '
        let s .= '%* '
        let i = i + 1
      endwhile
      let s .= '%T%#TabLineFill#%='
      return s
    endfunction
    set showtabline=1
    set tabline=%!MyTabLine()
  endif
end
