"设置鼠标可以选择文本
set mouse=a
"设置字体显示
set guifont=Liberation\ Mono\ for\ Powerline\ Regular\ 10
"设置右键复制粘贴用系统粘贴板
set guioptions+=a
"关闭左右侧滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"关闭菜单栏
set guioptions-=m

"设置窗口初始位置及大小
"该选项会因屏幕分辨率的大小而不同，应由.gvimrc.local文件设定，其设定方法示例如下：
"if exists("g:gvimrc_executed") 
"    set columns=130 lines=44 
"    winpos 858 380
"    autocmd GUIEnter * winpos 858 380 "应对窗口打开后winpos没有生效的情况
"endif
"
"注意到spf13项目中的.vimrc在执行最后调用了.gvimrc.local，然而此时并不是调用该文件的最佳时机，
"通过'help gvimrc'可知：vimrc执行之后GUI才开始执行，首先第一步是“复位终端选项到其GUI的缺省值”，
"然后开始执行gvimrc。因此，gvimrc.local对GUI的设置都会被复位。
"spf13的.vimrc不应source .gvimrc.local，最好由.gvimrc来source .gvimrc.local

" Use local gvimrc if available and gui is running {
    let g:gvimrc_executed = 1
    if has('gui_running')
        if filereadable(expand("~/.gvimrc.local"))
            source ~/.gvimrc.local
        endif
    endif
" }

