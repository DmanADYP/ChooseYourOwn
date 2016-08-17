using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CYAText.CYAEngine.BaseItems;

namespace CYAText.CYAEngine.Characters
{
    class Player : BaseCharacter
    {
        private List<BaseCard> cardsInHand;
        
        public List<BaseCard> getCardsInHand()
        {
            return this.cardsInHand;
        }

        public void setCardsInHand(List<BaseCard> cardsInHand)
        {
            this.cardsInHand = cardsInHand;
        }
    }
}
