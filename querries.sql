use e_commerce;

select p.bezeichnung, b.menge, k.vorname, k.nachname, l.bezeichnung
from bestellung b
join kunde k on k.ku_id = b.ku_id
join produkt p on p.pr_id = b.pr_id
join kategorie ka on ka.ka_id = p.ka_id
join lieferant l on l.li_id = p.li_id


select p.bezeichnung, sum(b.pr_id)
from bestellung b
join produkt p on p.pr_id = b.pr_id
group by p.bezeichnung
order by sum(b.pr_id) desc;

