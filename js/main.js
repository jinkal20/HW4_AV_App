
(() => {
    const HomePageComponent = { 
        template: `
        <h2>This is Main home page</h2>
        `
    }
    
    const UserComponent = {
        template: `
            <h2>This is Single User Page</h2>
        `
    }
    const UsersComponent = {
        template: ` 
        <h2>This is Users Page</h2>
    `
    }
    const ErrorPageComponent = {
        template: "<h2>This is Error page</h2>"
    }

    const routes =[
        { path: '/', name: 'home', component:HomePageComponent},
        { path: '/user', name: 'user', component:UserComponent},
        { path: '/users', name: 'users', component:UsersComponent},
        { path: '/*', name: 'error', component:ErrorPageComponent},
    ]
    const router = new VueRouter({
        routes
    });
    //Vue instance
    const vn = new Vue({
        el: "#app",
        data:{
            testmessage: "sup"
        },
        methods:{
            calledOnParent(){
                console.log("this method is from vue");
            }
        },
        created: function(){
            console.log("this is vue created");
        },
        components:{
            'homepagecomponent' : HomePageComponent,
            'userComponent' :UserComponent,
            'usersComponent' :UsersComponent,
            'errorpagecomponent' : ErrorPageComponent
        },
        
        router
    })
})();