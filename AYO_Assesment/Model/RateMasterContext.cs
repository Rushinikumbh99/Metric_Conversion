using Microsoft.EntityFrameworkCore;

namespace Conversion.Model
{
    public class RateMasterContext :DbContext
    {
        public RateMasterContext(DbContextOptions<RateMasterContext> options) : base(options)   
        {

        }

        public DbSet<RateMaster> RateMaster { get; set; }  
    }
}
