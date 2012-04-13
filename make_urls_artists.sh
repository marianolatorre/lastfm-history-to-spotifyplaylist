awk -Ft '{print $3}' exported_tracks.txt | sed 's/ /+/g' | sed 's/(.*)//g' | awk '{print "http://ws.spotify.com/search/1/track?q=" $1}'  > exported_tracks.urls
