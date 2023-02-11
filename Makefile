file=resume

default:
		lualatex $(file)
watch:
	 inotifywait -r -m -e modify *.tex | while read file_path file_event file_name; do echo ${file_path}${file_name} event: ${file_event}; make;    done
