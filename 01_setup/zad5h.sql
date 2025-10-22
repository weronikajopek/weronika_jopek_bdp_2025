SELECT p.imie, p.nazwisko
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.godziny g ON w.id_godziny = g.id_godziny
WHERE g.liczba_godzin > 160 
  AND (w.id_premii IS NULL OR w.id_premii = 4 OR w.id_premii = 7 OR w.id_premii = 10);
