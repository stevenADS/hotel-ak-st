using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(hotel_ak_st.Startup))]
namespace hotel_ak_st
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
