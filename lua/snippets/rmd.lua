-- vim.cmd('runtime lua/snippets/markdown.lua')

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

return {
	-- [[ BASIC MD ]]

	s({ trig = 'ql', regTrig = false, wordTrig = true, dscr = 'Linebreak' }, { t('<br>') }),
	s({ trig = 'link', regTrig = false, wordTrig = true }, fmta('[<>](<>) <>', { i(1), i(2), i(3) })),
	s({ trig = 'italic', regTrig = false, wordTrig = true }, fmta('*<>*<>', { i(1), i(2) })),
	s({ trig = 'bold', regTrig = false, wordTrig = true }, fmta('**<>**<>', { i(1), i(2) })),
	s({ trig = 'code', regTrig = false, wordTrig = true }, fmta('`<>` <>', { i(1), i(2) })),
	s({ trig = 'cb', regTrig = false, wordTrig = true },
		fmta([[
				 ```
				 <>
				 ```
				 ]],
			{ i(1) }
		)
	),
	s({ trig = 'codeblock', regTrig = false, wordTrig = true },
		fmta([[
				 ```
				 <>
				 ```
				 ]],
			{ i(1) }
		)
	),
	-- ker me treesitter neki jebe ko probam dat code block od katerega language se začne z 'r'
	s({ trig = 'codeblock_rust', regTrig = false, wordTrig = true },
		fmta([[
				 ```rust
				 <>
				 ```
				 ]],
			{ i(1) }
		)
	),
	s({ trig = 'cb_rust', regTrig = false, wordTrig = true },
		fmta([[
				 ```rust
				 <>
				 ```
				 ]],
			{ i(1) }
		)
	),

	-- [[ MATH ]]

	-- [[ ENVIRONMENTS ]]

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

	s({ trig = 'gthr', name = '`gathered` environment', regTrig = false, wordTrig = true },
		fmta(
			[[
		\begin{gathered}
		<>
		\end{gathered}
		]],
			{ i(1) }
		)
	),

	s({ trig = 'aln', name = '`align` environment', regTrig = false, wordTrig = true },
		fmta(
			[[
		\begin{align}
		<>
		\end{align}
		]],
			{ i(1) }
		)
	),

	-- Misc symbols: arrows, sets...
	s({ trig = 'oo', regTrig = false, wordTrig = true }, { t('\\infty') }),
	s({ trig = 'cdot', regTrig = false, wordTrig = true, snippetType = 'autosnippet' }, { t('\\cdot') }),
	s({ trig = 'bb', regTrig = false, wordTrig = true },
		fmta('\\mathbb{<>}<>', { i(1), i(2) })),
	s({ trig = 'sr', regTrig = true, wordTrig = false }, t '^{2}'),
	s({ trig = '_', regTrig = true, wordTrig = false }, { t '_{', i(0, ''), t '}' }),
	s({ trig = 'invs', regTrig = true, wordTrig = false }, { t '^{-1}' }),
	s({ trig = 'wee', regTrig = false, wordTrig = true }, { t('\\veebar') }),

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

	s({ trig = 'expl', regTrig = false, wordTrig = true, dscr = { "space for equation explanation" } },
		fmta('\\quad \\text{(<>)}', { i(1) })),

	s({ trig = 'map', regTrig = false, wordTrig = true }, { t('\\mapsto') }),
	s({ trig = 'cc', regTrig = false, wordTrig = true }, { t('\\subset') }),

	-- Structures: limits, sums...
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
	s({ trig = 'xnn', regTrig = false, wordTrig = true }, { t('(x_n)_{n\\in \\mathbb{N}}') }),

	s({
			trig = 'fun',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Predpis realne funkcije v 1-D prostoru.'
		},
		{ t('', i(0), ': \\mathbb{R} \\rightarrow \\mathbb{R}', i(1), '') }),

	s({
			trig = 'fun2',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Predpis realne funkcije, ki slika iz n-D v 1-D prostor.'
		},
		{ t(i(0, ''), ': \\mathbb{R^', i(1, ''), '} \\rightarrow \\mathbb{R}', i(1)) }),

	-- Sequences
	s({ trig = 'seq', regTrig = false, wordTrig = true, dscr = 'Zaporedje v 2D prostoru z x in y koordinato.' },
		{ t('(x_n, y_n)_n') }),
	s({ trig = 'seqexp', regTrig = false, wordTrig = true, dscr = 'Zaporedje n vrednosti.' },
		fmta('x_{1}, ... , x_{n} <>', { i(1) })),

	-- Metric spaces
	s({
			trig = 'kra',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Krogla v metričnem prostoru s polmerom r in središčem v a.'
		},
		fmta('K_{r}(a)<>', { i(1) })
	),

	s({
			trig = 'krap',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Krogla v metričnem prostoru s poljubnim polmerom in središčem. p kot `poljubno`.'
		},
		fmta('K_{<>}(<>)<>', { i(1, 'polmer'), i(2, 'središče'), i(3) })
	),

	s({
			trig = 'ds',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Razdalja med dvema točkama v metričnem prostoru. [d]i[s]tance.'
		},
		fmta('d(x,y)<>',
			{ i(1) })
	),

	s({
			trig = 'dsa',
			regTrig = false,
			wordTrig = true,
			-- snippetType = 'autosnippet',
			dscr = 'Razdalja med točkama x in a v metričnem prostoru. [d]i[s]tance of x and [a].'
		},
		fmta('d(x, a)<>',
			{ i(1) })
	),

	-- Matrices
	s({ trig = 'mat', regTrig = false, wordTrig = true },
		fmta([[
						\begin{matrix}
						<>
						\end{matrix}
				 ]],
			{ i(1) }
		)
	),

	s({ trig = 'bmat', regTrig = false, wordTrig = true },
		fmta([[
						\begin{bmatrix}
						<>
						\end{bmatrix}
				 ]],
			{ i(1) }
		)
	),

	s({ trig = 'pmat', regTrig = false, wordTrig = true },
		fmta([[
						\begin{pmatrix}
						<>
						\end{pmatrix}
				 ]],
			{ i(1) }
		)
	),

	s({ trig = 'vmat', regTrig = false, wordTrig = true },
		fmta([[
						\begin{vmatrix}
						<>
						\end{vmatrix}
				 ]],
			{ i(1) }
		)
	),

	s({ trig = 'Vmat', regTrig = false, wordTrig = true },
		fmta([[
						\begin{Vmatrix}
						<>
						\end{Vmatrix}
				 ]],
			{ i(1) }
		)
	),
}
