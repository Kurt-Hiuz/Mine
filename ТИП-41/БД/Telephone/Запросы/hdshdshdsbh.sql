select w.ID_worker, w.Name_worker, w.Telephone_num, c.call_date, count(c.ID_call) as 'Количество звонков',
sum(c.Minutes_talked) as 'Всего минут разговора' from workers w, call c
where (c.ID_worker = w.ID_worker) and ('+79168817186' = w.Telephone_num) and (c.call_date between '7.04.2021' and '8.04.2021')
group by w.ID_worker, w.Name_worker, w.Telephone_num, c.call_date