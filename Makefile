src_path = src
target_path = target

join :
	# index.html の作成
	cat $(src_path)/pres/head.pre.html    >  $(target_path)/index.html
	cat $(src_path)/pres/top.pre.html     >> $(target_path)/index.html
	cat $(src_path)/pres/project.pre.html >> $(target_path)/index.html
	cat $(src_path)/pres/member.pre.html  >> $(target_path)/index.html
	cat $(src_path)/pres/foot.pre.html    >> $(target_path)/index.html
	# ファイルの複製
	cp -r $(src_path)/assets $(target_path)/assets
	cp $(src_path)/index.css $(target_path)/index.css
