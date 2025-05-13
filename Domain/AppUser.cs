﻿using Microsoft.AspNetCore.Identity;

namespace Domain
{
    public class AppUser : IdentityUser<Int64>
    {
        public string DisplayName { get; set; }
        public string Bio { get; set; }
        public string OrgUniqueCode { get; set; } = "";
    }
}
