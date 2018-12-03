(()=>{
    
    const vm = new Vue({
        el: '#app',
        data: {
            mainmessage : "kids page",
            videodata: [],
            singlemoviedata: [],
            kidsdescription :"",
            showDetails : false
        },
        created : function(){
            this.fetchKidsData(null);
        },
        methods : {
            fetchKidsData(movie) {
                url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    if (movie){
                        console.log(data);
                        this.singlemoviedata =data;
                    } else {
                        console.log(data);
                        this.videodata =data;
                    }
                })
            }
        }
    });
})();