class Card
    attr_reader :face
    attr_accessor :value, :face_up
    def initialize(value)
        @value = value
        @face = "_"
        @face_up = false
    end

    def val(value)
        @value = value
    end
end