require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'


RSpec.describe Player do
    it "has a name and deck" do
        deck = Deck.new(@cards)
        player = Player.new('Clarisa',deck)
        
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        
        cards = [card1, card2, card3]
    
        

        expect(player.name).to eq("Clarisa")
        expect(player.deck).to eq(deck)
       

    end

    it "player has lost?" do

    end










end