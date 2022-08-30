variable "spotify_api_key" {
  type        = string
  description = "Set this as the APIKey that the authorization proxy server outputs"
}

variable "artist_1" {
  type = string
  description = "The name of the first artist in playlist"
  # default = "Big Baby Tape"
}

variable "album_1" {
  type = string
  description = "The name of the first artist's album"
  # default = ""
}

variable "artist_2" {
  type = string
  description = "The name of the second artist in playlist"
  # default = "Eminem"
}

variable "album_2" {
  type = string
  description = "The name of the second artist's album"
  # default = ""
}

variable "artist_1_percentage" {
  type = number
  description = "Percentage of tracks of the 1st artist in playlist"
  # default = 50  
}

variable "whole_number_of_tracks" {
  type = number
  description = "The amount of tracks in playlist"
  # default = 10  
}