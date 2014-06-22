# coding: utf-8

# ファイルを行ごとのデータ配列に格納する
def insert_array_from_line_of_file(file)
    data_array = Array.new

    File.open(file, "r") do |f|
        while line = f.gets
            #line = line.split(' ')
            data_array.push(line)
        end
    end

    return data_array
end

# 引数からレシピのデータファイルと指定されたレシピIDを取得
recipe_data_file = ARGV[0]
recipe_id = ARGV[1]

# レシピ一覧用の配列を準備
recipes = Array.new

# データファイルからレシピデータを抽出する
recipes = insert_array_from_line_of_file(recipe_data_file)

# レシピを一つずつ出力
recipes.each.with_index(1) do |name, id|
    # レシピIDが指定されている場合は
    # 指定されているID以外をスキップする
    if recipe_id && recipe_id.to_i != id then
        next
    end

    puts "#{id}: #{name}"
end

#s = 'オムライス http://cookpad.com/recipe/2653946'
#p s.split
