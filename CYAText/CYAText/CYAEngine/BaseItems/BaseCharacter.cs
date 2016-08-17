using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CYAText.CYAEngine.BaseItems
{
    class BaseCharacter
    {
        private String name;
        private int health;
        private int[] stats;

        public BaseCharacter() { }

        public BaseCharacter(String name, int health, int[] stats)
        {
            this.setName(name);
            this.setHealth(health);
            this.setStats(stats);
        }

        #region getters/setters

        public int getStat(int index)
        {
            try
            {
                return this.stats[index];
            }
            catch (IndexOutOfRangeException ex)
            {
                throw new IndexOutOfRangeException("Attempt to access stat that is not in range.");
            }
        }

        public int[] getStats()
        {
            return this.stats;
        }

        public void setStats(int[] stats)
        {
            if (stats.Length == 6)
                this.stats = stats;
            else
                throw new Exception("Given stats length is incorrect. Requires 6 length.");
        }

        public int getHealth()
        {
            return this.health;
        }

        public void setHealth(int health)
        {
            this.health = health;
        }

        public String getName()
        {
            return this.name;
        }

        public void setName(String name)
        {
            this.name = name;
        }

        #endregion
    }
}
