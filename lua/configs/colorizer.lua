
--[[------------------------------------]]--
--     colorizer - colors highlighter     --
--    Author: ChristianChiarulli, elai    --
--           License: GPLv3               --
--[[------------------------------------]]--

-- Load colorizer with a protected call
local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
   return
end

colorizer.setup({ "*" }, {
    RGB      = true;      -- #RGB hex codes
	  RRGGBB   = true;      -- #RRGGBB hex codes
	  RRGGBBAA = true;      -- #RRGGBBAA hex codes
	  rgb_fn   = true;      -- CSS rgb() and rgba() functions
	  hsl_fn   = true;      -- CSS hsl() and hsla() functions
	  names    = false;     -- "Name" codes like Blue
	  css      = false;     -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = false;     -- Enable all CSS *functions*: rgb_fn, hsl_fn
    mode = "background",  -- Set the display mode / Available modes: foreground, background, virtualtext
})
