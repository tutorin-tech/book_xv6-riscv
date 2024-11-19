function replace_pdf_extension_with_svg(elem)
  if elem["t"] == "Image" then
    local src = elem["src"]
    if string.match(src, "%.pdf$") then
      elem["src"] = string.gsub(src, "%.pdf$", ".svg")
    end
  end
  return elem
end

return {
  {Meta = replace_pdf_extension_with_svg},
  {Image = replace_pdf_extension_with_svg}
}
