set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'less'
set t_Co=256

let s:bg_a = [ '#ebdbb2', '223'  ]
let s:bg_b = [ '#d5c4a1', '253'  ]
let s:fg_a = [ '#3c3836', '237'  ]
let s:fg_b = [ '#7c6f64', '243'  ]
let s:fg_x = [ '#076678', '24'   ]
let s:fg_y = [ '#8f3f71', '96'   ]
let s:none = [ 'NONE'   , 'NONE' ]

function s:hl(group, fg, bg, attr='NONE')
    let guifg   = a:fg[0]
    let guibg   = a:bg[0]
    let ctermfg = a:fg[1]
    let ctermbg = a:bg[1]

    exec 'hi ' . a:group
            \ . ' guifg='   . guifg   . ' guibg='   . guibg   . ' gui='   . a:attr
            \ . ' ctermfg=' . ctermfg . ' ctermbg=' . ctermbg . ' cterm=' . a:attr
endfunction

call s:hl('Normal'          , s:fg_a, s:none)
call s:hl('Visual'          , s:bg_a, s:fg_a)
call s:hl('VisualNOS'       , s:bg_a, s:fg_a)

call s:hl('Cursor'          , s:bg_a, s:fg_a)
call s:hl('lCursor'         , s:bg_a, s:fg_a)
call s:hl('CursorIM'        , s:bg_a, s:fg_a)

call s:hl('LineNr'          , s:fg_b, s:none)
call s:hl('LineNrAbove'     , s:fg_b, s:none)
call s:hl('LineNrBelow'     , s:fg_b, s:none)
call s:hl('CursorLine'      , s:none, s:bg_b)
call s:hl('CursorColumn'    , s:none, s:bg_b)
call s:hl('CursorLineNr'    , s:fg_b, s:none, 'bold')
call s:hl('CursorLineFold'  , s:fg_x, s:none)
call s:hl('CursorLineSign'  , s:fg_y, s:none)
call s:hl('ColorColumn'     , s:none, s:bg_b)
call s:hl('FoldColumn'      , s:fg_b, s:none)
call s:hl('SignColumn'      , s:fg_x, s:none)
call s:hl('QuickFixLine'    , s:none, s:bg_b)

call s:hl('StatusLine'      , s:fg_a, s:none, 'reverse,bold')
call s:hl('StatusLineNC'    , s:fg_a, s:none, 'reverse')
call s:hl('StatusLineTerm'  , s:fg_a, s:none, 'reverse,bold')
call s:hl('StatusLineTermNC', s:fg_a, s:none, 'reverse')

call s:hl('TabLine'         , s:fg_a, s:none)
call s:hl('TabLineFill'     , s:none, s:none)
call s:hl('TabLineSel'      , s:bg_a, s:fg_a)
call s:hl('TabPanel'        , s:fg_a, s:none)
call s:hl('TabPanelFill'    , s:none, s:none)
call s:hl('TabPanelSel'     , s:bg_a, s:fg_a)

call s:hl('TitleBar'        , s:bg_a, s:fg_a)
call s:hl('TitleBarNC'      , s:bg_a, s:fg_a)

call s:hl('VertSplit'       , s:fg_a, s:none)

call s:hl('Pmenu'           , s:fg_a, s:bg_b)
call s:hl('PmenuSel'        , s:bg_a, s:fg_a)
call s:hl('PmenuKind'       , s:fg_x, s:bg_b)
call s:hl('PmenuKindSel'    , s:fg_x, s:fg_a)
call s:hl('PmenuExtra'      , s:fg_y, s:none)
call s:hl('PmenuExtraSel'   , s:fg_y, s:fg_a)
call s:hl('PmenuSbar'       , s:none, s:bg_b)
call s:hl('PmenuThumb'      , s:none, s:fg_b)
call s:hl('PmenuMatch'      , s:fg_a, s:none, 'bold')
call s:hl('PmenuMatchSel'   , s:bg_a, s:fg_a, 'bold')
call s:hl('ComplMatchIns'   , s:fg_b, s:none)
call s:hl('PreInsert'       , s:fg_b, s:none)
call s:hl('WildMenu'        , s:bg_a, s:fg_y, 'bold')

call s:hl('ModeMsg'         , s:fg_a, s:none)
call s:hl('MoreMsg'         , s:fg_x, s:none)
call s:hl('Question'        , s:fg_x, s:none)
call s:hl('WarningMsg'      , s:fg_y, s:none)
call s:hl('ErrorMsg'        , s:fg_y, s:none)

call s:hl('IncSearch'       , s:bg_a, s:fg_x)
call s:hl('Search'          , s:bg_a, s:fg_x)
call s:hl('CurSearch'       , s:bg_a, s:fg_y)
call s:hl('MatchParen'      , s:none, s:bg_b, 'bold')

call s:hl('NonText'         , s:fg_b, s:none)
call s:hl('Conceal'         , s:fg_a, s:none)
call s:hl('Directory'       , s:fg_y, s:none)
call s:hl('SpecialKey'      , s:fg_x, s:none)
call s:hl('Terminal'        , s:fg_a, s:none)
call s:hl('Title'           , s:fg_a, s:none, 'bold')
call s:hl('Folded'          , s:fg_b, s:none)
call s:hl('EndOfBuffer'     , s:fg_b, s:none)

call s:hl('SpellBad'        , s:none, s:none, 'underline')
call s:hl('SpellCap'        , s:none, s:none, 'underline')
call s:hl('SpellLocal'      , s:none, s:none, 'underline')
call s:hl('SpellRare'       , s:none, s:none, 'underline')

call s:hl('DiffChange'      , s:none, s:bg_a)
call s:hl('DiffAdd'         , s:none, s:bg_a)
call s:hl('DiffDelete'      , s:fg_y, s:bg_a)
call s:hl('DiffText'        , s:none, s:bg_b)
call s:hl('DiffTextAdd'     , s:none, s:bg_b)

call s:hl('Added'           , s:none, s:bg_b)
call s:hl('Changed'         , s:none, s:bg_b)
call s:hl('Removed'         , s:none, s:bg_b)

call s:hl('Comment'         , s:fg_b, s:none)
call s:hl('Constant'        , s:fg_x, s:none)
call s:hl('String'          , s:fg_x, s:none)
call s:hl('Character'       , s:fg_x, s:none)
call s:hl('Number'          , s:fg_x, s:none)
call s:hl('Boolean'         , s:fg_x, s:none)
call s:hl('Float'           , s:fg_x, s:none)

call s:hl('Identifier'      , s:fg_a, s:none)
call s:hl('Function'        , s:fg_a, s:none)
call s:hl('Statement'       , s:fg_a, s:none, 'bold')
call s:hl('Conditional'     , s:fg_a, s:none, 'bold')
call s:hl('Repeat'          , s:fg_a, s:none, 'bold')
call s:hl('Label'           , s:fg_a, s:none, 'bold')
call s:hl('Keyword'         , s:fg_a, s:none, 'bold')
call s:hl('Exception'       , s:fg_a, s:none, 'bold')
call s:hl('Operator'        , s:fg_a, s:none)

call s:hl('PreProc'         , s:fg_a, s:none)
call s:hl('Include'         , s:fg_a, s:none, 'bold')
call s:hl('Define'          , s:fg_a, s:none, 'bold')
call s:hl('Macro'           , s:fg_a, s:none, 'bold')
call s:hl('PreCondit'       , s:fg_a, s:none, 'bold')

call s:hl('Type'            , s:fg_y, s:none)
call s:hl('Typedef'         , s:fg_a, s:none)
call s:hl('StorageClass'    , s:fg_a, s:none, 'bold')
call s:hl('Structure'       , s:fg_a, s:none, 'bold')

call s:hl('Special'         , s:fg_b, s:none)
call s:hl('SpecialChar'     , s:fg_x, s:none)
call s:hl('Tag'             , s:fg_b, s:none)
call s:hl('Delimiter'       , s:fg_a, s:none)
call s:hl('SpecialComment'  , s:fg_y, s:none, 'bold')
call s:hl('Debug'           , s:fg_y, s:none)

call s:hl('Underlined'      , s:fg_a, s:none, 'underline')
call s:hl('Bold'            , s:fg_a, s:none, 'bold')
call s:hl('Italic'          , s:fg_a, s:none, 'italic')
call s:hl('BoldItalic'      , s:fg_a, s:none, 'bold,italic')

call s:hl('Ignore'          , s:none, s:none)
call s:hl('Error'           , s:fg_a, s:none)
call s:hl('Todo'            , s:fg_b, s:none, 'bold')
