require 'rspec'
require './lib/card'
require './lib/deck'
# require './lib/player'

RSpec.configure do |config|
    config.formatter = :documentation
end


RSpec.describe Deck do
    it "has cards" do 
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.cards).to eq([card1,card2,card3])
    end

    it "rank of card in index" do 

        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
       

        cards = [card1, card2, card3]
        deck = Deck.new(cards)

        
        expect(deck.rank_of_card_at(0)).to eq(12)
        expect(deck.rank_of_card_at(2)).to eq(14)

    end

    it "high ranking cards" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
       

        cards = [card1, card2, card3]
        deck = Deck.new(cards)

        expect(deck.high_ranking_cards.all? { |card| card.rank >= 11}).to be true


    end


    it "percent high ranking" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
       

        cards = [card1, card2, card3]
        deck = Deck.new(cards)

        expect(deck.percent_high_ranking).to eq(66.67) 
    end

    it "remove card" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        
       

        cards = [card1, card2, card3]
        deck = Deck.new(cards)

        expect(deck.remove_card).to eq(cards.length)
    end

    it "add card" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        card4 = Card.new(:club, '5', 5)
        
       

        cards = [card1, card2, card3]
        deck = Deck.new(cards)

        
        deck.add_card(card4)

        # expect(deck.add_card(new_card)).to eq(cards.length)
    end




    
        
        
end