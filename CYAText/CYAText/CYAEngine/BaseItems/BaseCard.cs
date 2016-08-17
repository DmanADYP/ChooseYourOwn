using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CYAText.CYAEngine.BaseItems
{
    class BaseCard
    {
        private String name, description;

        public BaseCard(String name, String description)
        {
            this.setName(name);
            this.setDescription(description);
        }

        #region getters/setters
        public String getName()
        {
            return this.name;
        }

        public void setName(String name)
        {
            this.name = name;
        }
        public String getDescription()
        {
            return this.description;
        }

        public void setDescription(String description)
        {
            this.description = description;
        }
        #endregion
    }
}
