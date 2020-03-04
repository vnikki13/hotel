require_relative 'test_helper'

describe 'Room class' do 
  describe 'Room instantiation' do
    before do 
      @hotel = Hotel::HotelController.new
      
      (1..20).each do |room_num|
        room = Hotel::Room.new(room_num)
        @hotel.add_room(room)
      end
    end

    it 'makes an instance of room for the hotel' do
      expect(@hotel.rooms[0]).must_be_kind_of Hotel::Room
    end

    it 'makes several rooms for hotel' do
      expect(@hotel.rooms).must_be_kind_of Array
      expect(@hotel.rooms.length).must_equal 20
    end
  end
end