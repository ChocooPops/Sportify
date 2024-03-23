const closeBtnCom = document.getElementById("closemodalCom");
const modalCom = document.getElementById("modalCom");
const openBtnCom = document.getElementById("openmodalComActu");
let ajoutCom = document.querySelectorAll('#ajoutComActu');

console.log("ajoutCom : commentaire");

closeBtnCom!.addEventListener("click", () => {
    modalCom!.classList.remove("open");
});

openBtnCom!.addEventListener("click", () => {
    console.log("Button clicked");
    modalCom!.classList.add("open");
});



// pour ajoutComer un post
function PostCom(titre, contenu) {
    this.titre = titre;
    this.contenu = contenu;
}


document.addEventListener('DOMContentLoaded', function () {
    const ajoutComBtn = document.getElementById("ajoutComActu");

    ajoutComBtn!.addEventListener('click', function (event) {
        event.preventDefault(); // Empêche le comportement par défaut du formulaire (rechargement de la page)

        let titre: string = (document.getElementById('titre') as HTMLInputElement).value;
        let contenu: string | null = (document.getElementById('contenu') as HTMLTextAreaElement)?.value;

        let post = new PostCom(titre, contenu);
        console.log(post);

       
    });
});
