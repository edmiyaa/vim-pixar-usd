func! Usda2Usdc()
    let tempfile = tempname() . '.usda'
    call writefile(getline(1, '$'), tempfile)
    silent execute '!usdcat -o ' . expand('%:p') . ' ' . tempfile
endf

func! Usdc2Usda()
    silent execute '%!usdcat ' . expand('%:p')
endf

func! UsdSearchAssetPaths()
    let @/ = '@\zs.*\ze@'
    execute "normal /\<CR>"
endf

if getline(1) =~ '\v^PXR-USDC'
    call Usdc2Usda()
    cabbrev <buffer> w call Usda2Usdc()
endif

nnoremap <leader>ua :call UsdSearchAssetPaths()<CR>

