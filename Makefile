src_path = src
target_path = docs

all : clean join copy after_build

clean :
	rm -f  $(target_path)/index.html
	rm -rf $(target_path)/assets
	rm -f  $(target_path)/index.css
	rm -rf $(src_path)/tmp
	mkdir $(src_path)/tmp

join : tophtml projecthtml memberhtml
	# index.html の作成
	cat $(src_path)/pres/head.pre.html    >  $(target_path)/index.html
	cat $(src_path)/tmp/top.pre.html     >> $(target_path)/index.html
	cat $(src_path)/tmp/project.pre.html >> $(target_path)/index.html
	cat $(src_path)/tmp/member.pre.html  >> $(target_path)/index.html
	cat $(src_path)/pres/foot.pre.html    >> $(target_path)/index.html

copy :
	# ファイルの複製
	cp -rf $(src_path)/assets    $(target_path)/assets
	cp -f  $(src_path)/index.css $(target_path)/index.css

tophtml: $(src_path)/markdown/top.md
	pandoc $(src_path)/markdown/top.md -o $(src_path)/tmp/top.pre.html

projecthtml: $(src_path)/markdown/project.md
	pandoc $(src_path)/markdown/project.md -o $(src_path)/tmp/project.pre.html

memberhtml: $(src_path)/markdown/member.md
	pandoc $(src_path)/markdown/member.md -o $(src_path)/tmp/member.pre.html

after_build:
	rm -rf $(src_path)/tmp
