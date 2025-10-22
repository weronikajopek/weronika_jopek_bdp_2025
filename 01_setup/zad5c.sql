SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja ps ON w.id_pensji = ps.id_pensji
WHERE (w.id_premii IS NULL OR w.id_premii = 4 OR w.id_premii = 7 OR w.id_premii = 10) 
AND ps.kwota > 2000;
