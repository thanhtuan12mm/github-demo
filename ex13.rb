class Car
    def initialize(year, model, color)
        @year = year
        @model = model
        @color = color
        @current_speed = 0
    end

    def speed_up(n)
        @current_speed += n
        puts "You push the gas and accelerate #{n} mph."
    end

    def brake(n)
        if n <= @current_speed
            @current_speed -= n
            puts "You push the brake and decelerate #{n} mph."
        else
            @current_speed = 0
            puts "You push the brake and decelerate #{n} mph."
        end
    end

    def shut_down
        @current_speed = 0
        puts "You stop the car."
    end

    def current_speed
        puts "Your current speed is #{@current_speed}."       
    end

end

lumina = Car.new(1997, "Chevy Lumina", "White")
lumina.speed_up(20)
lumina.speed_up(40)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed