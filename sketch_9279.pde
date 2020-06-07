var book = [{
        title: "The Giver",
        author: "Lois Lowry",
        stars: 4,
        color: [255, 100, 100]
    },
    {
        title: "Enders Game",
        author: "Orson S. Card",
        stars: 5,
        color: [70,70,70]
    },
    {
        title: "Xenocide",
        author: "Orson S. Card",
        stars: 4,
        color: [70,110,235]
    },
    {
        title: "The Hobbit",
        author: "JRR Tolkein",
        stars: 5,
        color: [70,170,70]
    }
    ];

var books = function(){
  fill(book[i].color[0], book[i].color[1], book[i].color[2]);
  rect(i*130+10, 20+sh*130, 90, 100);
  fill(0, 0, 0);
  textSize(11);
  text(book[i].title, i*130+15, sh*130+29, 70, 100);
  textSize(10);
  text(book[i].author, i*130+15, sh*130+54, 70, 100);
  for (var s=0; s < book[i].stars; s++){
      image(getImage("cute/Star"), 13 + (i * 130) + (s*16), 90+sh*130, 20, 30);
  }
};

// draw shelves
for (var sh = 0; sh < (book.length)/3; sh++){
    fill(173, 117, 33);
    rect(0, 120+sh*130, width, 10);

    // draw the books loop
    for (var i = 0; i < book.length; i++){
        books();
    }
}
