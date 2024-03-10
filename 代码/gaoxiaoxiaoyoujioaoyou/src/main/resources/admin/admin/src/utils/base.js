const base = {
    get() {
        return {
            url : "http://localhost:8080/gaoxiaoxiaoyoujioaoyou/",
            name: "gaoxiaoxiaoyoujioaoyou",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/gaoxiaoxiaoyoujioaoyou/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "高校校园交友微信小程序"
        } 
    }
}
export default base
