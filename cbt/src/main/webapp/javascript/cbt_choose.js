/**
 * 
 */
 
 function maincategorychange(e){
    var licensed_first = ["년도를 선택하세요","2011-10-09","2011-07-31","2011-04-17","2011-02-13","2010-10-03","2010-07-11","2010-03-28","2010-01-31"]
    var licensed_second = ["년도를 선택하세요","2020-08-22","2020-06-06","2019-08-04","2019-04-27","2019-03-03","2018-08-19","2018-04-28","2018-03-04"]
    var licensed_third = ["년도를 선택하세요","2022-04-24","2022-03-05","2021-08-14","2021-05-15","2021-03-07","2020-09-26","2020-08-22","2020-06-06"]
    var target = document.getElementById("sub_category")
    
    if(e.value =="a") var d = licensed_first;
    else if(e.value =="b") var d = licensed_second;
    else if(e.value =="c") var d = licensed_third;

    target.options.length = 0;

    for(x in d){
    var opt = document.createElement("option");
    opt.value =d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt)
    }

}

function startPageGo() {
    location.href = 'cbtstart.html';
     console.log(location.href);
}