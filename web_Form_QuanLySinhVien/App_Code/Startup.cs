﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_13_06.Startup))]
namespace _13_06
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
