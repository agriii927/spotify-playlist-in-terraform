provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_search_track" "artist_1" {
    limit = var.artist_1_percentage * var.whole_number_of_tracks / 100
    artist = var.artist_1
    album = var.album_1
}

data "spotify_search_track" "artist_2" {
    limit = (100 - var.artist_1_percentage) * var.whole_number_of_tracks / 100
    artist = var.artist_2
    album = var.album_2
#    explicit = false
#    year = 2019
  #  name  = "Early Morning Breeze"
}

resource "spotify_playlist" "playlist" {
  name        = "Terraform Summer Playlist"
  description = "This playlist was created by Terraform"
  public      = true
  tracks = concat(data.spotify_search_track.artist_1.tracks[*].id, data.spotify_search_track.artist_2.tracks[*].id)
}