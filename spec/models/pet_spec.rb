require 'rails_helper'

RSpec.describe Pet, type: :model do
  it 'create a valid pet' do
    pet = create(:pet)
    expect(pet).to be_valid
  end

  context 'Validations' do  
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:birth_date) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:kind) }
  end
end
