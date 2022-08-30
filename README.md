# Spotify Terraform provider example
Example of auto-built playlist in Spotify, where you can set names of two artists, the whole number of tracks and percentage of tracks for every artist.
Made based on [tutorial]('https://learn.hashicorp.com/tutorials/terraform/spotify-playlist).

## How to use?
1. Create Spotify developer app [here]('https://developer.spotify.com/dashboard/login')
Change 'Redirect URI' attribute of created app to **http://localhost:27228/spotify_callback**
3. Set env variable in your terminal
```bash
export SPOTIFY_CLIENT_REDIRECT_URI=http://localhost:27228/spotify_callback
```
4. Make .env file to set env variables to use in docker authorisation server
```bash
touch .env
```
```bash
SPOTIFY_CLIENT_ID=
SPOTIFY_CLIENT_SECRET=
```
5. Run authorization server
```bash
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
```
6. Clone repository
```bash
git clone agriii927/spotify-playlist-in-terraform
```
7. Run 
```bash
terraform init
terraform apply
```
and set your custom variables: names of artists and albums, number of tracks etc.