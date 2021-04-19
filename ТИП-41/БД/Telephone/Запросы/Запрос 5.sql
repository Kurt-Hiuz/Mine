select w.name_worker, count(c.id_worker) as 'Calls' from workers w, call c
where w.id_worker = c.id_worker
group by c.id_worker, w.name_worker
order by calls desc