terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  # Configuration options
  api_key = var.spotify_api_key
}

#data "spotify_search_track" "by_artist" {
  #artists = ["Dolly Parton"]
  #  album = "Jolene"
  #  name  = "Early Morning Breeze"
#}

resource "spotify_playlist" "playlist" {
  name        = "Terraform Summer Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
   # data.spotify_search_track.by_artist.tracks[0].id,
   # data.spotify_search_track.by_artist.tracks[1].id,
    #data.spotify_search_track.by_artist.tracks[2].id,
  ]
}
