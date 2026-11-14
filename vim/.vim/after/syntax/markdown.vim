syntax region Normal start="\\\@<!\$"   end="\$"   skip="\\\$" contains=@tex keepend
syntax region Normal start="\\\@<!\$\$" end="\$\$" skip="\\\$" contains=@tex keepend
syntax region Type   start="{%"         end="%}"                             keepend

hi! link markdownLinkText Normal
