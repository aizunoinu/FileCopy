#targetディレクトリからresultディレクトリにファイルをコピーするプログラム

#fileutilsをロードする
require "fileutils"

#カレントディレクトリのパスを設定する。
DIR = Dir.pwd

#targetディレクトリのファイルを対象とし、ファイルのコピーを実行する。
Dir.glob("#{DIR}/target/*") do |file|
    #ファイルの名前を取得する。
    filename = File.basename(file)

    #ファイルをresultディレクトリにコピーする
    FileUtils.cp("#{file}", "#{DIR}/result/#{filename}")
end
