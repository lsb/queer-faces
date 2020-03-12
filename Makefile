clean:
	git clean -f
localcopy:
	parallel -a urls 'wget --user-agent=TheAgenda -O face-{#}.jpg "{}"'
montage:
	montage -geometry 256x256+0+0 -tile 7x face-*.jpg montage.jpg
