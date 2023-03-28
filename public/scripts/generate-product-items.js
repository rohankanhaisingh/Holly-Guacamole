const productsGridContainer = document.querySelector(".products-grid-container")



window.addEventListener("load", function () {

    return;

    for (let i = 0; i < 24; i++) {
        generateProductItem("Zoetzure kip", "https://www.eefkooktzo.nl/wp-content/uploads/2021/01/Zoetzure-kip.jpg", "5,25", "Krokante kip in zoetzure saus, Koe lo kai. Het smaakt naar rijst, want er zit rijst in. Je kunt hier ook varkensvlees bij toevoegen.", "Je kunt een keuze maken uit: bruine rijst, gele rijst, witte rijst, extra saus, extra vlees (kip of varken)");
    }
});