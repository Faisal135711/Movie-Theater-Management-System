create or replace view TestView
	as
	select s_id, h_id,showDate from schedule where m_id in (select movieId from movies where title = 'Gemini Man');

create or replace view TestViewPanthapath
	as
	select s_id, h_id,showDate from schedule@Panthapath where m_id in (select movieId from movies@Panthapath where title = 'Joker');

create or replace view TestViewBanani
	as
	select s_id, h_id,showDate from schedule@Banani where m_id in (select movieId from movies@Banani where title = 'Interstellar');