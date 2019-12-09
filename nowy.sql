SELECT DISTINCT
wnd.id as wnd_id,
projects.numer_wniosku,
projects.data_wyb_do_dof,
wnd_zadania.sort+1 AS numer_zadania,
wnd_zadania.nazwa,
wnd_zadania.opis,
wnd.data_rozp,
wnd.data_zakon,
lok.powiat,
lok.gmina,
lok.miejscowosc,
CONCAT ('[', ds_project.val,']',' ', ds_project.DESC) 'Status projektu'


FROM projects
	LEFT JOIN wnd ON projects.wnd_id = wnd.id
	LEFT JOIN wnd_zadania ON wnd_zadania.wnd_id=wnd.id
   LEFT JOIN wnd_lokalizacje lok ON  lok.wnd_id = wnd.id
   LEFT JOIN define_statuses ds_project ON ds_project.val = projects.status AND ds_project.arr='project'
	LEFT JOIN nabory ON nabory.id = projects.nabor_id

WHERE nabory.unit_id = 3 and
projects.data_wyb_do_dof > 0
AND
(wnd_zadania.nazwa LIKE CONCAT('%',{cz1},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz2},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz3},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz4},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz5},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz6},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz7},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz8},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz9},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz10},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz11},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz12},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz13},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz14},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz15},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz16},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz17},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz18},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz19},'%') OR
wnd_zadania.nazwa LIKE CONCAT('%',{cz20},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz1},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz2},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz3},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz4},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz5},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz6},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz7},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz8},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz9},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz10},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz11},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz12},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz13},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz14},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz15},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz16},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz17},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz18},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz19},'%') OR
wnd_zadania.opis LIKE CONCAT('%',{cz20},'%'))

ORDER BY 2,4,5