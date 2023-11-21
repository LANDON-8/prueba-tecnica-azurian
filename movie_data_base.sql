CREATE SCHEMA `movies`;
USE movies;

CREATE TABLE catalog (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(60),
	director VARCHAR(60),
	genre VARCHAR(60),
	year YEAR,
	duration TIME,
	description VARCHAR(500)
);

INSERT INTO catalog (title, director, genre, year, duration, description)
VALUES
	("Oppenheimer", "Christopher Nolan", "History", 2023, '030100', "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II."),
	("Napoleón", "Ridley Scott", "History", 2023, '023800', "A personal look at the French military leader’s origins and swift, ruthless climb to emperor, viewed through the prism of Napoleon’s addictive, volatile relationship with his wife and one true love, Josephine."),
	("Grow Ups", "Dennis Dugan", "Comedy", 2010, '014200', "After their high school basketball coach passes away, five good friends and former teammates reunite for a Fourth of July holiday weekend."),
	("Interstellar", "Christopher Nolan", "Science Fiction", 2014, '024900', "The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage."),
	("The Godfather", "Francis Ford Coppola", "Crime", 1972, '025500', "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge."),
	("Parasite", "Bong Joon-ho", "Thriller", 2019, '021300', "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident."),
	("The Dark Knight", "Christopher Nolan", "Action", 2008, '023200', "Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker."),
	("The Green Mile", "Frank Darabont", "Fantasy", 1999, '030900', "A supernatural tale set on death row in a Southern prison, where gentle giant John Coffey possesses the mysterious power to heal people's ailments. When the cell block's head guard, Paul Edgecomb, recognizes Coffey's miraculous gift, he tries desperately to help stave off the condemned man's execution."),
	("The Lord of the Rings: The Return of the King", "Peter Jackson", "Fantasy", 2003, '032100', "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm."),
	("Life Is Beautiful", "Roberto Benigni", "Drama", 1997, '015600', "A touching story of an Italian book seller of Jewish ancestry who lives in his own little fairy tale. His creative and happy life would come to an abrupt halt when his entire family is deported to a concentration camp during World War II. While locked up he tries to convince his son that the whole thing is just a game."),
	("The Pianist", "Roman Polanski", "Drama", 2002, '023000', "The true story of pianist Władysław Szpilman's experiences in Warsaw during the Nazi occupation. When the Jews of the city find themselves forced into a ghetto, Szpilman finds work playing in a café; and when his family is deported in 1942, he stays behind, works for a while as a laborer, and eventually goes into hiding in the ruins of the war-torn city."),
	("Back to the Future", "Robert Zemeckis", "Comedy", 1985, '015600', "Eighties teenager Marty McFly is accidentally sent back in time to 1955, inadvertently disrupting his parents' first meeting and attracting his mother's romantic interest. Marty must repair the damage to history by rekindling his parents' romance and - with the help of his eccentric inventor friend Doc Brown - return to 1985."),
	("Spider-Man: Into the Spider-Verse ", "Rodney Rothman", "Science Fiction", 2018, '015700', "Struggling to find his place in the world while juggling school and family, Brooklyn teenager Miles Morales is unexpectedly bitten by a radioactive spider and develops unfathomable powers just like the one and only Spider-Man."),
	("The Exorcist", "William Friedkin", "Horror", 1973, '020200', "12-year-old Regan MacNeil begins to adapt an explicit new personality as strange events befall the local area of Georgetown. Her mother becomes torn between science and superstition in a desperate bid to save her daughter, and ultimately turns to her last hope: Father Damien Karras, a troubled priest who is struggling with his own faith."),
	("Nosferatu", "F. W. Murnau", "Horror", 1922, '013400', "The mysterious Count Orlok summons Thomas Hutter to his remote Transylvanian castle in the mountains. The eerie Orlok seeks to buy a house near Hutter and his wife, Ellen. After Orlok reveals his vampire nature, Hutter struggles to escape the castle, knowing that Ellen is in grave danger"),
	("Bohemian Rhapsody", "Bryan Singer", "Music", 2018, '021500', "Singer Freddie Mercury, guitarist Brian May, drummer Roger Taylor and bass guitarist John Deacon take the music world by storm when they form the rock 'n' roll band Queen in 1970. Hit songs become instant classics. When Mercury's increasingly wild lifestyle starts to spiral out of control, Queen soon faces its greatest challenge yet – finding a way to keep the band together amid the success and excess.")
;