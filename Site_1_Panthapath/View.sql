create or replace view TestView
	as
	select s_id, h_id,showDate from schedule where m_id in (select movieId from movies where title = 'Joker');

create or replace view TestViewBashundhara
    as
    select s_id, h_id,showDate from schedule@Bashundhara where m_id in (select movieId from movies@Bashundhara where title = 'Gemini Man');

create or replace view TestViewBanani
    as
    select s_id, h_id,showDate from schedule@Banani where m_id in (select movieId from movies@Banani where title = 'Interstellar');