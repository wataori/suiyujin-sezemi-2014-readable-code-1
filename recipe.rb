# 引数からレシピのデータファイルを取得
recipe_data_file = ARGV[0]

# データファイルの内容を出力
File.open(recipe_data_file, "r") do |f|
    puts f.gets
end