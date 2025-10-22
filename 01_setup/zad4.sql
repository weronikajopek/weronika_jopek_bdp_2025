INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'ul. Kwiatowa 1', '123456789'),
('Anna', 'Kowalska', 'ul. Leśna 2', '987654321'),
('Piotr', 'Wiśniewski', 'ul. Polna 3', '111222333'),
('Julia', 'Zielińska', 'ul. Wiosenna 4', '444555666'),
('Michał', 'Kamiński', 'ul. Jesienna 5', '777888999'),
('Katarzyna', 'Lewandowska', 'ul. Letnia 6', '222333444'),
('Tomasz', 'Dąbrowski', 'ul. Słoneczna 7', '555666777'),
('Joanna', 'Nowicka', 'ul. Różana 8', '888999000'),
('Marcin', 'Kaczmarek', 'ul. Lipowa 9', '999000111'),
('Monika', 'Wójcik', 'ul. Klonowa 10', '333444555');


INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('kierownik', 5000),
('specjalista', 2500),
('asystent', 1800),
('pracownik', 1200),
('specjalista', 2700),
('kierownik', 5200),
('asystent', 2000),
('pracownik', 1300),
('specjalista', 2800),
('pracownik', 1500);


INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('roczna', 1000),
('miesięczna', 200),
('roczna', 1500),
(NULL, 0),
('miesięczna', 300),
('roczna', 1200),
(NULL, 0),
('miesięczna', 250),
('roczna', 900),
(NULL, 0);


INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 170, 1),
('2025-10-02', 160, 2),
('2025-10-03', 180, 3),
('2025-10-04', 155, 4),
('2025-10-05', 165, 5),
('2025-10-06', 160, 6),
('2025-10-07', 175, 7),
('2025-10-08', 150, 8),
('2025-10-09', 190, 9),
('2025-10-10', 160, 10);


INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-31', 1, 1, 1, 1),
('2025-10-31', 2, 2, 2, 2),
('2025-10-31', 3, 3, 3, 3),
('2025-10-31', 4, 4, 4, 4),
('2025-10-31', 5, 5, 5, 5),
('2025-10-31', 6, 6, 6, 6),
('2025-10-31', 7, 7, 7, 7),
('2025-10-31', 8, 8, 8, 8),
('2025-10-31', 9, 9, 9, 9),
('2025-10-31', 10, 10, 10, 10);
