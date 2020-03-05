RSpec.describe Car::MyCar do
    it "creatse instance of MyCar lass" do
        nissan = Car::MyCar.new('Nissan', 2003, 'silver')
        expect(nissan).to be_instance_of(Car::MyCar)
    end
    it "The starting car speed is 0" do
        nissan = Car::MyCar.new('Nissan', 2003, 'silver')
        expect(nissan.car_speed).to eq(0)
    end
    it "It speeds up" do
    	nissan = Car::MyCar.new("Nissan", 2003, "silver")
    	expect(nissan.speed_up).to be > 0
    end
end
