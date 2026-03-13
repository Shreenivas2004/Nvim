  return{
    "numToStr/Comment.nvim",
    config = function() require('Comment').setup()
vim.diagnostic.config({
  virtual_text = true,  
  severity_sort = true,
})
 end
  }
