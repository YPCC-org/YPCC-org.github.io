src_path = src
target_path = docs

all : clean join copy

clean :
	rm -f  $(target_path)/index.html
	rm -rf $(target_path)/assets
	rm -f  $(target_path)/index.css

join :
	# index.html の作成
	cat $(src_path)/pres/head.pre.html    >  $(target_path)/index.html
	cat $(src_path)/pres/top.pre.html     >> $(target_path)/index.html
	cat $(src_path)/pres/project.pre.html >> $(target_path)/index.html
	cat $(src_path)/pres/member.pre.html  >> $(target_path)/index.html
	cat $(src_path)/pres/foot.pre.html    >> $(target_path)/index.html

copy :
	# ファイルの複製
	cp -rf $(src_path)/assets    $(target_path)/assets
	cp -f  $(src_path)/index.css $(target_path)/index.css
