SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja ps ON w.id_pensji = ps.id_pensji
WHERE ps.kwota > 1000;
