function bg(){
    var a=document.querySelectorAll('.btn1');
    a.forEach(element => {
        element.addEventListener('mouseenter',function(dets){

            element.style.backgroundColor='white';
            element.style.color='black'
        })
    });
    a.forEach(element => {
        element.addEventListener('mouseleave',function(dets){

            element.style.backgroundColor='transparent';
            element.style.color='white'
        })
    });
}
bg();
function show(){
    var b=document.querySelectorAll(".show")

    b.forEach(elem=>{
        elem.addEventListener('mouseenter',function(){
            elem.style.backgroundColor="black"
            elem.style.color='white'
        })
    })
    b.forEach(elem=>{
        elem.addEventListener('mouseleave',function(){
            elem.style.backgroundColor="transparent"
            elem.style.color='black'
        })
    })
}
show();

gsap.from('#nav #logo,#nav #nav-home,#nav-search',{
    y:-100,
    duration:0.8,
    delay:0.3,
    stagger:0.3

})

gsap.from('#page1 h4,#page1 h2,#page1 #btn',{
    scale:0,
    duration:0.8,
    delay:1.2,
    stagger:0.5
})

