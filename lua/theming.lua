--[[
Suggested color names (these are available on most systems):
		Red		LightRed	DarkRed
		Green	LightGreen	DarkGreen	SeaGreen
		Blue	LightBlue	DarkBlue	SlateBlue
		Cyan	LightCyan	DarkCyan
		Magenta	LightMagenta	DarkMagenta
		Yellow	LightYellow	Brown		DarkYellow
		Gray	LightGray	DarkGray
		Black	White
		Orange	Purple		Violet

Colors which define Nvim's default color scheme:
		NvimDarkBlue    NvimLightBlue
		NvimDarkCyan    NvimLightCyan
		NvimDarkGray1   NvimLightGray1
		NvimDarkGray2   NvimLightGray2
		NvimDarkGray3   NvimLightGray3
		NvimDarkGray4   NvimLightGray4
		NvimDarkGreen   NvimLightGreen
		NvimDarkMagenta NvimLightMagenta
		NvimDarkRed     NvimLightRed
		NvimDarkYellow  NvimLightYellow

You can also specify a color by its RGB (red, green, blue) values. The format is "#rrggbb", where
	"rr"	is the Red value
	"gg"	is the Green value
	"bb"	is the Blue value
All values are hexadecimal, range from "00" to "ff".  Examples: :highlight Comment guifg=#11f0c3 guibg=#ff00ff

These are the builtin highlighting groups.  Note that the highlighting depends
on the value of 'background'.  You can see the current settings with the ":highlight" command.

Comment		any comment
Constant	any constant
String		a string constant: "this is a string"
Character	a character constant: 'c', '\n'
Number		a number constant: 234, 0xff
Boolean		a boolean constant: TRUE, false
Float		a floating point constant: 2.3e10
Identifier	any variable name
Function	function name (also: methods for classes)
Statement	any statement
Conditional	if, then, else, endif, switch, etc.
Repeat		for, do, while, etc.
Label		case, default, etc.
Operator	"sizeof", "+", "*", etc.
Keyword		any other keyword
Exception	try, catch, throw
PreProc		generic Preprocessor
Include		preprocessor #include
Define		preprocessor #define
Macro		same as Define
PreCondit	preprocessor #if, #else, #endif, etc.
Type		int, long, char, etc.
StorageClass	static, register, volatile, etc.
Structure	struct, union, enum, etc.
Typedef		a typedef
Special		any special symbol
SpecialChar	special character in a constant
Tag		you can use CTRL-] on this
Delimiter	character that needs attention
SpecialComment	special things inside a comment
Debug		debugging statements
Underlined	text that stands out, HTML links
Ignore		left blank, hidden  |hl-Ignore|
Error		any erroneous construct
Todo		anything that needs extra attention; mostly the keywords TODO FIXME and XXX
Added		added line in a diff
Changed		changed line in a diff
Removed		removed line in a diff
ColorColumn	Used for the columns set with 'colorcolumn'.
Conceal		Placeholder characters substituted for concealed text (see 'conceallevel').
CurSearch	Current match for the last search pattern (see 'hlsearch').
Cursor		Character under the cursor.
lCursor		Character under the cursor when |language-mapping| is used (see 'guicursor').
CursorIM	Like Cursor, but used when in IME mode. *CursorIM*
CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
CursorLine	Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
Directory	Directory names (and other special names in listings).
DiffAdd		Diff mode: Added line. |diff.txt|
DiffChange	Diff mode: Changed line. |diff.txt|
DiffDelete	Diff mode: Deleted line. |diff.txt|
DiffText	Diff mode: Changed text within a changed line. |diff.txt|
EndOfBuffer	Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
TermCursor	Cursor in a focused terminal.
ErrorMsg	Error messages on the command line.
WinSeparator	Separators between window splits.
Folded		Line used for closed folds.
FoldColumn	'foldcolumn'
SignColumn	Column where |signs| are displayed.
IncSearch	'incsearch' highlighting; also used for the text replaced with ":s///c".
Substitute	|:substitute| replacement text highlighting.
LineNr		Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
LineNrAbove	Line number for when the 'relativenumber' option is set, above the cursor line.
LineNrBelow	Line number for when the 'relativenumber' option is set, below the cursor line.
CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
MatchParen	Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
ModeMsg		'showmode' message (e.g., "-- INSERT --").
MsgArea		Area for messages and command-line, see also 'cmdheight'.
MsgSeparator	Separator for scrolled messages |msgsep|.
MoreMsg		|more-prompt|
NonText		'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
Normal		Normal text.
NormalFloat	Normal text in floating windows.
FloatBorder	Border of floating windows.
FloatTitle	Title of floating windows.
FloatFooter	Footer of floating windows.
NormalNC	Normal text in non-current windows.
Pmenu		Popup menu: Normal item.
PmenuSel	Popup menu: Selected item. Combined with |hl-Pmenu|.
PmenuKind	Popup menu: Normal item "kind".
PmenuKindSel	Popup menu: Selected item "kind".
PmenuExtra	Popup menu: Normal item "extra text".
PmenuExtraSel	Popup menu: Selected item "extra text".
PmenuSbar	Popup menu: Scrollbar.
PmenuThumb	Popup menu: Thumb of the scrollbar.
PmenuMatch	Popup menu: Matched text in normal item. Combined with |hl-Pmenu|.
PmenuMatchSel	Popup menu: Matched text in selected item. Combined with |hl-PmenuMatch| and |hl-PmenuSel|.
ComplMatchIns	Matched text of the currently inserted completion.
Question	|hit-enter| prompt and yes/no questions.
QuickFixLine	Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
Search		Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
SnippetTabstop	Tabstops in snippets. |vim.snippet|
SpecialKey	Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
SpellBad	Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
SpellCap	Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
SpellLocal	Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
StatusLine	Status line of current window.
StatusLineNC	Status lines of not-current windows.
StatusLineTerm	Status line of |terminal| window.
StatusLineTermNC Status line of non-current |terminal| windows.
TabLine		Tab pages line, not active tab page label.
TabLineFill	Tab pages line, where there are no labels.
TabLineSel	Tab pages line, active tab page label.
Title		Titles for output from ":set all", ":autocmd" etc.
Visual		Visual mode selection.
VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
WarningMsg	Warning messages.
Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
WildMenu	Current match in 'wildmenu' completion.
WinBar		Window bar of current window.
WinBarNC	Window bar of not-current windows.
--]]

-- Enables cursorline
vim.opt.cursorline = true

-- Sets custom tabline
local tabline      = {
	' %M',
	' %t',
}
-- vim.o.tabline      = table.concat(tabline, '')

vim.api.nvim_create_user_command("DefaultDark", function()
	vim.o.background = "dark"
	vim.cmd.colorscheme('default')
	local normal_bg = 'NvimDarkGray3'
	vim.api.nvim_set_hl(0, "Directory", { bg = 'none', fg = 'NvimLightYellow' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = 'NvimDarkGray2', fg = 'NvimLightBlue' })
	vim.api.nvim_set_hl(0, "ModeMsg", { bg = 'none', fg = 'NvimLightYellow' })
	vim.api.nvim_set_hl(0, "Comment", { fg = 'gray', bold = false })
	vim.api.nvim_set_hl(0, "Normal", { bg = normal_bg })
	vim.api.nvim_set_hl(0, "ZenBg", { bg = normal_bg })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = 'NvimDarkGray2' })
	vim.api.nvim_set_hl(0, "Special", { fg = 'NvimLightGray2' })
	vim.api.nvim_set_hl(0, "Function", { fg = 'NvimLightBlue' })
	vim.api.nvim_set_hl(0, "Statement", { fg = 'NvimLightGray2', bold = false })
end, {})

vim.api.nvim_create_user_command("DefaultLight", function()
	vim.o.background = "light"
	vim.cmd.colorscheme('default')
	vim.api.nvim_set_hl(0, "StatusLine", { fg = 'black', bg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "ModeMsg", { bg = 'none', fg = 'NvimLightYellow' })
	vim.api.nvim_set_hl(0, "Comment", { fg = 'gray', bold = false })
	vim.api.nvim_set_hl(0, "Normal", { bg = 'white' })
	vim.api.nvim_set_hl(0, "ZenBg", { bg = 'white' })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = 'NvimDarkGray1', bg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = 'NvimDarkGreen', bg = 'NvimLightGray2' })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = 'NvimDarkCyan' })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = 'DarkCyan' })
end, {})

vim.api.nvim_create_user_command("QuietDark", function()
	vim.o.background = "dark"
	vim.cmd.colorscheme('quiet')

	vim.api.nvim_set_hl(0, "Normal", { bg = '#000704' })
	vim.api.nvim_set_hl(0, "ZenBg", { link = "Normal" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = 'black' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = 'NvimDarkGray2', fg = 'white' })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = 'black', fg = 'white' })
	vim.api.nvim_set_hl(0, "TabLineSel", { bg = 'NvimDarkGray2', fg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "LineNr", { bg = 'black' })
	vim.api.nvim_set_hl(0, "Comment", { fg = 'gray', bold = false })
	vim.api.nvim_set_hl(0, "Visual", { bg = '#002504' })
	vim.api.nvim_set_hl(0, "Function", { fg = 'NvimLightGray2' })
	vim.api.nvim_set_hl(0, "Identifier", { fg = 'NvimLightGray3' })
	vim.api.nvim_set_hl(0, "Special", { fg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = 'gray', fg = 'NvimDarkGray1' })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = 'white', bg = 'NvimDarkGray4' })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = 'NvimDarkGray1' })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = 'NvimDarkGray3' })
end, {})

vim.api.nvim_create_user_command("QuietLight", function()
	vim.o.background = "light"
	vim.cmd.colorscheme('quiet')
	vim.api.nvim_set_hl(0, "Normal", { fg = 'black', bg = 'white' })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = 'NvimLightGray1' })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = 'NvimLightGray2' })
	vim.api.nvim_set_hl(0, "TabLineSel", { bg = 'NvimLightGray3', fg = 'black' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = 'NvimLightGray2', fg = 'black' })
	vim.api.nvim_set_hl(0, "Comment", { fg = 'gray', bold = false })
	vim.api.nvim_set_hl(0, "Visual", { bg = 'NvimLightYellow' })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NvimLightGray2", fg = "NvimLightGray2" })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = 'NvimLightGray3' })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = 'SeaGreen', bg = 'NvimLightGray2' })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = 'NvimDarkGreen' })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = 'green' })
	vim.api.nvim_set_hl(0, "ZenBg", { bg = 'white' })
end, {})

vim.api.nvim_create_user_command("ForestDweller", function()
	vim.cmd.colorscheme("retrobox")
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "#242424" })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#242424" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#242424" })
end, {})

vim.api.nvim_create_user_command("SunDweller", function()
	vim.cmd.colorscheme("retrobox")
	vim.opt.background = "light"
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "#e5d4b1" })
end, {})

vim.api.nvim_create_user_command("Habafax", function()
	vim.cmd.colorscheme("habamax")
	vim.opt.background = "dark"
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkGray3" })
	vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "NvimDarkGray2" })
end, {})

vim.api.nvim_create_user_command("BreakCore", function()
	vim.cmd.colorscheme("elflord")
	vim.api.nvim_set_hl(0, "Normal", { bg = 'black' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "NvimDarkMagenta" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "NvimDarkGray1" })
	vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NvimDarkMagenta" })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NvimDarkGray1" })
	vim.api.nvim_set_hl(0, "Comment", { fg = "#53669e" })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NvimDarkGray1" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "NvimDarkGray1", fg = "NvimDarkCyan" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NvimDarkGray1" })
end, {})

vim.api.nvim_create_user_command("Invis", function()
	vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
	vim.api.nvim_set_hl(0, "Float", { bg = 'none' })
	vim.api.nvim_set_hl(0, "LineNr", { bg = 'none' })
	vim.api.nvim_set_hl(0, "ZenBg", { bg = 'none' })
end, {})

-- vim.api.nvim_command('QuietLight')
-- vim.api.nvim_command('QuietDark')
-- vim.api.nvim_command('DefaultLight')
-- vim.api.nvim_command('DefaultDark')
-- vim.api.nvim_command('BreakCore')
-- vim.api.nvim_command('ForestDweller')
-- vim.api.nvim_command('SunDweller')
vim.api.nvim_command('Habafax')
-- vim.cmd.colorscheme("monokai-pro-ristretto")
-- vim.cmd.colorscheme("habamax")

vim.g.everforest_background = "medium" -- hard, medium, soft
vim.g.everforest_enable_italics = 0
vim.g.everforest_ui_contrast = "soft"
vim.g.everforest_spell_foreground = "colored"
vim.g.everforest_float_style = "dim"
-- vim.opt.background = "light"

-- vim.cmd.colorscheme("everforest")

-- vim.api.nvim_command('Invis')
