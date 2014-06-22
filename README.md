#Ruby

##実行手順
recipe.rbをレシピデータ（recipe-data.txt）を引数として実行

    ruby recipe.rb recipe-data.txt

コンソールへレシピデータ（recipe-data.txt）に書かれているレシピ名がID付きで出力されることを確認

>出力例

    1. オムライス
    2. 親子丼
    3. 杏仁豆腐

引数へレシピIDを指定すると指定したレシピのみ出力されることを確認

    ruby recipe.rb recipe-data.txt 2

>出力例

    2. 親子丼