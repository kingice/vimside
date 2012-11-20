" ============================================================================
" browse_source_roots.vim
"
" File:          browse_source_roots.vim
" Summary:       Vimside Browse Source Roots
" Author:        Richard Emberson <richard.n.embersonATgmailDOTcom>
" Last Modified: 2012
"
" ============================================================================
" Intro: {{{1
" ============================================================================

let s:LOG = function("vimside#log#log")
let s:ERROR = function("vimside#log#error")


function!  vimside#command#browse_source_roots#Run()
  let [found, forms_use] = g:vimside.GetOption('vimside-forms-use')
  let sources = g:vimside.project.info['source_roots']
  if found
    if forms_use
      call vimside#forms#sourcebrowser#Run(sources)
    else
      call vimside#plugin#sourcebrowser#Run(sources)
    endif
  else
    call s:ERROR("Option not found: "'vimside-forms-use'")
  endif
endfunction
