select sum(c.minutes_talked) as 'Всего минут разговора', w.name_worker from call c, workers w
where c.id_worker = w.id_worker
group by w.id_worker, w.name_worker