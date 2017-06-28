using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting.extensions
{
    public static class ListViewExtensions
    {

        public static List<DataKey> GetSelectedDataKeys(this ListView control, string checkBoxId)
        {
            return control.Items.Where(x => IsChecked(x, checkBoxId))
               .Select(x => control.DataKeys[x.DisplayIndex])
               .ToList();
        }
        private static bool IsChecked(ListViewDataItem item, string checkBoxId)
        {
            var control = item.FindControl(checkBoxId) as CheckBox;
            if (control == null)
            {
                return false;
            }
            return control.Checked;
        }

    }
}
