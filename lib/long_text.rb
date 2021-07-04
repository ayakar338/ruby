# upcaseとはローマ字をすべて大文字にするメソッド
# 長い文章をしまえる(<<任意の文字)
b = <<TEXT.upcase
hello,
good-bye.
TEXT
puts b
# 最期の識別子をインデントさせることができる(つけずにインデントすると使えなくなる)
def a
  <<-TE.upcase
hello,
good-bye
  TE
end
puts a
# 出力時内部文字列のインデントが出力時無効に
c = <<~TXT.upcase
 hello,
 good-bye.
TXT
puts c
# prependとは渡された文字列を先頭に配置するメソッド
a = "Ruby"
a.prepend(<<TETE)
Java
PHP
TETE
puts a


