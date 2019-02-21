# frozen_string_literal: true

class SpotifyController < ApplicationController
  def search
    title = params[:title]
    return @results = RSpotify::Track.search(title) if title
  end
end
