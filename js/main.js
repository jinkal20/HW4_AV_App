(()=>{
    
    const vm = new Vue({
        el: '#app',
        data: {
            mainmessage : "kids page",
            kidsdata: [],
            singleavappdata: [],
            kidsdescription :"",
            showDetails : false
        },
        created : function(){
            this.fetchKidsData(null);
        },
        methods : {
            fetchKidsData(avapp) {
                url = avapp ? `./includes/index.php?avapp=${avapp}` : './includes/index.php';
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    if (avapp){
                        console.log(data);
                        this.singleavappdata =data;
                    } else {
                        console.log(data);
                        this.kidsdata =data;
                    }
                })
            }
        }
    });
})();