
console.log("Hello!");


// Set Current Year
const yearEL = document.querySelector(".year");
const currentYear = new Date().getFullYear();
yearEL.textContent = currentYear;

// Make mobile navigation work
const btnNavEL = document.querySelector(".btn-mobile-nav");
const bodyEL = document.querySelector(".body");

btnNavEL.addEventListener('click', function () {
    bodyEL.classList.toggle("nav-open");
})

//////////////////////////////////////////////////////////////
// Smooth scrolling animation
const allLinks = document.querySelectorAll('a:link');

allLinks.forEach(function (link) {
    link.addEventListener('click', function (e) {

    });
});

//////////////////////////////////////////////////////////////
// Sticky Navigation

const headerEl = document.querySelector(".header");

const obs = new IntersectionObserver(function (entries) {
    const ent = entries[0];
    console.log(ent);

    if (ent.isIntersecting === false) {
        document.body.classList.add("sticky");
    }
    //if (ent.isIntersecting === true) {
    //    document.body.classList.remove("sticky");
    //}
    
        
},
{
    //inside of the viewport
    root: null,
    threshold: 0, //0 means as soon as the header section moves out of the viewport completely 
       // rootMargin: "-80px",
});
obs.observe(headerEl);


//////////////////////////////////////////////////////////////
// Fixing flexbox gap property missing in some safari versions

function checkFlexGap() {
    var flex = document.createElement("div");
    flex.style.display = "flex";
    flex.style.flexDirection = "column";
    flex.style.rowGap = "1px";

    flex.appendChild(document.createElement("div"));
    flex.appendChild(document.createElement("div"));

    document.body.appendChild(flex);
    var isSupported = flex.scrollHeight === 1;
    flex.parentNode.removeChild(flex);
    console.log(isSupported);

    if (!isSupported) document.body.classList.add("no-flexbox-gap");
}
checkFlexGap();

