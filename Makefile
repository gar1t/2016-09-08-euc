PORT = 8080

gen:
	rm -f presentation/index.html && lpad-gen

clean:
	rm -rf presentation/*

serve:
	cd presentation && python -m SimpleHTTPServer $(PORT)

pub:
	scp fireside.html ga.rre.tt:fireside.html
