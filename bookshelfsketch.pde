var books = [
    {title: "Enders Game",
     author: "Orson Card",
     cover: color(100, 100, 100),
     stars: 5,
     rec: true
    },
    {title: "The Hobbit",
     author: "JRR Tolkein",
     cover: color(80, 170, 80),
     stars: 4,
     rec: true
    },
    {title: "Seveneves",
     author: "Neil Stephenson",
     cover: color(80, 180, 255),
     stars: 5,
     rec: true
    },
    {title: "Ready Player One",
     author: "Ernest Cline",
     cover: color(180, 170, 80),
     stars: 4,
     rec: false
    },
    {title: "Die Trying",
     author: "Lee Child",
     cover: color(220, 30, 30),
     stars: 3,
     rec: false
    },
    {title: "1984",
     author: "George Orwell",
     cover: color(80, 170, 170),
     stars: 4,
     rec: true
    },
    {title: "I, Robot",
     author: "Isaac Asimov",
     cover: color(20, 130, 130),
     stars: 3,
     rec: false
    },
];

// draw function
var drawBook = function(x, y, bookIndex){
    var book = books[bookIndex];
    noStroke();
    fill(book.cover);
    rect(x+35, y+5, 90, 100);
    fill(0, 0, 0);
    textSize(11);
    text(book.title, x+45, y+10, 70, 100);
    text(book.author, x+45, y+35, 70, 100);
    if (book.rec === true){
        image(getImage("creatures/Winston"), x+67, y+65, 20,20);
    } else {}
    for (var s = 0; s < book.stars; s++) {
        image(getImage("cute/Star"), 35+x + s * 16, y + 75, 20, 30);
    }
};
for (var i = 0; i < books.length; i++){
    var x = (i%3)*110;
    var y = floor(i/3)*130;
    if (i%3 === 0) {
        // draw shelf
        fill(130,88,24);
        rect(0, y+105, width, 10);
    }
    drawBook(x, y, i);
}
