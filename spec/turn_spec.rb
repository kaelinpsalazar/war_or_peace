require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


RSpec.describe Turn do

    it "has a game type" do 
        
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)
        
        
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card3, card4, card6, card7])
        
        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2)
        
        turn = Turn.new(player1, player2)

        expect(turn.type).to eq(:basic)
    end

    
   it "has players" do 

        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)
        
        
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card3, card4, card6, card7])
        
        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2)
        
        turn = Turn.new(player1, player2)

        expect(turn.type).to eq(:basic)

        expect(turn.player1).to eq("Meghan")
        expect(turn.player2).to eq("Aurora")

   end
   # it "has a winner" do

   #     expect(winner).to eq(winner)

   # end
    # it "has a type spoils_of_war" do

    #     expect(turn.spoils_of_war).to eq(spoils_of_war)

    # end


    # it "has an instance of pile_cards" do

    #     expect(turn.pile_cards).to eq (pile_cardws)

    # end











end