# レシピ一覧用の配列を準備
recipes = Array.new

# 引数からレシピのデータファイルを取得
recipe_data_file = ARGV[0]

# データファイルからレシピ一覧を作成
File.open(recipe_data_file, "r") do |f|
    while name = f.gets
        recipes.push(name)
    end
end

# レシピを一つずつ出力
recipes.each.with_index(1) do |name, id|
    puts "#{id}: #{name}"
end