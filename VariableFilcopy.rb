#コマンドライン引数で指定されたディレクトリから、指定されたディレクトリにファイルをコピーするプログラム

#fileutilsをロードする
require "fileutils"

#カレントディレクトリのパスを設定する。
DIR = Dir.pwd

targetDIR = ARGV[0]
resultDIR = ARGV[1]

# 引数が2つ以外のときは使い方を示して処理を終了する
if ARGV.size() != 2 then
    puts "CommandLine Error:"
    puts "Usage: ruby filename targetDirecty resultDirectry !"
else
    #targetディレクトリのファイルを対象とし、ファイルのコピーを実行する。
    Dir.glob("#{targetDIR}/*") do |file|
        #ファイルの名前を取得する。
        filename = File.basename(file)

        #ファイルをresultディレクトリにコピーする
        FileUtils.cp("#{file}", "#{resutlDIR}/#{filename}")
    end
end
