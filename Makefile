file=resume

default:
		lualatex -interaction=nonstopmode -shell-escape $(file)
watch:
	 inotifywait -r -m -e modify resume/*.tex *.tex | while read file_path file_event file_name; do echo ${file_path}${file_name} event: ${file_event}; make;    done
