RSpec.describe Car::MyCar do
  let(:nissan) { Car::MyCar.new('Nissan', 2003, 'silver') }
  let(:failure) { 'water pump , oil leak' }

  it 'creates instance of MyCar class' do
    expect(Nissan).to be_instance_of(Car::MyCar)
  end

  it 'has initial car speed set to 0' do
    expect(Nissan.current_speed).to eq(0)
  end

  it 'speeds up the car by 15km/h by default' do
    Nissan.speed_up
    expect(Nisan.current_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'speeds up the car by input value' do
    Nissan.speed_up(20)
    expect(Nissan.current_speed).to eq(20)
  end

  it 'slows down the car by 15km/h by default' do
    Nissan.slow_down
    expect(Nissan.current_speed).to eq(- Car::MyCar::SPEED_OFFSET)
  end

  it 'slows down the car by input value' do
    Nissan.slow_down(20)
    expect(Nissan.current_speed).to eq(-20)
  end

  it "changes the color of the object" do
    Nissan.spray_paint(:blue)
    expect(Nissan.color).to eq(:blue)
  end

  it 'has no defects' do
    expect(Nissan.defects).to be_empty
  end

  it 'adds a defect to list' do
    Nissan.add_defect(failure)
    expect(Nissan.defects).to include(failure)
  end

  it 'lists all the defects' do
    Nissan.add_defect(failure)
    Nissan.add_defect('oil change')
    expect(Nissan.service_info).to eq("Defects to be fixed: #{failure}, oil change")
  end
end
