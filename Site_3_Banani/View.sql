create or replace view TestView
	as
	select s_id, h_id,showDate from schedule where m_id in (select movieId from movies where title = 'Interstellar');

create or replace view TestViewBashundhara
    as
    select s_id, h_id,showDate from schedule@Bashundhara where m_id in (select movieId from movies@Bashundhara where title = 'Gemini Man');

create or replace view TestViewPanthapath
    as
    select s_id, h_id,showDate from schedule@Panthapath where m_id in (select movieId from movies@Panthapath where title = 'Joker');