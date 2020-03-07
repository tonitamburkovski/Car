module Car
  class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year, :defects
    SPEED_OFFSET = 15

    def initialize(year, color, model)
      @year = year
      @color = color
      @model = model
      @current_speed = 0
      @defects = []
    end

    def speed_up(inc = SPEED_OFFSET)
      @current_speed += inc
    end

    def slow_down(dec = SPEED_OFFSET)
      @current_speed -= dec
    end

    def spray_paint(paint)
      @color = paint
    end

    def add_defect(defect)
      @defects.push(defect)
    end

    def service_info
      defects = @defects.join(', ') 
      "Defects to be fixed: #{defects}"
    end
  end
end
