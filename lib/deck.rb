require './lib/card'

class Deck
    attr_reader :cards
    def initialize (cards)
        @cards = cards
        
       
        
    end

    def rank_of_card_at(index)
        
        @cards[index].rank
        
        end


    ##this method will take one argument that represents the index location of a card to be used (typically 0 or 2 more on this later 😉 ) and will return the rank of that card.
        
        

    def high_ranking_cards

        @cards.select { |card| card.rank >= 11 }
            ##this method will return an array of cards in the deck that have a rank of 11 or above (face cards and aces)

        




    end

    def percent_high_ranking()
        

        high = @cards.count {|card| card.rank >= 11}
        

        total = @cards.length

        

        percentage = (high.to_f / total) * 100
        return percentage.round(2)

            ##this method will return the percentage of cards that are high ranking
    end



    def remove_card
    @cards.shift
    @cards.length
    
    end
      

    def add_card(new_card)
    
    
        @cards.push(new_card)
        




    end
 

end



      