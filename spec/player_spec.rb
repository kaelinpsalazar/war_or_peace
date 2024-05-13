require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'


RSpec.describe Player do
    it "has a name and deck" do
        deck = Deck.new
        player = Player.new('Clarisa',deck).
        

        expect(player.name).to eq('Clarisa')
        expect(player.deck).to eq(deck)

    end












end