using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using MVCApp.Models;

namespace MVCApp.Data
{
    public class MVCAppDbContext : DbContext
    {
        public MVCAppDbContext (DbContextOptions<MVCAppDbContext> options)
            : base(options)
        {
        }

        public DbSet<MVCApp.Models.Product> Product { get; set; } = default!;
    }
}
