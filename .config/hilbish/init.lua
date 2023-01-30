-- Default Hilbish config
local lunacolors = require 'lunacolors'
local bait = require 'bait'
local ansikit = require 'ansikit'

local promptua = require 'promptua'

promptua.setTheme 'delta'
promptua.init()

bait.catch('command.exit', function(code)
	doPrompt(code ~= 0)
end)

bait.catch('hilbish.vimMode', function(mode)
	if mode ~= 'insert' then
		ansikit.cursorStyle(ansikit.blockCursor)
	else
		ansikit.cursorStyle(ansikit.lineCursor)
	end
end)

commander.register('ver', function()
	print(hilbish.ver)
end)

commander.register('ev', function()
	local text = ''
	while true do
		local input = hilbish.read('*>')
		if input == nil then break end
		text = text .. '\n' .. input
	end

	local fn, err = load(text)
	if err then
		print(err)
		return 1
	end
	fn()

	return 0
end)

-- aliases

-- short
hilbish.alias ('ls', 'ls --color=auto')
hilbish.alias ('ll', 'ls --color=auto -al')
hilbish.alias ('grep', 'grep --color=auto')
hilbish.alias ('fgrep', 'fgrep --color=auto')
hilbish.alias ('egrep', 'egrep --color=auto')
hilbish.alias ('py', 'python')
hilbish.alias (':q', 'exit')
hilbish.alias ('root', 'sudo -i')
hilbish.alias ('gc', 'git clone')
hilbish.alias ('his', 'history')
hilbish.alias ('tree', 'exa --tree -L 2 -a')
hilbish.alias ('g', 'git')
hilbish.alias ('img', 'feh')
hilbish.alias ('c', 'clear')
hilbish.alias ('psl', 'pls')

-- bin
hilbish.alias ('color', 'bash $HOME/.c.sh')
hilbish.alias ('bird', 'cat $HOME/.bird')
hilbish.alias ('monke', 'cat $HOME/.monke_bild')
hilbish.alias ('gameboy', 'cat $HOME/.gameboy')
hilbish.alias ('pulse', 'python $HOME/.pulse.py')
hilbish.alias ('calc', 'python $HOME/.calc.py')

-- pkgs
hilbish.alias ('m', 'musikcube')
hilbish.alias ('clock', 'tty-clock -c -n')
hilbish.alias ('ht', 'htop')
hilbish.alias ('cm', 'cmatrix')
hilbish.alias ('ascii', 'figlet -f Calvin\\ S')
hilbish.alias ('wood=', 'cbonsai -l')
hilbish.alias ('calendar', 'khal calendar')
hilbish.alias ('duck', 'ddgr')
hilbish.alias ('v', 'nvim')
hilbish.alias ('f', 'ranger')
