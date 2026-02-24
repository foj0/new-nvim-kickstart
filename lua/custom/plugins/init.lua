-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- NOTE:
-- How I understand this:
-- We can either add more plugins here, and have a long list of plugins with their own options and stuff in this one file.
-- OR
-- We can create a separate "pluginName.lua" file for each new plugin.
-- Doing one file like this is what most seem to do; However, I think making a separate file for each is better.
-- In "/../../lazy-plugins.lua" we import any files that are within the "custom/plugins".
-- So we don't need to have a require call for each.
-- I'm choosing to just import the entire custom/plugins folder in lazy-plugins.lua,
-- so the return here is empty.

return {}
