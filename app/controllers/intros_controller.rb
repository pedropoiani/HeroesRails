class IntroController < ApplicationController

    def index
        @intro = Intro.All
    end
end