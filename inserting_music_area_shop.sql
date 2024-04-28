-- жанры
insert into genre(name)
	values
		('инди-рок'),
		('альтернативный рок'),
		('электроника'),
		('электророк'),
		('спейс-рок'),
		('синти-поп'),
		('электроник-рок'),
		('нью-вейв'),
		('дарк-вейв'),
		('постпанк'),
		('постпанк-ривайвл'),
		('арт-рок'),
		('дэнс-панк'),
		('психоделический рок'),
		('гаражный рок'),
		('прогрессивный рок'),
		('симфонический рок'),
		('хард-рок'),
		('арт-рок'),
		('экспериментальный рок'),
		('брит-поп'),
		('арт-поп'),
		('гранж'),
		('дэнс-рок'),
		('альтернативный дэнс'),
		('пост-гранж'),
		('постпанк'),
		('рок'),
		('неопсиходелия');
	
insert into popularity ("name")
	values
		('неизвестен'),
		('непопулярен'),
		('популярен'),
		('широко известен');

-- исполнители
insert into singer(name)
	values
		('Kasabian'),
		('Depeche Mode'),
		('Nothing But Thieves'),
		('Franz Ferdinand'),
		('Arctic Monkeys'),
		('Muse'),
		('Radiohead'),
		('Blur'),
		('Placebo'),
		('Oasis');

-- альбомы
insert into album(name, release_year)
	values
		--Kasabian
		('Kasabian', 2004),
		('Empire', 2006),
		('West Ryder Pauper Lunatic Asylum', 2009),
		('Velociraptor!', 2011),
		('48:13', 2014),
		('For Crying Out Loud', 2017),
		('The Alchemist’s Euphoria', 2022),
		
		--Depeche Mode
		('Speak & Spell', 1981),
		('A Broken Frame', 1982),
		('Construction Time Again', 1983),
		('Some Great Reward', 1984),
		('Black Celebration', 1986),
		('Music for the Masses', 1987),
		('Violator', 1990),
		('Songs of Faith and Devotion', 1993),
		('Ultra', 1997),
		('Exciter', 2001),
		('Playing the Angel', 2005),
		('Sounds of the Universe', 2009),
		('Delta Machine', 2013),
		('Spirit', 2017),
		('Memento Mori', 2023),
		
		--Nothing But Thieves
		('Nothing But Thieves', 2015),
		
		--Franz Ferdinand,
		('Franz Ferdinand', 2004),
		('You Could Have It So Much Better', 2005),
		('Tonight: Franz Ferdinand', 2009),
		('Blood: Franz Ferdinand', 2009),
		('Right Thoughts Right Words Right Action', 2013),
		('Always Ascending', 2018),
		('Hits to the Head', 2022),
		
		--Arctic Monkeys
		('Whatever People Say I Am, That’s What I’m Not', 2006),
		('Favourite Worst Nightmare', 2007),
		('Humbug', 2009),
		('Suck It and See', 2011),
		('AM', 2013),
		('Tranquility Base Hotel & Casino', 2018),
		('The Car', 2022),
		
		--Muse
		('Showbiz', 1999),
		('Origin of Symmetry', 2001),
		('Absolution', 2003),
		('Black Holes and Revelations', 2006),
		('The Resistance', 2009),
		('The 2nd Law', 2012),
		('Drones', 2015),
		('Simulation Theory', 2018),
		('Will of the People', 2022),
		
		--Radiohead
		('Pablo Honey', 1993),
		('The Bends', 1995),
		('OK Computer', 1997),
		('Kid A', 2000),
		('Amnesiac', 2001),
		('Hail to the Thief', 2003),
		('In Rainbows', 2007),
		('The King of Limbs', 2011),
		('A Moon Shaped Pool', 2016),
		
		--Blur
		('Leisure', 1991),
		('Modern Life is Rubbish', 1993),
		('Parklife', 1994),
		('The Great Escape', 1995),
		('Blur', 1997),
		('13', 1999),
		('Think Tank', 2003),
		('The Magic Whip', 2015),
		('The Ballad of Darren', 2023),
		
		--Placebo
		('Placebo', 1996),
		('Without You I’m Nothing', 1998),
		('Black Market Music', 2000),
		('Sleeping with Ghosts', 2003),
		('Meds', 2006),
		('Battle for the Sun', 2009),
		('Loud Like Love', 2013),
		('Never Let Me Go', 2022),
		
		--Oasis
		('Definitely Maybe', 1994),
		('(What’s the Story) Morning Glory?', 1995),
		('Be Here Now', 1997),
		('Standing on the Shoulder of Giants', 2000),
		('Heathen Chemistry', 2002),
		('Don’t Believe the Truth', 2005),
		('Dig Out Your Soul', 2008);

	
-- сборники	
insert into songbook(name, release_year)
	values
		('People Are People', 1984),
		('The Singles 81→85', 1985),
		('Catching Up with Depeche Mode', 1985),
		('Greatest Hits', 1987),
		('The Singles 86>98', 1998),
		('Remixes 81–04', 2004),
		('The Best Of, Volume 1', 2004),
		('Remixes 2: 81–11', 2011),
		('The Masterplan', 1998),
		('Stop the Clocks', 2006),
		('Time Flies... 1994–2009', 2010);

--альбом-исполнитель
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Kasabian'and a."name" in (
												'Kasabian',
												'Empire',
												'West Ryder Pauper Lunatic Asylum',
												'Velociraptor!',
												'48:13',
												'For Crying Out Loud',
												'The Alchemist’s Euphoria'
												);


insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Depeche Mode' and a."name" in (
													'Speak & Spell', 
													'A Broken Frame',
													'Construction Time Again',
													'Some Great Reward',
													'Black Celebration', 
													'Music for the Masses',
													'Violator',
													'Songs of Faith and Devotion', 
													'Ultra', 
													'Exciter', 
													'Playing the Angel',
													'Sounds of the Universe',
													'Delta Machine',
													'Spirit',
													'Memento Mori'
													);

insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Nothing But Thieves' and a."name" in (
															'Nothing But Thieves', 
															'Broken Machine',   
															'Moral Panic',        
															'Dead Club City'
															);
															
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Franz Ferdinand' and a."name" in (
														'Franz Ferdinand',                  
														'You Could Have It So Much Better',     
														'Tonight: Franz Ferdinand',                
														'Blood: Franz Ferdinand',                  
														'Right Thoughts Right Words Right Action', 
														'Always Ascending',                      
														'Hits to the Head'
														);
															
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Arctic Monkeys' and a."name" in (
														'Whatever People Say I Am, That’s What I’m Not', 
														'Favourite Worst Nightmare',                
														'Humbug',                                        
														'Suck It and See',                            
														'AM',                                            
														'Tranquility Base Hotel & Casino',             
														'The Car'                                  
														);
						
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Muse' and a."name" in (
											'Showbiz',                    
											'Origin of Symmetry',           
											'Absolution',                  
											'Black Holes and Revelations', 
											'The Resistance',             
											'The 2nd Law',                 
											'Drones',                     
											'Simulation Theory',           
											'Will of the People'          
											);

insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Radiohead' and a."name" in (
												'Pablo Honey',       
												'The Bends',          
												'OK Computer',        
												'Kid A',          
												'Amnesiac',           
												'Hail to the Thief', 
												'In Rainbows',       
												'The King of Limbs', 
												'A Moon Shaped Pool'
												);
										
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Blur' and a."name" in (
											'Leisure',              
											'Modern Life is Rubbish', 
											'Parklife',               
											'The Great Escape',   
											'Blur',                
											'13',                    
											'Think Tank',         
											'The Magic Whip',      
											'The Ballad of Darren'
											);
										
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Placebo' and a."name" in (
												'Placebo',               
												'Without You I’m Nothing', 
												'Black Market Music',    
												'Sleeping with Ghosts', 
												'Meds',                   
												'Battle for the Sun',    
												'Loud Like Love',      
												'Never Let Me Go'
												);
										
insert into albumsinger (album_id, singer_id)
select a.id, s.id from album a, singer s 
	where s."name" = 'Oasis' and a."name" in (
											'Definitely Maybe',               
											'(What’s the Story) Morning Glory?', 
											'Be Here Now',                      
											'Standing on the Shoulder of Giants', 
											'Heathen Chemistry',          
											'Don’t Believe the Truth',     
											'Dig Out Your Soul'
											);
										
--жанр-исполнитель
insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Kasabian' and g."name" in (
																			'инди-рок',
																			'альтернативный рок',
																			'электроника',
																			'электророк',
																			'спейс-рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Depeche Mode' and g."name" in (
																				'синти-поп',
																				'электроник-рок',
																				'нью-вейв',
																				'дарк-вейв',
																				'альтернативный рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Nothing But Thieves' and g."name" in (
																						'альтернативный рок',
																						'инди-рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Franz Ferdinand' and g."name" in (
																					'инди-рок',
																					'постпанк',
																					'постпанк-ривайвл',
																					'арт-рок',
																					'дэнс-панк',
																					'альтернативный рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Arctic Monkeys' and g."name" in (
																					'инди-рок',
																					'психоделический рок',
																					'постпанк-ривайвл',
																					'гаражный рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Muse' and g."name" in (
																		'альтернативный рок',
																		'спейс-рок',
																		'прогрессивный рок',
																		'симфонический рок',
																		'хард-рок',
																		'арт-рок',
																		'электроник-рок'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Radiohead' and g."name" in (
																			'арт-рок',
																			'альтернативный рок',
																			'электроника',
																			'экспериментальный рок',
																			'прогрессивный рок',
																			'брит-поп',
																			'арт-поп',
																			'электроник-рок',
																			'гранж'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Blur' and g."name" in (
																		'брит-поп',
																		'инди-рок',
																		'дэнс-рок',
																		'альтернативный рок',
																		'альтернативный дэнс'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Placebo' and g."name" in (
																			'альтернативный рок',
																			'пост-гранж',
																			'инди-рок',
																			'постпанк',
																			'электроник-рок',
																			'брит-поп'
);

insert into genresinger (genre_id, singer_id, popularity_id)
select g.id, s.id, p.id  from genre g, singer s, popularity p 
	where p."name" = 'неизвестен' and s."name" = 'Oasis' and g."name" in (
																		'рок',
																		'брит-поп',
																		'неопсиходелия'
);

------------------------------------------------------------------------------------------------------------------------------------------
-- 															Kasabian
------------------------------------------------------------------------------------------------------------------------------------------
--('Kasabian', 2004)
insert into track (album_id, "name", duration)
	select a.id, 'Club Foot',  180+34 from album a
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Processed Beats',  180+08 from album a            
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Reason Is Treason',  240+35 from album a          
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'I.D.',  240+47 from album a                       
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Orange',  0+46 from album a                       
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'L.S.F. (Lost Souls Forever)',  180+17 from album a
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Running Battle',  240+15 from album a             
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Test Transmission',  180+55 from album a          
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Pinch Roller',  60+13 from album a                
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Cutt Off',  240+38 from album a                   
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Butcher Blues',  240+28 from album a              
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'Ovary Stripe',  180+50 from album a               
		where a."name" = 'Kasabian';
insert into track (album_id, "name", duration)
	select a.id, 'U Boat',  600+51 from album a                     
		where a."name" = 'Kasabian';

--('Empire', 2006

insert into track (album_id, "name", duration)
	select a.id, 'Empire',  180+53 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Shoot the Runner',  180+27 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Last Trip (In Flight)',  120+53 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Me Plus One',  120+28 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Sun Rise Light Flies',  240+08 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Apnoea',  60+48 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'By My Side',  240+14 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Stuntman',  300+19 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'Seek & Destroy',  120+15 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'British Legion',  180+19 from album a
		where a."name" = 'Empire';
insert into track (album_id, "name", duration)
	select a.id, 'The Doberman',  300+34 from album a
		where a."name" = 'Empire';

--('West Ryder Pauper Lunatic Asylum', 2009)

insert into track (album_id, "name", duration)
	select a.id, 'Underdog',	240+37 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Where Did All the Love Go?',	240+17 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Swarfiga',	120+18 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Fast Fuse',	240+10 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Take Aim',	300+23 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Thick as Thieves',	180+06 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'West Ryder Silver Bullet',	300+15 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Vlad the Impaler',	240+44 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Ladies and Gentlemen (Roll the Dice)',	180+33 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Secret Alphabets', 	300+07 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Fire',	240+13 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';
insert into track (album_id, "name", duration)
	select a.id, 'Happiness',	300+16 from album a
		where a."name" = 'West Ryder Pauper Lunatic Asylum';

--('Velociraptor!', 2011)

insert into track (album_id, "name", duration)
	select a.id, 'Let’s Roll Like We Used To',	240+47 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Days Are Forgotten',	300+21 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Goodbye Kiss',	240+04 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'La Fee Verte',	300+47 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Velociraptor',	120+51 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Acid Turkish Bath (Shelter from the Storm)',	360+01 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'I Hear Voices',	180+58 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Re-wired',	240+44 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Man of Simple Pleasures',	180+51 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Switchblade Smiles',	240+13 from album a
		where a."name" = 'Velociraptor!';
insert into track (album_id, "name", duration)
	select a.id, 'Neon Noon',	300+20 from album a
		where a."name" = 'Velociraptor!';

--('48:13', 2014)

insert into track (album_id, "name", duration)
	select a.id, 'Shiva',	60+07 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Bumblebeee',	240+01 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Stevie',	240+45 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Mortis',	0+48 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Doomsday',	180+40 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Treat',	360+53 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Glass',	240+48 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Explodes',	240+18 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Levitation',	60+19 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Clouds',	240+45 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Eez-eh',	180+00 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'Bow',		240+27 from album a
		where a."name" = '48:13';
insert into track (album_id, "name", duration)
	select a.id, 'S.P.S',	240+22 from album a
		where a."name" = '48:13';

--('For Crying Out Loud', 2017)

insert into track (album_id, "name", duration)
	select a.id, 'Ill Ray (The King)',	180+39 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'You’re In Love With a Psycho',	180+35 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Twentyfourseven',	180+01 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Good Fight',	180+50 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Wasted',	240+07 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Comeback Kid',	240+20 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'The Party Never Ends',	180+51 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Are You Looking for Action?',	480+22 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'All Through the Night',	180+30 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Sixteen Blocks',	240+20 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Bless This Acid House',	180+45 from album a
		where a."name" = 'For Crying Out Loud';
insert into track (album_id, "name", duration)
	select a.id, 'Put Your Life On It',	240+36 from album a
		where a."name" = 'For Crying Out Loud';


--('The Alchemist’s Euphoria', 2022)

insert into track (album_id, "name", duration)
	select a.id, 'Alchemist',	120+39 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Scriptvre',	180+49 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Rocket Fuel',	180+02 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Strictly Old Skool',	180+07 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Alygatyr',	180+23 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Space',	0+48 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'The Wall',	180+29 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'T.U.E (The Ultraview Effect)', 300+45 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Stargazr',	240+56 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Chemicals',	180+31 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Sea',	0+33 from album a
		where a."name" = 'The Alchemist’s Euphoria';
insert into track (album_id, "name", duration)
	select a.id, 'Letting Go',	180+03 from album a
		where a."name" = 'The Alchemist’s Euphoria';

---------------------------------------------------------------------------------------------------------------------------------------------
--																Depeche Mode                                                                
---------------------------------------------------------------------------------------------------------------------------------------------
--('Speak & Spell', 1981)
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'New Life',	 	180+43 from album a                            
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Sometimes Wish I Was Dead',	 	120+16 from album a            
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Puppets',	 	180+55 from album a                                    
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Boys Say Go!',	 	180+03 from album a                            
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Nodisco',	 	240+11 from album a                                    
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'What’s Your Name?',	 	120+41 from album a                    
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Photographic',	 	240+44 from album a                            
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Tora! Tora! Tora!',		240+34 from album a                    
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Big Muff',		240+20 from album a                            
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Any Second Now (Voices)',	 	120+35 from album a                    
		where a."name" = 'Speak & Spell';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Just Can’t Get Enough',	 	180+41 from album a                    
		where a."name" = 'Speak & Spell';
                                                                          
--('A Broken Frame', 1982)
                                                                                                   
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Leave in Silence',	240+51 from album a                            
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'My Secret Garden',	240+46 from album a                            
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Monument',	180+15 from album a                                    
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Nothing to Fear',	240+18 from album a                                    
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'See You',	240+34 from album a                                            
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Satellite',	240+44 from album a                                    
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Meaning of Love',	180+06 from album a                            
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'A Photograph of You',	180+04 from album a                            
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Shouldn’t Have Done That',	180+12 from album a                    
		where a."name" = 'A Broken Frame';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Sun & the Rainfall',	300+02 from album a                            
		where a."name" = 'A Broken Frame';
                                                                          
--('Construction Time Again', 1983)
                                                                                                       
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Love, in Itself',	 	240+29 from album a                            
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'More Than a Party',	 	240+45 from album a                    
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Pipeline',	 	300+54 from album a                            
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Everything Counts',	 	240+19 from album a                    
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Two Minute Warning',		240+13 from album a                    
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Shame',	 	180+51 from album a                                    
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Landscape Is Changing',	240+49 from album a                    
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Told You So',	 	240+26 from album a                            
		where a."name" = 'Construction Time Again';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'And Then...',	 	300+39 from album a                            
		where a."name" = 'Construction Time Again';
                                                                          
--('Some Great Reward', 1984)                          
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Something to Do',	 	180+45 from album a                            
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lie to Me',	 	300+04 from album a                            
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'People Are People',	 	180+52 from album a                    
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'It Doesn’t Matter',	 	240+45 from album a                    
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Stories of Old',	 	180+12 from album a                            
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Somebody',	 	240+26 from album a                            
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Master and Servant',	 	240+13 from album a                    
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'If You Want',		240+40 from album a                            
		where a."name" = 'Some Great Reward';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Blasphemous Rumours',	 	360+21 from album a                    
		where a."name" = 'Some Great Reward';
                                                                          
--('Black Celebration', 1986)                            
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Black Celebration',	240+55 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Fly on the Windscreen  Final',	300+18 from album a                    
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'A Question of Lust',	240+20 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Sometimes',	60+53 from album a                                     
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'It Doesn’t Matter Two',	120+50 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'A Question of Time',	240+10 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Stripped',	240+16 from album a                                    
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Here Is the House',	240+15 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'World Full of Nothing',	120+50 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Dressed in Black',	120+32 from album a                            
		where a."name" = 'Black Celebration';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'New Dress',	180+42 from album a                                    
		where a."name" = 'Black Celebration';
                                                                          
--('Music for the Masses', 1987)
                    
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Never Let Me Down Again',	240+47 from album a                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Things You Said',	240+02 from album a                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Strangelove',	240+56 from album a                                    
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Sacred',	240+47 from album a                                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Little 15',	240+18 from album a                                    
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Behind the Wheel',	300+18 from album a                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Want You Now',	180+44 from album a                                    
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'To Have and to Hold',	120+51 from album a                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Nothing',	240+18 from album a                                            
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Pimpf',	240+18  from album a                                           
		where a."name" = 'Music for the Masses';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Interlude #1  Mission Impossible', 	0+42 from album a              
		where a."name" = 'Music for the Masses';
                                                                          
--('Violator', 1990)                           
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'World in My Eyes',	240+27 from album a                            
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Sweetest Perfection',	240+44 from album a                            
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Personal Jesus',	240+56 from album a                                    
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Halo',	240+30 from album a                                            
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Waiting for the Night',	360+07 from album a                            
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Enjoy the Silence', 	360+13 from album a                            
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Policy of Truth',	240+55 from album a                                    
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Blue Dress', 	300+38 from album a                                    
		where a."name" = 'Violator';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Clean',	300+33 from album a                                            
		where a."name" = 'Violator';
                                                                          
--('Songs of Faith and Devotion', 1993)                   
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Feel You',	240+35 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Walking in My Shoes',	300+35 from album a                            
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Condemnation',	180+20 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Mercy in You',	240+17 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Judas',	300+14 from album a                                            
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'In Your Room',	360+26 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Get Right with Me', 	180+52 from album a                            
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Rush',	240+37 from album a                                            
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'One Caress',	180+32 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Higher Love',	300+56 from album a                                    
		where a."name" = 'Songs of Faith and Devotion';
                                                                          
--('Ultra', 1997)                        
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Barrel of a Gun',  300+35 from album a                                   
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Love Thieves',  360+34 from album a                                  
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Home',  300+42 from album a                                              
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'It’s No Good',  300+58 from album a                                      
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Uselink',  120+21 from album a                                           
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Useless',  300+12 from album a                                           
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Sister of Night',  360+04 from album a                                   
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Jazz Thieves',  120+54 from album a                                      
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Freestate',  360+44 from album a                                         
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Bottom Line',  240+26 from album a                                   
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Insight',  300+03 from album a                                           
		where a."name" = 'Ultra';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Junior Painkiller',  120+11 from album a                                 
		where a."name" = 'Ultra';
                                                                          
--('Exciter', 2001)
                             
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Dream On',	240+20 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Shine',	300+32 from album a                                            
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Sweetest Condition',	180+42 from album a                            
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'When the Body Speaks',	360+01 from album a                            
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Dead of Night',	240+50 from album a                            
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lovetheme',	120+02 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Freelove',	360+10 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Comatose',	180+24 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Feel Loved',	240+20 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Breathe',	300+17 from album a                                            
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Easy Tiger',	120+05 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Am You',	300+10 from album a                                    
		where a."name" = 'Exciter';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Goodnight Lovers',	180+48 from album a                            
		where a."name" = 'Exciter';
                                                                          
--('Playing the Angel', 2005)
                             
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'A Pain That I’m Used To',	 	240+11 from album a                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'John the Revelator',	 	180+42 from album a                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Suffer Well',	180+49 from album a                                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Sinner in Me',	 	240+56 from album a                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Precious',	 	240+10 from album a                            
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Macro',	 	240+03 from album a                                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I Want It All',	360+09 from album a                                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Nothing’s Impossible',	240+21 from album a                            
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Introspectre',	 	60+42 from album a                             
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Damaged People',	 	180+29 from album a                            
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lilian',	 	240+49 from album a                                    
		where a."name" = 'Playing the Angel';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Darkest Star',	 	360+55 from album a                    
		where a."name" = 'Playing the Angel';
                                                                          
--('Sounds of the Universe', 2009)                          
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'In Chains',	360+53 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Hole to Feed',	180+59 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Wrong',		180+13 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Fragile Tension',	240+09 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Little Soul',	180+31 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'In Sympathy',	240+54 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Peace',		240+29 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Come Back',	300+15 from album a                                    
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Spacewalker',	60+53 from album a                                     
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Perfect',	240+33 from album a                                            
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Miles Away/The Truth Is',	240+14 from album a                            
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Jezebel',	240+41 from album a                                            
		where a."name" = 'Sounds of the Universe';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Corrupt',	480+59 from album a                                            
		where a."name" = 'Sounds of the Universe';
                                                                          
--('Delta Machine', 2013)                             
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Welcome to My World',	240+56 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Angel',	180+57 from album a                                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Heaven',	240+03 from album a                                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Secret to the End',	300+12 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'My Little Universe',	240+24 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Slow',		180+45 from album a                                    
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Broken',	180+58 from album a                                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Child Inside',		240+16 from album a                    
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Soft Touch / Raw Nerve',	180+26 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Should Be Higher',		300+04 from album a                    
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Alone',		240+29 from album a                                    
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Soothe My Soul',		300+22 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Goodbye',		300+03 from album a                                    
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Long Time Lie',		240+25 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Happens All the Time',	240+20 from album a                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Always',	300+07 from album a                                            
		where a."name" = 'Delta Machine';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'All That’s Mine',		180+23 from album a                            
		where a."name" = 'Delta Machine';
                                                                          
--('Spirit', 2017)                           
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Going Backwards',	 	300+43 from album a                            
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Where’s the Revolution',	 	240+59 from album a                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Worst Crime',	 	180+48 from album a                            
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Scum',	 	180+14 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'You Move',	180+50 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Cover Me',	240+52 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Eternal',	 	120+25 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Poison Heart',	180+17 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'So Much Love',	 	240+29 from album a                            
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Poorman',	 	240+26 from album a                                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'No More (This Is the Last Time)',	180+13 from album a                    
		where a."name" = 'Spirit';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Fail',	 	300+07 from album a                                    
		where a."name" = 'Spirit';
                                                                          
--('Memento Mori', 2023)                   
                                                                          
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'My Cosmos Is Mine',	 	300+18 from album a                    
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Wagging Tongue',	180+25 from album a                                    
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Ghosts Again',	180+58 from album a                                    
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Don’t Say You Love Me',	180+44 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'My Favourite Stranger',	180+55 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Soul With Me',	 	240+15 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Caroline’s Monkey',	240+17 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Before We Drown',	240+08 from album a                                    
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'People Are Good',	 	240+24 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Always You',	 	240+19 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Never Let Me Go',	 	240+04 from album a                            
		where a."name" = 'Memento Mori';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Speak to Me',	240+37 from album a                                    
		where a."name" = 'Memento Mori';

---------------------------------------------------------------------------------------------------------------------------------------------
--															Nothing But Thieves
---------------------------------------------------------------------------------------------------------------------------------------------	
--('Nothing But Thieves', 2015)                                                   
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Excuse Me',	180+38 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Ban All The Music',	120+52 from album a     
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Wake Up Call',	120+45 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Itch',	180+25 from album a                     
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'If I Get High',	180+27 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Graveyard Whistling',	180+52 from album a     
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Hostage',	180+49 from album a                     
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Trip Switch',	180+01 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lover, Please Stay',	240+07 from album a     
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Drawing Pins',	180+37 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Painkiller',	120+26 from album a             
		where a."name" = 'Nothing But Thieves';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Tempt You (Evocatio)',	180+37 from album a     
		where a."name" = 'Nothing But Thieves';

--------------------------------------------------------------------------------------------------------------------------------------------
--															Franz Ferdinand
--------------------------------------------------------------------------------------------------------------------------------------------

--('Franz Ferdinand', 2004)
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Jacqueline',  180+49 from album a                                    
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Tell Her Tonight',  120+17 from album a                              
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Take Me Out',  180+57 from album a                                   
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Dark of the Matinee', 240+03 from album a                        
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Auf Achse',  240+19 from album a                                     
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Cheating on You',  120+36 from album a                               
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'This Fire',  240+14 from album a                                     
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Darts of Pleasure',  120+59 from album a                             
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Michael',  180+21 from album a                                       
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Come on Home',  180+46 from album a                                  
		where a."name" = 'Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, '40’',  180+25 from album a                                           
		where a."name" = 'Franz Ferdinand';
                                                                      
--('You Could Have It So Much Better', 2005)                  
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Fallen',  180+42 from album a                                    
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Do You Want To',  180+38 from album a                                
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'This Boy',  120+21 from album a                                      
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Walk Away',  180+36 from album a                                     
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Evil and a Heathen',  120+05 from album a                            
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'You’re the Reason I’m Leaving',  120+47 from album a                 
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Eleanor Put Your Boots On',  120+49 from album a                     
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Well That Was Easy',  180+02 from album a                            
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'What You Meant',  180+24 from album a                                
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'I’m Your Villain',  240+03 from album a                              
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'You Could Have It So Much Better',  120+41 from album a              
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Fade Together',  180+03 from album a                                 
		where a."name" = 'You Could Have It So Much Better';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Outsiders',  240+02 from album a                                     
		where a."name" = 'You Could Have It So Much Better';
                                                                      
--('Tonight: Franz Ferdinand', 2009)                    
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Ulysses', 180+13 from album a                                        
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Turn It On', 120+23 from album a                                     
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'No You Girls',180+44 from album a                                    
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Send Him Away', 180+01 from album a                                  
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Twilight Omens', 120+32 from album a                                 
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Bite Hard', 180+31 from album a                                      
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'What She Came For', 180+28 from album a                              
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Live Alone', 180+36 from album a                                     
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Can’t Stop Feeling', 180+05 from album a                             
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lucid Dreams', 420+58 from album a                                   
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Dream Again', 180+20 from album a                                    
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Katherine Kiss Me', 120+56 from album a                              
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lucid Dreams', 180+24 from album a                                   
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Ulysses', 120+32 from album a                                        
		where a."name" = 'Tonight: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Feeling Kind of Anxious',  180+36 from album a                       
		where a."name" = 'Tonight: Franz Ferdinand';
                                                                      
--('Blood: Franz Ferdinand', 2009)                   
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Feel the Pressure',	 180+28 from album a                       
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Die on the Floor', 360+35 from album a                               
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Vaguest of Feeling', 180+50 from album a                             
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'If I Can’t Have You Then Nobody Can', 180+54 from album a            
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Katherine Hit Me', 180+43 from album a                               
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Backwards on My Face', 180+48 from album a                           
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Feeling Kind of Anxious', 360+31 from album a                        
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Feel the Envy', 180+34 from album a                                  
		where a."name" = 'Blood: Franz Ferdinand';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Be Afraid', 180+03 from album a                                      
		where a."name" = 'Blood: Franz Ferdinand';
                            
                                                                      
--('Right Thoughts Right Words Right Action', 2013)               
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Right Action',	180+01 from album a                                
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Evil Eye',	120+47 from album a                                
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Love Illumination',	180+44 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Stand on the Horizon',	240+23 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Fresh Strawberries',	180+21 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Bullet',	120+43 from album a                                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Treason! Animals.',	240+07 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Universe Expanded',	240+34 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Brief Encounters',	180+09 from album a                        
		where a."name" = 'Right Thoughts Right Words Right Action';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Goodbye Lovers & Friends', 240+21 from album a                       
		where a."name" = 'Right Thoughts Right Words Right Action';
                                                                      
--('Always Ascending', 2018)                     
                                                                      
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Always Ascending',	300+21 from album a                        
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lazy Boy',	120+59 from album a                                
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Paper Cages',	180+40 from album a                                
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Finally',	180+09 from album a                                        
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'The Academy Award',	240+14 from album a                        
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Lois Lane',	180+34 from album a                                
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Huck and Jim',	180+35 from album a                                
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Glimpse of Love',	180+12 from album a                                
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Feel the Love Go',	240+46 from album a                        
		where a."name" = 'Always Ascending';
insert into track (album_id, "name", duration)                                                                          
	select a.id, 'Slow Don’t Kill Me Slow',	300+18 from album a                        
		where a."name" = 'Always Ascending';
				
----------------------------------------------------------------------------------------------------------------------------------------------
--																Arctic Monkeys
----------------------------------------------------------------------------------------------------------------------------------------------
--('Whatever People Say I Am, That’s What I’m Not', 2006)
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id, 'The View from the Afternoon',	180+38 from album a                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'I Bet You Look Good on the Dancefloor',	120+53 from album a                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Fake Tales of San Francisco',	120+57 from album a                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Dancing Shoes',	120+21 from album a                                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'You Probably Couldn’t See for the Lights but You Were Staring Straight at Me',	120+10 from album a     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Still Take You Home',	120+53 from album a                                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Riot Van',	120+14 from album a                                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Red Light Indicates Doors Are Secured',	120+23 from album a                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Mardy Bum',	120+55 from album a                                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'Perhaps Vampires Is a Bit Strong But...',	240+28 from album a                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'When the Sun Goes Down',	180+20 from album a                                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'From the Ritz to the Rubble',	180+13 from album a                                                     
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
insert into track (album_id, "name", duration)
	select a.id, 'A Certain Romance',	300+31 from album a                                                             
		where a."name" = 'Whatever People Say I Am, That’s What I’m Not';
                                                                                                           
--('Favourite Worst Nightmare', 2007)                                       
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id, 'Brianstorm',		120+50 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Teddy Picker',		120+43 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'D Is for Dangerous',		120+16 from album a                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Balaclava',		120+49 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Fluorescent Adolescent',		120+57 from album a                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Only Ones Who Know',		180+02 from album a                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Do Me a Favour',		180+27 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'This House Is a Circus',	180+09 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'If You Were There, Beware',		240+34 from album a                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'The Bad Thing',		120+23 from album a                                                             
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Old Yellow Bricks',		180+11 from album a                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, '505',		240+13 from album a                                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Da Frame 2R', 	120+20 from album a                                                                     
		where a."name" = 'Favourite Worst Nightmare';
insert into track (album_id, "name", duration)
	select a.id, 'Matador', 	240+57 from album a                                                                     
		where a."name" = 'Favourite Worst Nightmare';
                                                                                                           
--('Humbug', 2009)                                                       
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id, 'My Propeller',	180+27 from album a                                                                     
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Crying Lightning',	180+43 from album a                                                             
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Dangerous Animals',	180+30 from album a                                                             
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Secret Door',	180+43 from album a                                                                     
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Potion Approaching',	180+32 from album a                                                             
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Fire and the Thud',	180+57 from album a                                                             
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Cornerstone',	180+17 from album a                                                                     
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Dance Little Liar',	240+43 from album a                                                             
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'Pretty Visitors',	180+40 from album a                                                                     
		where a."name" = 'Humbug';
insert into track (album_id, "name", duration)
	select a.id, 'The Jeweller’s Hands',	300+42 from album a                                                             
		where a."name" = 'Humbug';
                                                                                                           
--('Suck It and See', 2011)                                                
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id, 'She’s Thunderstorms',	180+55 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Black Treacle',	180+35 from album a                                                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Brick by Brick',	120+59 from album a                                                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'The Hellcat Spangled Shalalala',	180+00 from album a                                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Don’t Sit Down ’Cause I’ve Moved Your Chair',	180+04 from album a                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Library Pictures',	120+22 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'All My Own Stunts',	180+52 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Reckless Serenade',	120+43 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Piledriver Waltz',	180+24 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Love Is a Laserquest',	180+12 from album a                                                             
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'Suck It and See',	180+46 from album a                                                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'That’s Where You’re Wrong',	240+17 from album a                                                     
		where a."name" = 'Suck It and See';
insert into track (album_id, "name", duration)
	select a.id, 'The Blond-O-Sonic Shimmer Trap',	180+24 from album a                                                     
		where a."name" = 'Suck It and See';
                                                                                                           
--('AM', 2013)                                                         
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id,  'Do I Wanna Know?',	240+31 from album a                                                             
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'R U Mine?',	180+21 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'One for the Road',	180+26 from album a                                                             
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Arabella',	180+27 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'I Want It All',	180+04 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'No.1 Party Anthem',	240+03 from album a                                                             
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Mad Sounds',	180+35 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Fireside',	180+01 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Why’d You Only Call Me When You’re High?',	120+41 from album a                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Snap Out of It',	180+12 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'Knee Socks',	240+17 from album a                                                                     
		where a."name" = 'AM';
insert into track (album_id, "name", duration)
	select a.id,  'I Wanna Be Yours',	180+04 from album a                                                             
		where a."name" = 'AM';
                                                                                                           
--('Tranquility Base Hotel & Casino', 2018)                                                            
                                                                                                           
insert into track (album_id, "name", duration)
	select a.id,  'Star Treatment',	300+55 from album a                                                                     
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'One Point Perspective',	180+28 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'American Sports',	120+38 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'Tranquility Base Hotel & Casino',	180+31 from album a                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'Golden Trunks',	120+53 from album a                                                                     
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'Four Out of Five',	300+12 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'The World’s First Ever Monster Truck Front Flip',	180+00 from album a                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'Science Fiction',	180+05 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'She Looks Like Fun',	180+02 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'Batphone',	240+32 from album a                                                                     
		where a."name" = 'Tranquility Base Hotel & Casino';
insert into track (album_id, "name", duration)
	select a.id,  'The Ultracheese',	180+37 from album a                                                             
		where a."name" = 'Tranquility Base Hotel & Casino';

---------------------------------------------------------------------------------------------------------------------------------------------
--																	Muse
---------------------------------------------------------------------------------------------------------------------------------------------
--('Showbiz', 1999)
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Sunburn',	180+54 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Muscle Museum',	240+23 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Fillip',	240+01 from album a                                             
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Falling Down',	240+34 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Cave',	240+46 from album a                                             
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Showbiz',	300+16 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Unintended',	180+57 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Uno',	180+38 from album a                                             
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Sober',	240+04 from album a                                             
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Escape',	180+31 from album a                                             
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Overdue',	120+26 from album a                                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Hate This and I’ll Love You',	300+09 from album a                     
		where a."name" = 'Showbiz';
insert into track (album_id, "name", duration)
	select a.id, 'Spiral Static',	240+44 from album a                                     
		where a."name" = 'Showbiz';
                                                                          
--('Origin of Symmetry', 2001)         
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'New Born',	360+01 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Bliss',	240+12 from album a                                             
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Space Dementia',	360+20 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Hyper Music',	180+20 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Plug In Baby',	180+40 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Citizen Erased',	420+19 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Micro Cuts',	180+38 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Screenager',	240+20 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Darkshines',	240+47 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Feeling Good',	180+19 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Futurism', 	180+27 from album a                                     
		where a."name" = 'Origin of Symmetry';
insert into track (album_id, "name", duration)
	select a.id, 'Megalomania',	240+38 from album a                                     
		where a."name" = 'Origin of Symmetry';
                                                                          
--('Absolution', 2003)                        
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Intro',		0+21 from album a                                       
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Apocalypse Please',		240+12 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Time Is Running Out',		180+56 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Sing for Absolution',		240+54 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Stockholm Syndrome',		240+58 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Falling Away with You',		240+40 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Interlude',		0+37 from album a                               
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Hysteria',		180+47 from album a                             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Blackout',		240+22 from album a                             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Butterflies and Hurricanes',		300+01 from album a             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'The Small Print',		180+28 from album a                     
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Fury', 	300+02 from album a                                             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Endlessly',		180+49 from album a                             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Thoughts of a Dying Atheist',		180+11 from album a             
		where a."name" = 'Absolution';
insert into track (album_id, "name", duration)
	select a.id, 'Ruled by Secrecy',		240+54 from album a                     
		where a."name" = 'Absolution';
                                                                          
--('Black Holes and Revelations', 2006)           
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Take a Bow',		240+35 from album a                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Starlight',		180+59 from album a                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Supermassive Black Hole',		180+29 from album a             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Map of the Problematique',		240+18 from album a             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'A Soldier’s Poem',		120+03 from album a                     
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Invincible',		300+00 from album a                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Assassin',		180+31 from album a                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Exo-Politics'	,	180+53 from album a                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'City of Delusion',		240+48 from album a                     
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Hoodoo',	180+43 from album a                                             
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Knights of Cydonia',		360+06 from album a                     
		where a."name" = 'Black Holes and Revelations';
insert into track (album_id, "name", duration)
	select a.id, 'Glorious', 		240+41 from album a                             
		where a."name" = 'Black Holes and Revelations';
                                                                          
--('The Resistance', 2009)                          
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Uprising',		300+03 from album a                             
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Resistance',		300+46 from album a                             
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Undisclosed Desires',		180+56 from album a                     
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'United States of Eurasia / Collateral Damage',		300+47 from album a
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Guiding Light',		240+13 from album a                             
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Unnatural Selection',		360+54 from album a                     
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'MK Ultra',		240+06 from album a                             
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'I Belong to You',	300+38 from album a                             
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Exogenesis: Symphony Part I (Overture)',		240+18 from album a     
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Exogenesis: Symphony Part II (Cross Pollination)',		180+56 from album a
		where a."name" = 'The Resistance';
insert into track (album_id, "name", duration)
	select a.id, 'Exogenesis: Symphony Part III (Redemption)',		240+37 from album a
		where a."name" = 'The Resistance';
                                                                          
--('The 2nd Law', 2012)                     
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Supremacy',		240+55 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Madness',		240+39 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Panic Station',		180+03 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Prelude',		60+03 from album a                              
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Survival',		240+17 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Follow Me',		180+51 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Animals',		240+23 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Explorers',		300+48 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Big Freeze',		240+41 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Save Me',		300+09 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'Liquid State',		180+03 from album a                             
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'The 2nd Law: Unsustainable',	180+48 from album a                     
		where a."name" = 'The 2nd Law';
insert into track (album_id, "name", duration)
	select a.id, 'The 2nd Law: Isolated System',	240+59 from album a                     
		where a."name" = 'The 2nd Law';
                                                                          
--('Drones', 2015)                         
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Dead Inside',		240+22 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, '[Drill Sergeant]',		0+21 from album a                       
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Psycho',		300+16 from album a                                     
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Mercy',	180+51 from album a                                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Reapers',		300+59 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'The Handler',		240+33 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, '[JFK]',		0+54 from album a                                       
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Defector',		240+33 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Revolt',		240+05 from album a                                     
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Aftermath',		300+47 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'The Globalist',		600+07 from album a                             
		where a."name" = 'Drones';
insert into track (album_id, "name", duration)
	select a.id, 'Drones',		120+49 from album a                                     
		where a."name" = 'Drones';
                                                                          
--('Simulation Theory', 2018)                        
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Algorithm',	240+05 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'The Dark Side',	180+47 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Pressure',	180+55 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Propaganda',	180+00 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Break It to Me',	180+37 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Something Human',	180+46 from album a                             
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Thought Contagion',	180+26 from album a                             
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Get Up and Fight',	240+04 from album a                             
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Blockades',	180+50 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'Dig Down',	180+48 from album a                                     
		where a."name" = 'Simulation Theory';
insert into track (album_id, "name", duration)
	select a.id, 'The Void',	240+44 from album a                                     
		where a."name" = 'Simulation Theory';
                                                                          
--('Will of the People', 2022)                           
                                                                          
insert into track (album_id, "name", duration)
	select a.id, 'Will of the People',	180+18 from album a                             
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Compliance',	240+10 from album a                                     
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Liberation',	180+06 from album a                                     
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Won’t Stand Down',	180+30 from album a                             
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Ghosts (How Can I Move On)',	180+36 from album a                     
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'You Make Me Feel Like It’s Halloween',	180+00 from album a             
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Kill or Be Killed',	300+00 from album a                             
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Verona',	240+56 from album a                                             
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'Euphoria',	180+23 from album a                                     
		where a."name" = 'Will of the People';
insert into track (album_id, "name", duration)
	select a.id, 'We Are Fucking Fucked',	180+36 from album a                             
		where a."name" = 'Will of the People';

-------------------------------------------------------------------------------------------------------------------------------------------	
--																Radiohead
-------------------------------------------------------------------------------------------------------------------------------------------
--('Pablo Honey', 1993)
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'You',	180+29 from album a                                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Creep', 	180+56 from album a                                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'How Do You?',	120+12 from album a                                                                 
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Stop Whispering',	300+26 from album a                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Thinking About You',	120+41 from album a                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Anyone Can Play Guitar',	180+38 from album a                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Ripcord',	180+10 from album a                                                                 
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Vegetable',	180+13 from album a                                                                 
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Prove Yourself',	120+25 from album a                                                                 
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'I Can’t',	240+13 from album a                                                                 
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Lurgee',	180+08 from album a                                                                         
		where a."name" = 'Pablo Honey';
insert into track (album_id, "name", duration)
	select a.id, 'Blow Out',	240+40 from album a                                                                 
		where a."name" = 'Pablo Honey';
                                                                                                      
--('The Bends', 1995)                                                      
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Planet Telex',  240+19 from album a                                                                  
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'The Bends',  240+04 from album a                                                                     
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'High and Dry',  240+20 from album a                                                                  
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Fake Plastic Trees',  240+51 from album a                                                            
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Bones',  180+08 from album a                                                                         
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, '(Nice Dream)',  180+54 from album a                                                                  
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Just',  180+54 from album a                                                                          
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'My Iron Lung',  240+37 from album a                                                                  
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Bullet Proof… I Wish I Was',  180+29 from album a                                                    
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Black Star',  240+07 from album a                                                                    
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Sulk',  180+43 from album a                                                                          
		where a."name" = 'The Bends';
insert into track (album_id, "name", duration)
	select a.id, 'Street Spirit (Fade Out)',  240+12 from album a                                                      
		where a."name" = 'The Bends';
                                                                                                      
--('OK Computer', 1997)                                        
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Airbag',	240+44 from album a                                                                         
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Paranoid Android',	360+23 from album a                                                         
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Subterranean Homesick Alien',	240+27 from album a                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Exit Music (For a Film)',	240+24 from album a                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Let Down',	240+59 from album a                                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Karma Police',	240+21 from album a                                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Fitter Happier',	60+57 from album a                                                                  
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Electioneering',	180+50 from album a                                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Climbing Up the Walls',	240+45 from album a                                                         
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'No Surprises',	180+48 from album a                                                                 
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'Lucky',	240+19 from album a                                                                         
		where a."name" = 'OK Computer';
insert into track (album_id, "name", duration)
	select a.id, 'The Tourist',	300+27 from album a                                                                 
		where a."name" = 'OK Computer';
                                                                                                      
--('Kid A', 2000)                                                      
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Everything in Its Right Place',	240+11 from album a                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Kid A',	240+44 from album a                                                                         
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'The National Anthem',	300+51 from album a                                                         
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'How to Disappear Completely',	300+56 from album a                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Treefingers',	180+42 from album a                                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Optimistic',	300+15 from album a                                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'In Limbo',	180+31 from album a                                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Idioteque', 	300+09 from album a                                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Morning Bell',	240+35 from album a                                                                 
		where a."name" = 'Kid A';
insert into track (album_id, "name", duration)
	select a.id, 'Motion Picture Soundtrack', 	420+01 from album a                                                 
		where a."name" = 'Kid A';
                                                                                                      
--('Amnesiac', 2001)                                                  
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Packt Like Sardines in a Crushd Tin Box',  240+00 from album a                                       
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Pyramid Song',  240+49 from album a                                                                  
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Pulk/Pull Revolving Doors',  240+07 from album a                                                     
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'You and Whose Army?',  180+11 from album a                                                           
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'I Might Be Wrong',  240+54 from album a                                                              
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Knives Out',  240+15 from album a                                                                    
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Morning Bell/Amnesiac',  180+14 from album a                                                         
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Dollars and Cents',  240+52 from album a                                                             
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Hunting Bears',  120+01 from album a                                                                 
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Like Spinning Plates',  180+57 from album a                                                          
		where a."name" = 'Amnesiac';
insert into track (album_id, "name", duration)
	select a.id, 'Life in a Glasshouse',  240+34 from album a                                                          
		where a."name" = 'Amnesiac';
                                                                                                      
--('Hail to the Thief', 2003)                                                        
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, '2 + 2 = 5',	180+19 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Sit Down. Stand Up',	240+19 from album a                                                         
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Sail to the Moon',	240+18 from album a                                                         
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Backdrifts',	300+22 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Go to Sleep',	180+21 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Where I End and You Begin',	240+29 from album a                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'We Suck Young Blood',	240+56 from album a                                                         
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'The Gloaming',	180+32 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'There There',	300+25 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'I Will',	60+59 from album a                                                                          
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'A Punchup at a Wedding',	240+57 from album a                                                         
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Myxomatosis',	180+52 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'Scatterbrain',	180+21 from album a                                                                 
		where a."name" = 'Hail to the Thief';
insert into track (album_id, "name", duration)
	select a.id, 'A Wolf at the Door',	180+21 from album a                                                         
		where a."name" = 'Hail to the Thief';
                                                                                                      
--('In Rainbows', 2007)                                              
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, '15 Step',	180+58 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Bodysnatchers',	240+02 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Nude',	240+15 from album a                                                                         
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Weird Fishes/Arpeggi',	300+18 from album a                                                         
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'All I Need',	180+49 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Faust Arp',	120+10 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Reckoner',	240+50 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'House of Cards',	300+28 from album a                                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Jigsaw Falling into Place',	240+09 from album a                                                 
		where a."name" = 'In Rainbows';
insert into track (album_id, "name", duration)
	select a.id, 'Videotape',	240+40 from album a                                                                 
		where a."name" = 'In Rainbows';
                                                                                                      
--('The King of Limbs', 2011)                                                         
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Bloom',	300+15 from album a                                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Morning Mr Magpie',	240+41 from album a                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Little by Little',	240+27 from album a                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Feral',	180+13 from album a                                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Lotus Flower',	300+01 from album a                                                                 
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Codex',	240+47 from album a                                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Give Up the Ghost',	240+50 from album a                                                         
		where a."name" = 'The King of Limbs';
insert into track (album_id, "name", duration)
	select a.id, 'Separator',	300+20 from album a                                                                 
		where a."name" = 'The King of Limbs';
                                                                                                      
--('A Moon Shaped Pool', 2016)                                                       
                                                                                                      
insert into track (album_id, "name", duration)
	select a.id, 'Burn the Witch',	180+40 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Daydreaming',	360+24 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Decks Dark',	240+41 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Desert Island Disk',	180+44 from album a                                                         
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Ful Stop',	360+07 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Glass Eyes',	120+52 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Identikit',	240+26 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'The Numbers',	300+45 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Present Tense',	300+06 from album a                                                                 
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'Tinker Tailor Soldier Sailor Rich Man Poor Man Beggar Man Thief',	300+03 from album a         
		where a."name" = 'A Moon Shaped Pool';
insert into track (album_id, "name", duration)
	select a.id, 'True Love Waits',	240+43 from album a                                                         
		where a."name" = 'A Moon Shaped Pool';

--------------------------------------------------------------------------------------------------------------------------------------------
--																	Blur
--------------------------------------------------------------------------------------------------------------------------------------------
	
--('Leisure', 1991)
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'She’s So High',	240+45 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Slow Down',	180+11 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Repetition',	300+25 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Bad Day',	240+23 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Sing',	360+00 from album a                                                                      
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'There’s No Other Way',	180+23 from album a                                                      
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Fool',	180+15 from album a                                                                      
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Come Together',	180+51 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'High Cool',	180+37 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Birthday',	180+50 from album a                                                              
		where a."name" = 'Leisure';
insert into track (album_id, "name", duration)
	select a.id, 'Wear Me Down',	240+49 from album a                                                              
		where a."name" = 'Leisure';
                                                                                                   
--('Modern Life is Rubbish', 1993)                                                  
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'For Tomorrow',  240+18 from album a                                                               
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Advert',  180+43 from album a                                                                     
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Colin Zeal',  180+14 from album a                                                                 
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Pressure on Julian',  180+30 from album a                                                         
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Star Shaped',  180+25 from album a                                                                
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Blue Jeans',  180+53 from album a                                                                 
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Chemical World',  240+02 from album a                                                             
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Intermission',  120+27 from album a                                                               
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Sunday Sunday',  120+36 from album a                                                              
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Oily Water',  240+59 from album a                                                                 
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Miss America',  300+34 from album a                                                               
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Villa Rosie',  180+54 from album a                                                                
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Coping',  180+23 from album a                                                                     
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Turn It Up',  180+21 from album a                                                                 
		where a."name" = 'Modern Life is Rubbish';
insert into track (album_id, "name", duration)
	select a.id, 'Resigned',  300+13 from album a                                                                   
		where a."name" = 'Modern Life is Rubbish';
                                                                                                   
--('Parklife', 1994)                                                     
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Girls & Boys',		240+50 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Tracy Jacks',		240+20 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'End of a Century',		120+46 from album a                                              
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Parklife', 	180+05 from album a                                                              
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Bank Holiday',		60+42 from album a                                                       
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Badhead',		180+25 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'The Debt Collector',		120+10 from album a                                              
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Far Out',		60+41 from album a                                                       
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'To the End',		240+05 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'London Loves',	240+15 from album a                                                              
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Trouble in the Message Centre',		240+09 from album a                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Clover Over Dover',		180+22 from album a                                              
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Magic America',		180+38 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Jubilee',		120+47 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'This Is a Low',		300+07 from album a                                                      
		where a."name" = 'Parklife';
insert into track (album_id, "name", duration)
	select a.id, 'Lot 105',		60+17 from album a                                                       
		where a."name" = 'Parklife';
                                                                                                   
--('The Great Escape', 1995)                                                    
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Stereotypes',                   180+47 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Country House',                 180+32 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Best Days',                     300+33 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Charmless Man',                 120+47 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Fade Away',                     240+28 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Top Man',                       180+23 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'The Universal',                 240+06 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Mr. Robinson’s Quango',         180+23 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'He Thought of Cars',            240+43 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'It Could Be You',               180+50 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Ernold Same',                   180+44 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Globe Alone',                   240+36 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Dan Abnormal',                  240+15 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Entertain Me',                  180+38 from album a                                               
		where a."name" = 'The Great Escape';
insert into track (album_id, "name", duration)
	select a.id, 'Yuko and Hiro',                 120+47 from album a                                               
		where a."name" = 'The Great Escape';
                                                                                                   
--('Blur', 1997)                                              
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Beetlebum',	 	300+04 from album a                                                      
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Song 2',	 	120+04 from album a                                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Country Sad Ballad Man',	 	240+50 from album a                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'M.O.R.',		180+27 from album a                                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'On Your Own', 	240+26 from album a                                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Theme from Retro',	 	180+37 from album a                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'You’re So Great',	180+35 from album a                                                      
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Death of a Party',	 	240+33 from album a                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Chinese Bombs',	 	60+24 from album a                                                       
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'I’m Just a Killer for Your Love',	 	240+11 from album a                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Look Inside America',	 	180+50 from album a                                              
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Strange News from Another Star',	 	240+02 from album a                                      
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Movin’ On',	 	180+44 from album a                                                      
		where a."name" = 'Blur';
insert into track (album_id, "name", duration)
	select a.id, 'Essex Dogs',	 	480+08 from album a                                                      
		where a."name" = 'Blur';
                                                                                                   
--('13', 1999)                                                      
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Tender', 420+40 from album a                                                                      
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Bugman',  240+47 from album a                                                                     
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Coffee & TV',  300+58 from album a                                                                
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Swamp Song',  240+36 from album a                                                                 
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, '1992', 300+28 from album a                                                                        
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'B.L.U.R.E.M.I.',  120+53 from album a                                                             
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Battle', 420+42 from album a                                                                      
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Mellow Song',  180+56 from album a                                                                
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Trailerpark',  240+26 from album a                                                                
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Caramel',  420+38 from album a                                                                    
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Trimm Trabb', 300+37 from album a                                                                 
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'No Distance Left to Run',  180+28 from album a                                                    
		where a."name" = '13';
insert into track (album_id, "name", duration)
	select a.id, 'Optigan 1',  120+33 from album a                                                                  
		where a."name" = '13';
                                                                                                   
--('Think Tank', 2003)                                                      
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Me, White Noise',  360+48 from album a                                                            
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Ambulance',  300+09 from album a                                                                  
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Out of Time',  180+52 from album a                                                                
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Crazy Beat',  180+15 from album a                                                                 
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Good Song',  180+09 from album a                                                                  
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'On the Way to the Club',   180+48 from album a                                                    
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Brothers and Sisters',  180+47 from album a                                                       
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Caravan',  240+36 from album a                                                                    
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'We’ve Got a File on You',  60+03 from album a                                                     
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Moroccan Peoples Revolutionary Bowls Club',  180+03 from album a                                  
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Sweet Song',  240+01 from album a                                                                 
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Jets',   360+25 from album a                                                                      
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Gene by Gene',  180+49 from album a                                                               
		where a."name" = 'Think Tank';
insert into track (album_id, "name", duration)
	select a.id, 'Battery in Your Leg',  180+20 from album a                                                        
		where a."name" = 'Think Tank';
                                                                                                   
--('The Magic Whip', 2015)                                                   
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'Lonesome Street',	240+23 from album a                                                      
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'New World Towers',	240+02 from album a                                                      
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Go Out',	240+40 from album a                                                                      
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Ice Cream Man',	180+23 from album a                                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Thought I Was a Spaceman',	360+16 from album a                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'I Broadcast',	120+52 from album a                                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'My Terracotta Heart',	240+05 from album a                                                      
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'There Are Too Many of Us',	240+26 from album a                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Ghost Ship',	240+59 from album a                                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Pyongyang',	300+38 from album a                                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Ong Ong',	180+06 from album a                                                              
		where a."name" = 'The Magic Whip';
insert into track (album_id, "name", duration)
	select a.id, 'Mirrorball',	180+37 from album a                                                              
		where a."name" = 'The Magic Whip';
                                                                                                   
--('The Ballad of Darren', 2023)                                             
                                                                                                   
insert into track (album_id, "name", duration)
	select a.id, 'The Ballad',	180+37 from album a                                                              
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'St. Charles Square',	180+55 from album a                                                      
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'Barbaric',	240+09 from album a                                                              
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'Russian Strings',	180+38 from album a                                                      
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'The Everglades (For Leonard)',	120+56 from album a                                              
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'The Narcissist',	240+05 from album a                                                              
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'Goodbye Albert',	240+17 from album a                                                              
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'Far Away Island',	120+58 from album a                                                      
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'Avalon',	180+05 from album a                                                                      
		where a."name" = 'The Ballad of Darren';
insert into track (album_id, "name", duration)
	select a.id, 'The Heights',	180+24 from album a                                                              
		where a."name" = 'The Ballad of Darren';

--------------------------------------------------------------------------------------------------------------------------------------------
--																	Placebo
--------------------------------------------------------------------------------------------------------------------------------------------
--('Placebo', 1996)
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Come Home',	300+09 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Teenage Angst',	120+42 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Bionic',	300+00 from album a                                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, '36 Degrees',	180+05 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Hang On to Your IQ',	300+13 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Nancy Boy',	180+48 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'I Know',	240+44 from album a                                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Bruise Pristine',	180+35 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Lady of the Flowers',	240+47 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Swallow', 	240+49 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Paycheck (Demo)',	120+59 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Flesh Mechanic (Demo)',	240+28 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Drowning by Numbers',	120+57 from album a                                                          
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'Slackerbitch',	180+23 from album a                                                                  
		where a."name" = 'Placebo';
insert into track (album_id, "name", duration)
	select a.id, 'H. K. Farewell',	420+30 from album a                                                                  
		where a."name" = 'Placebo';
                                                                                                       
--('Without You I’m Nothing', 1998)                                                       
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Pure Morning',	240+14 from album a                                                                  
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Brick Shithouse',	180+18 from album a                                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'You Don’t Care About Us',	180+58 from album a                                                  
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Ask for Answers',	300+19 from album a                                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Without You I’m Nothing',	240+08 from album a                                                  
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Allergic (To Thoughts of Mother Earth)',	180+49 from album a                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'The Crawl',	120+59 from album a                                                                  
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Every You Every Me',	180+33 from album a                                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'My Sweet Prince',	300+45 from album a                                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Summer’s Gone',	180+05 from album a                                                                  
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Scared of Girls',	120+58 from album a                                                          
		where a."name" = 'Without You I’m Nothing';
insert into track (album_id, "name", duration)
	select a.id, 'Burger Queen', 	360+13 from album a                                                                  
		where a."name" = 'Without You I’m Nothing';
                                                                                                       
--('Black Market Music', 2000)                                                        
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Taste in Men',	240+15 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Days Before You Came',	120+33 from album a                                                          
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Special K',	180+52 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Spite & Malice', 	180+37 from album a                                                          
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Passive Aggressive',	300+24 from album a                                                          
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Black-Eyed',	180+48 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Blue American',	180+31 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Slave to the Wage',	240+06 from album a                                                          
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Commercial for Levi',	120+20 from album a                                                          
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Haemoglobin',	180+46 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Narcoleptic',	240+22 from album a                                                                  
		where a."name" = 'Black Market Music';
insert into track (album_id, "name", duration)
	select a.id, 'Peeping Tom', 	300+12 from album a                                                                  
		where a."name" = 'Black Market Music';
                                                                                                       
--('Sleeping with Ghosts', 2003)                                                 
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Bulletproof Cupid',	120+22 from album a                                                          
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'English Summer Rain',	240+01 from album a                                                          
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'This Picture',	180+34 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Sleeping with Ghosts',	240+38 from album a                                                          
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'The Bitter End',	180+10 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Something Rotten',	300+28 from album a                                                          
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Plasticine',	180+26 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Special Needs',	300+15 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'I’ll Be Yours',	180+32 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Second Sight',	120+49 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Protect Me From What I Want',	180+15 from album a                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Centrefolds',	300+02 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
insert into track (album_id, "name", duration)
	select a.id, 'Protege-Moi',	180+13 from album a                                                                  
		where a."name" = 'Sleeping with Ghosts';
                                                                                                       
--('Meds', 2006)                                                
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Meds', 120+55 from album a                                                                            
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Infra-Red',	180+15 from album a                                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Drag',	180+21 from album a                                                                          
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Space Monkey',	180+51 from album a                                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Follow the Cops Back Home',	240+39 from album a                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Post Blue',	180+11 from album a                                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Because I Want You',	180+22 from album a                                                          
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Blind',	240+01 from album a                                                                          
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Pierrot the Clown',	240+22 from album a                                                          
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Broken Promise', 	240+10 from album a                                                          
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'One of a Kind',	180+20 from album a                                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'In the Cold Light of Morning',	180+52 from album a                                                  
		where a."name" = 'Meds';
insert into track (album_id, "name", duration)
	select a.id, 'Song to Say Goodbye',	180+36 from album a                                                          
		where a."name" = 'Meds';
                                                                                                       
--('Battle for the Sun', 2009)                                                      
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Kitty Litter', 	 		180+47 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Ashtray Heart',			180+32 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Battle for the Sun', 		300+33 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'For What It’s Worth',	 	120+47 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Devil in the Details',	 	240+28 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Bright Lights', 	 	180+23 from album a                                                          
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Speak in Tongues',	 	240+06 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'The Never-Ending Why', 	 	180+23 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Julien',	 		240+43 from album a                                                          
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Happy You’re Gone', 	 	180+50 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Breathe Underwater', 	 	180+44 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Come Undone', 		 	240+36 from album a                                                  
		where a."name" = 'Battle for the Sun';
insert into track (album_id, "name", duration)
	select a.id, 'Kings of Medicine', 	 	240+15 from album a                                                  
		where a."name" = 'Battle for the Sun';
                                                                                                       
--('Loud Like Love', 2013)                                                    
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Loud Like Love',	240+51 from album a                                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Scene of the Crime',	180+27 from album a                                                          
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Too Many Friends',	180+34 from album a                                                          
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Hold On To Me',	240+54 from album a                                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Rob the Bank',	180+38 from album a                                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'A Million Little Pieces',	240+40 from album a                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Exit Wounds',	300+48 from album a                                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Purify',	180+45 from album a                                                                          
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Begin the End',	360+00 from album a                                                                  
		where a."name" = 'Loud Like Love';
insert into track (album_id, "name", duration)
	select a.id, 'Bosco',	360+41 from album a                                                                          
		where a."name" = 'Loud Like Love';
                                                                                                       
--('Never Let Me Go', 2022)                                                          
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Forever Chemicals',	300+09 from album a                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Beautiful James',	240+08 from album a                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Hugz',	180+51 from album a                                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Happy Birthday in the Sky',	300+09 from album a                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'The Prodigal',	240+46 from album a                                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Surrounded by Spies',	300+14 from album a                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Try Better Next Time',	180+07 from album a                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Sad White Reggae',	180+25 from album a                                                          
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Twin Demons',	180+58 from album a                                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Chemtrails',	240+31 from album a                                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'This Is What You Wanted',	240+11 from album a                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Went Missing',	300+05 from album a                                                                  
		where a."name" = 'Never Let Me Go';
insert into track (album_id, "name", duration)
	select a.id, 'Fix Yourself',	300+01 from album a                                                                  
		where a."name" = 'Never Let Me Go';

--------------------------------------------------------------------------------------------------------------------------------------------
--																	Oasis
--------------------------------------------------------------------------------------------------------------------------------------------
--('Definitely Maybe', 1994)
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Rock ’n’ Roll Star',	300+23 from album a                                                          
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Shakermaker',	300+10 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Live Forever',	240+38 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Up in the Sky',	240+28 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Columbia',	360+17 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Supersonic',	240+44 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Bring It on Down',	240+17 from album a                                                          
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Cigarettes & Alcohol',	240+50 from album a                                                          
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Digsy’s Dinner',	120+32 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Slide Away',	360+32 from album a                                                                  
		where a."name" = 'Definitely Maybe';
insert into track (album_id, "name", duration)
	select a.id, 'Married with Children',	180+12 from album a                                                          
		where a."name" = 'Definitely Maybe';
                                                                                                       
--('(What’s the Story) Morning Glory?', 1995)                                                        
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Hello',  180+21 from album a                                                                          
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Roll With It',  180+59 from album a                                                                   
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Wonderwall',  240+18 from album a                                                                     
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Don’t Look Back in Anger',  240+48 from album a                                                       
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Hey Now',  300+41 from album a                                                                        
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Some Might Say',  300+29 from album a                                                                 
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Cast No Shadow',  240+51 from album a                                                                 
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'She’s Electric',  180+40 from album a                                                                 
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Morning Glory',  300+03 from album a                                                                  
		where a."name" = '(What’s the Story) Morning Glory?';
insert into track (album_id, "name", duration)
	select a.id, 'Champagne Supernova',  420+27 from album a                                                            
		where a."name" = '(What’s the Story) Morning Glory?';
                                                                                                       
--('Be Here Now', 1997)                                               
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'D’You Know What I Mean?',	420+42 from album a                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'My Big Mouth',	300+02 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'Magic Pie',	420+19 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'Stand by Me',	300+56 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'I Hope, I Think, I Know',	240+22 from album a                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'The Girl in the Dirty Shirt',	300+49 from album a                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'Fade In-Out',	360+52 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'Don’t Go Away',	240+48 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'Be Here Now',	300+13 from album a                                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'All Around the World',	540+20 from album a                                                          
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'It’s Gettin’ Better (Man!!)',	420+00 from album a                                                  
		where a."name" = 'Be Here Now';
insert into track (album_id, "name", duration)
	select a.id, 'All Around the World (Reprise)',	120+08 from album a                                                  
		where a."name" = 'Be Here Now';
                                                                                                       
--('Standing on the Shoulder of Giants', 2000)                                                          
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Fuckin’ in the Bushes',  180+18 from album a                                                          
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Go Let It Out',  240+38 from album a                                                                  
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Who Feels Love?',  300+44 from album a                                                                
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Put Yer Money Where Yer Mouth Is',  240+27 from album a                                               
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Little James',   240+15 from album a                                                                  
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Gas Panic!',  360+08 from album a                                                                     
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Where Did It All Go Wrong',  240+26 from album a                                                      
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Sunday Morning Call',  300+12 from album a                                                            
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'I Can See a Liar',  180+13 from album a                                                               
		where a."name" = 'Standing on the Shoulder of Giants';
insert into track (album_id, "name", duration)
	select a.id, 'Roll It Over',  360+36 from album a                                                                   
		where a."name" = 'Standing on the Shoulder of Giants';
                                                                                                       
--('Heathen Chemistry', 2002)                                                 
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'The Hindu Times',		180+49 from album a                                                  
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Force of Nature',		240+51 from album a                                                  
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Hung in a Bad Place',		180+28 from album a                                                  
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Stop Crying Your Heart Out',		240+59 from album a                                          
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Songbird',		120+07 from album a                                                          
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Little by Little',		240+52 from album a                                                  
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'A Quick Peep',		60+17 from album a                                                           
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, '(Probably) All in the Mind',		240+02 from album a                                          
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'She Is Love',		180+09 from album a                                                          
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Born on a Different Cloud',		360+08 from album a                                          
		where a."name" = 'Heathen Chemistry';
insert into track (album_id, "name", duration)
	select a.id, 'Better Man',		240+19 from album a                                                          
		where a."name" = 'Heathen Chemistry';
                                                                                                       
--('Don’t Believe the Truth', 2005)                                                      
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Turn Up the Sun',  180+59 from album a                                                                
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Mucky Fingers',  180+56 from album a                                                                  
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Lyla',  300+10 from album a                                                                           
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Love Like a Bomb',  120+52 from album a                                                               
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'The Importance of Being Idle',  180+39 from album a                                                   
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'The Meaning of Soul',  60+42 from album a                                                             
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Guess God Thinks I’m Abel',  180+24 from album a                                                      
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Part of the Queue',  180+48 from album a                                                              
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Keep the Dream Alive',  300+45 from album a                                                           
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'A Bell Will Ring',  180+07 from album a                                                               
		where a."name" = 'Don’t Believe the Truth';
insert into track (album_id, "name", duration)
	select a.id, 'Let There Be Love',  300+31 from album a                                                              
		where a."name" = 'Don’t Believe the Truth';
                                                                                                       
--('Dig Out Your Soul', 2008)                                                    
                                                                                                       
insert into track (album_id, "name", duration)
	select a.id, 'Bag It Up',		240+40 from album a                                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'The Turning',		300+04 from album a                                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'Waiting for the Rapture',	180+03 from album a                                                  
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'The Shock of the Lightning',		240+59 from album a                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'I’m Outta Time',		240+10 from album a                                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, '(Get Off Your) High Horse Lady',		240+06 from album a                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'Falling Down',		240+20 from album a                                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'To Be Where There’s Life',		240+35 from album a                                          
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'Ain’t Got Nothin’',		120+14 from album a                                                  
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'The Nature of Reality',		180+47 from album a                                                  
		where a."name" = 'Dig Out Your Soul';
insert into track (album_id, "name", duration)
	select a.id, 'Soldier On',		240+50 from album a                                                          
		where a."name" = 'Dig Out Your Soul';

----------------------------------------------------------------------------------------------------------------
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'People Are People' and t."name" in (
														'People Are People',
														'Now This Is Fun',
														'Love, in Itself',
														'Work Hard',
														'Get the Balance Right!',
														'Leave in Silence',
														'Pipeline',
														'Everything Counts'
														);

insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'The Singles 81→85' and t."name" in (
														'Dreaming of Me',
														'New Life',
														'Just Can’t Get Enough',
														'See You',
														'Leave in Silence',
														'Get the Balance Right!',
														'Everything Counts',
														'People Are People',
														'Master and Servant',
														'Blasphemous Rumours',
														'Shake the Disease',
														'It’s Called a Heart'
														);

insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Catching Up with Depeche Mode' and t."name" in (
																	'Dreaming of Me',
																	'New Life',
																	'Just Can’t Get Enough',
																	'See You',
																	'The Meaning of Love',
																	'Love, in Itself',
																	'Master and Servant',
																	'Blasphemous Rumours',
																	'Somebody',
																	'Shake the Disease',
																	'Flexible',
																	'It’s Called a Heart',
																	'Fly on the Windscreen'
																	);

																
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Greatest Hits' and t."name" in (
													'Shake the Disease',
													'A Question of Lust',
													'It’s Called a Heart',
													'Blasphemous Rumours',
													'Everything Counts',
													'People Are People',
													'Master and Servant',
													'Something to Do',
													'Stripped',
													'Here Is the House',
													'It Doesn’t Matter'
													);
												
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'The Singles 86>98' and t."name" in (
														'Stripped',
														'A Question of Lust',
														'A Question of Time',
														'Strangelove',
														'Never Let Me Down Again',
														'Behind the Wheel',
														'Personal Jesus',
														'Enjoy the Silence',
														'Policy of Truth',
														'World in My Eyes',
														'I Feel You',
														'Walking in My Shoes',
														'Condemnation',
														'In Your Room',
														'Barrel of a Gun',
														'It’s No Good',
														'Home',
														'Useless',
														'Only When I Lose Myself',
														'Little 15'
														);
													
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Remixes 81–04' and t."name" in (
													'Never Let Me Down Again',
													'Personal Jesus',
													'Barrel of a Gun',
													'Route 66',
													'Useless',
													'In Your Room',
													'Home',
													'Strangelove',
													'I Feel You',
													'Just Can’t Get Enough',
													'Halo',
													'Enjoy the Silence'
													);												
			
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'The Best Of, Volume 1' and t."name" in (
															'Personal Jesus',
															'Just Can’t Get Enough',
															'Everything Counts',
															'Enjoy the Silence',
															'Shake the Disease',
															'See You',
															'It’s No Good',
															'Strangelove',
															'Suffer Well',	
															'Dream On',
															'People Are People',
															'Martyr',
															'Walking in My Shoes',
															'I Feel You',
															'Precious',
															'Master and Servant',
															'New Life',
															'Never Let Me Down Again'
															);
															
insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Remixes 2: 81–11' and t."name" in (
														'Dream On',
														'Personal Jesus',
														'Suffer Well',	
														'John the Revelator',
														'In Chains',
														'Peace',
														'Tora! Tora! Tora!',
														'Never Let Me Down Again',
														'I Want It All',
														'Wrong',
														'Puppets',
														'Everything Counts',
														'A Pain That I’m Used To'
														);

insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'The Masterplan' and t."name" in (
														'Acquiesce',
														'Underneath The Sky',
														'Talk Tonight',
														'Going Nowhere',
														'Fade Away',
														'The Swamp Song',
														'I Am The Walrus',
														'Listen Up',
														'Rockin’ Chair',
														'Half The World Away',
														'(It’s Good) To Be Free',
														'Stay Young',
														'Headshrinker',
														'The Masterplan'
														);

insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Stop the Clocks' and t."name" in (
														'Rock ’n’ Roll Star',
														'Some Might Say',
														'Talk Tonight',
														'Lyla',
														'The Importance of Being Idle',
														'Wonderwall',
														'Slide Away',
														'Cigarettes & Alcohol',
														'The Masterplan',
														'Live Forever',
														'Acquiesce',
														'Supersonic',
														'Half The World Away',
														'Go Let It Out',
														'Songbird',
														'Morning Glory',
														'Champagne Supernova',
														'Don’t Look Back in Anger'
														);

insert into songbooktrack (songbook_id, track_id)
select s.id, t.id from songbook s, track t 
	where s."name" = 'Time Flies... 1994–2009' and t."name" in (
																'Supersonic',
																'Roll with I',
																'Live Forever',
																'Wonderwall',
																'Stop Crying Your Heart Out',
																'Cigarettes & Alcohol',
																'Songbird',
																'Don’t Look Back in Anger',
																'The Hindu Times',
																'Stand by Me',
																'Lord Don’t Slow Me Down',
																'Shakermaker',
																'All Around the World',
																'Some Might Say',
																'he Importance of Being Idle',
																'D’You Know What I Mean?',
																'Be Here Now',
																'Lyla',
																'Let There Be Love',
																'Don’t Believe the Truth',
																'Go Let It Out',
																'Who Feels Love?',
																'Little by Little',
																'The Shock of the Lightning',
																'She Is Love',
																'Whatever',
																'I’m Outta Time',
																'Falling Down',
																'Sunday Morning Call'
																);

