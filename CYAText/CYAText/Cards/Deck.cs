using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CYAText.CYAEngine.BaseItems;

namespace CYAText.Cards
{
    class Deck
    {
        private List<BaseCard> deck = new List<BaseCard>();
        private List<BaseCard> discardDeck = new List<BaseCard>();
        private Random rand;


        public Deck(Random rand) {
            this.rand = rand;
            //TODO: Get the deck of cards from Database
        }

        public void Shuffle()
        {
            List<BaseCard> tempDeck = new List<BaseCard>();
            for (int index = 0; index < deck.Count; index++)
            {
                int indexCard = rand.Next(0, deck.Count - 1);
                tempDeck.Add(deck.ElementAt(indexCard));
                deck.RemoveAt(indexCard);
            }
            deck = tempDeck;
        }

        public BaseCard DrawCard()
        {
            BaseCard card;
            if (deck.Count != 0) { 
                card = deck.First();
                deck.RemoveAt(0);
                discardDeck.Add(card);
            }
            else
            {
                deck = discardDeck;
                this.Shuffle();
                return this.DrawCard();
            }
            
            return card;
        }
    }
}
