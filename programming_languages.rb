def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_array = []
  languages.collect do |styles, name|
    name.collect do |attributes, value|
      value[:styles] = []
      new_hash[attributes] = value
      new_array << [attributes, styles]
    end
  end
  new_hash
end


# def reformat_languages(languages)
#   new_hash = {}
#   holdarray = []
#   languages.collect do |style, data|
#     data.collect do |language, specs|
#       specs[:style] = [] 
#         new_hash[language] = specs
#         holdarray.push([language, style])
#         specs.collect do |key, value|
#           holdarray.each do |element|
#             if element[0] == language 
#               if !specs[:style].include?(element[1])
#               specs[:style].push(element[1])
#             end 
#           end 
#         end 
#       end 
#     end
#   end 
#   new_hash
# end