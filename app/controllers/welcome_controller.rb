class WelcomeController < ApplicationController
    def index
        @facility = Facility.first
        @patient = Patient.first
    end
end
