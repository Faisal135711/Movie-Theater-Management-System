select s_id, h_id from schedule where m_id in (select movieId from movies where title = 'Joker');