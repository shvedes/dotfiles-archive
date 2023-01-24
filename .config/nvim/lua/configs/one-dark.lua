require('onedark').setup  {
    style = 'dark', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  
    term_colors = true, 
    ending_tildes = false, 
    cmp_itemkind_reverse = false, 

    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'italic'
    },

    lualine = {
        transparent = false, 
    },

    -- Custom highlights 
    colors = {}, 
    highlights = {}, 

}
require('onedark').load()
