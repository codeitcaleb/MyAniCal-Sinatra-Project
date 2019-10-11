Anime.destroy_all

days = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]

days.each{|day| MyAnimeAPI.get_anime_for(day)}