local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

return {
	s({ trig = 'qq', regTrig = false, wordTrig = true, snippetType = 'autosnippet' },
		{ t '\\text{', i(1, ''), t '}', i(2, '') }),
	s({ trig = 'mk', regTrig = false, wordTrig = true, snippetType = 'autosnippet' }, fmta('$<>$', { i(1) })),
	s({ trig = 'dm', regTrig = false, wordTrig = true, snippetType = 'autosnippet' },
		fmta(
			[[
		$$
		<>
		$$
		]],
			{ i(1) }
		)
	),

	s({ trig = 'beg', name = '`begin` environment', regTrig = false, wordTrig = true },
		fmta(
			[[
		\begin{<>}
		<>
		\end{<>}
		]],
			{ i(1), i(0), rep(1) }
		)
	),

	s({ trig = 'cdot', regTrig = false, wordTrig = true, snippetType = 'autosnippet' }, { t('\\cdot') }),
	s({ trig = 'sr', regTrig = true, wordTrig = false }, t '^{2}'),
	s({ trig = '_', regTrig = true, wordTrig = false }, { t '_{', i(0, ''), t '}' }),
	s({ trig = 'invs', regTrig = true, wordTrig = false }, { t '^{-1}' }),
	s({ trig = 'map', regTrig = false, wordTrig = true }, { t('\\mapsto') }),

	s({ trig = 'overline', regTrig = false, wordTrig = true },
		fmta('\\overline{ <> }<>', { i(1), i(2) })),

	s({ trig = 'curls', regTrig = false, wordTrig = true, dscr = "adds visible curly brackets" },
		fmta('\\{ <> \\}<>', { i(1), i(2) })),

	s({ trig = 'norm', regTrig = false, wordTrig = true },
		fmta('\\lVert{ <> \\rVert}<>', { i(1), i(2) })),

	s({ trig = 'sp', regTrig = false, wordTrig = true, dscr = "scalar product" },
		fmta('\\langle <> \\rangle<>', { i(1), i(2) })),

	s({ trig = 'all', regTrig = false, wordTrig = true }, { t('\\forall') }),
	s({ trig = 'in', regTrig = false, wordTrig = true }, { t('\\in') }),
	s({ trig = 'ex', regTrig = false, wordTrig = true }, { t('\\exists') }),
	s({ trig = 'rarr', regTrig = false, wordTrig = true, dscr = 'Right arrow' }, { t('\\rightarrow') }),
	s({ trig = 'imp', regTrig = false, wordTrig = true, dscr = 'Implied right arrow' }, { t('\\Rightarrow') }),
	s({ trig = 'iff', regTrig = false, wordTrig = true }, { t('\\iff') }),
	s({ trig = 'and', regTrig = false, wordTrig = true }, { t('\\land') }),
	s({ trig = 'or', regTrig = false, wordTrig = true }, { t('\\lor') }),
	s({ trig = 'end', regTrig = false, wordTrig = true, dscr = { "end of proof sign" } }, { t('\\quad \\square') }),

	s({
			trig = 'lim',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Limita.'
		},
		fmta('\\lim_{<> \\to <>}<>',
			{ i(1, 'n'), i(2, '\\infty'), i(3) })
	),

	s({ trig = '//', regTrig = true, wordTrig = true },
		fmta('\\frac{<>}{<>} <>', { i(1), i(2), i(3) })),

	s({ trig = 'sum', regTrig = false, wordTrig = true }, fmta('\\sum_{<>}^{<>} <>', { i(1), i(2), i(3) })),
	s({ trig = 'fak', regTrig = false, wordTrig = true }, fmta('\\frac{<>}{<>} <>', { i(1), i(2), i(3) })),
}
