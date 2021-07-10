# 配列自体はArrayともいう
a = [1,2,3,"apple",[10,20,30]]
# 配列の各要素を取り出す場合は左要素から順に0,1,2,3という数字で取り出せる
a[0] #=1
# 添え字を指定して値を代入すると要素の変更もできる
a[1] = 20 #=[1,20,3,"apple",[10,20,30]]
#無い添え字に代入すると間の値はnilで埋められる
a[6] = 50 #=[1,2,3,"apple",[10,20,30],nil,50]
# <<を使うと配列の最後に追加される
a << 6 #=[1,2,3,"apple",[10,20,30],nil,50,6]
# 特定の位置の要素を消したい場合はdelete_atをつかう
a.delete_at(1) #=2 =[1,3,"apple",[10,20,30],nil,50,6]

# 多重代入
a,b = [1,2] #a=1 b=2
c,d = [10] #c=10 d=nil

# divmodメソッドを使った多重代入の便利な使い方
# divmodは割り算の商とあまりを配列として返すメソッド
14.divmod(3) #=[4,2]
# 戻り値を配列のまま受けとる
quo_rem = 14.divmod(3)
"商=#{quo_rem[0]},余り=#{quo_rem[1]}" #= 商=4,余り=2
#多重代入で別々の変数として受け取る
quotient,remainder = 14.divmod(3)
"商=#{quotient},余り=#{remainder}" #= 商=4,余り=2

# deleteメソッドの使い分け
delete_at # 特定の位置の要素を消すのに使用
delete # 要素そのものを指定して消すのに使用
delete_if # 戻り値が真であれば削除、偽であれば削除せず返す、配列の要素を順番に取り出すことができる

# delete_ifの例(配列から帰趨を削除する)
a = [1,2,3,4,5,6,7]
a.delete_if do |n| # nにaに入っている要素を順に渡している
 n.odd? # odd?は奇数であればture,偶数であればfalseを返す
end
a = [2,4,6]
# ブロックの範囲はdoからendを指す。ブロック内で定義した変数はそのブロック内でしか使えない。ブロック外で定義した変数はブロック内部でも使える
# 偶数のみ値を10倍にしてから加算する例
numbers = [1,2,3,4,5]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n*10 : n #=even?は偶数かどうか判定できるメソッド。その後の式についてはconditionファイル参照。sum_valueはブロック内で初めて出てきた変数で外では使えない
  smu += sum_value
end
# sum = 64

# ブロックを使う配列のメソッド
# map/collectあらかじめ空の配列を用意しなくても新しい配列に返してくれるメソッド
number = [1,2,3,4,5]
new_number = number.map{ |n| n*10 }
new_number #= [10,20,30,40,50]

# select/find_all各要素に対してブロックを評価し、真である要素だけ配列で返すメソッド
number = [1,2,3,4,5]
even_number = number.select { |n| n.even? } #偶数かどうか
even_number #=[2,4]
# rejectメソッドは反対に偽である要素だけ配列で返すメソッド
number = [1,2,3,4,5]
non_multiples_of_three = number.reject { |n| n % 3 == 0}
non_multiples_of_three #=[1,2,4,5]

# find/detectブロックの戻り値が真になった最初の要素を返す
number = [1,2,3,4,5]
even_number = number.find { |n| n.even? }
even_number #=2

#inject/reduceたたみ演算を行うメソッド
number = [1,2,3,4,5]
sum = 0
number.each {|n| sum += n}
sum #=15
# injectメソッドを使うと
number = [1,2,3,4,5]
sum = number.inject(0) {|result, n| result + n } # 初回のみresultには0が入り、その後は戻り値が入る
sum #=15

# &:を使うとブロックがシンプルに ＊ただしブロック内で引数を渡したり、複数の文を実行したり、演算子を使ったり、複雑なものは不可
[1,2,3,4,5].select {|n| n.odd? }
# 上記の式を:& を使うと省略できる
[1,2,3,4,5].select(&:odd?)