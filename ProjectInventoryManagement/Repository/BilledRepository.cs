using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class BilledRepository : IBilledRepository
    {
        public Billed FindBilledById(int id) =>BilledDAO.FindBilledById(id);
        public List<Billed> GetBilleds() => BilledDAO.GetBilleds();

        public List<Billed> GetOrders()=> BilledDAO.GetOrders();
    }
}
