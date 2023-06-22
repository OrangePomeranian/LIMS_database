-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Cze 2023, 08:31
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kkkkk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `authority`
--

CREATE TABLE `authority` (
  `id_authority` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_position_list` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `authority`
--

INSERT INTO `authority` (`id_authority`, `id_user`, `id_position_list`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact_details`
--

CREATE TABLE `contact_details` (
  `id_contact_details` int(11) NOT NULL,
  `tel_number` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `contact_details`
--

INSERT INTO `contact_details` (`id_contact_details`, `tel_number`, `email`, `adress`, `id_user`) VALUES
(1, '603992781', 'pedro@gmail.com', 'ul. Ostatnich z Nas 13', 1),
(2, '777969438', 'ramsey@gmail.com', 'ul. Ostatnich z Nas 14', 2),
(3, '465225984', 'koperek@gmail.com', 'ul. Jedzących Koperek 13', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `equipment`
--

CREATE TABLE `equipment` (
  `id_equipment` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `production_year` year(4) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `equipment`
--

INSERT INTO `equipment` (`id_equipment`, `name`, `production_year`, `producer`, `id_user`) VALUES
(1, 'System do izolacji DNA/RNA', 2023, 'Biosan', 1),
(2, 'Spektrofotometr ', 2016, 'NanoDrop ', 2),
(3, 'Termocykler', 2010, 'Life Technologies', 3),
(4, 'Termocykler 351', 2013, 'Świetliki', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `equipment_methods`
--

CREATE TABLE `equipment_methods` (
  `id_equipment_methods` int(11) NOT NULL,
  `id_methods` int(11) NOT NULL,
  `id_equipment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `equipment_methods`
--

INSERT INTO `equipment_methods` (`id_equipment_methods`, `id_methods`, `id_equipment`, `id_user`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiments`
--

CREATE TABLE `experiments` (
  `id_experiments` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date DEFAULT NULL,
  `experiment_details` text NOT NULL,
  `result` text DEFAULT NULL,
  `id_projects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `experiments`
--

INSERT INTO `experiments` (`id_experiments`, `name`, `start_date`, `finish_date`, `experiment_details`, `result`, `id_projects`) VALUES
(1, 'Gangrene test', '2023-04-05', '2023-04-27', 'During the test, a healthcare professional assesses the affected area visually and may perform additional diagnostic procedures such as imaging tests (such as X-rays, MRI, or CT scans) and blood tests to evaluate the blood flow, oxygen levels, and presence of infection in the affected tissues.\r\n\r\nThe results of the test help healthcare providers determine the appropriate treatment plan, which may include surgical intervention, debridement (removal of dead tissue), antibiotics to control infection, and management of underlying medical conditions contributing to reduced blood supply.\r\n\r\nEarly detection and prompt treatment are crucial in cases of gangrene to prevent further tissue damage and potential complications. If you suspect gangrene or have symptoms such as severe pain, discoloration, or a foul smell in a specific body part, it is important to seek immediate medical attention for a thorough evaluation and appropriate management.', 'positive', 1),
(2, 'Hemopila', '2023-04-06', '2023-04-21', 'The most common test for hemophilia is a blood clotting factor assay, which measures the levels of specific clotting factors in the blood. This test helps determine whether a person has hemophilia A (deficiency of factor VIII) or hemophilia B (deficiency of factor IX) and assesses the severity of the condition based on the clotting factor levels.\r\n\r\nAdditionally, genetic testing may be conducted to identify specific genetic mutations responsible for hemophilia. This testing can provide valuable information about the inheritance pattern of the disorder and help diagnose carriers of the hemophilia gene.\r\n\r\nThe results of the hemophilia test guide healthcare providers in developing an appropriate treatment plan. Treatment options for hemophilia may include factor replacement therapy, which involves infusing the deficient clotting factors to promote normal blood clotting. Other supportive measures, such as medication to control bleeding episodes and physical therapy, may also be recommended.\r\n\r\nRegular monitoring of clotting factor levels and follow-up testing help healthcare providers assess the effectiveness of treatment and adjust the management plan accordingly.', 'negative', 2),
(3, 'Trichina testing ', '2023-04-04', '2023-04-29', 'The most common method for Trichina testing is the muscle biopsy test. During this test, a small sample of muscle tissue, usually from the diaphragm, is collected and examined under a microscope for the presence of Trichinella larvae. This test allows for the identification and confirmation of Trichinella infection.\r\n\r\nIn addition to muscle biopsy, serological tests may also be performed to detect antibodies produced by the body in response to Trichinella infection. These tests involve analyzing a blood sample for the presence of specific antibodies, indicating exposure to Trichinella.\r\n\r\nIf Trichinella infection is suspected, it is important to seek immediate medical attention for proper testing and diagnosis. Early detection of Trichinella infection is crucial for initiating appropriate treatment, as the infection can cause severe symptoms and complications if left untreated.\r\n\r\nPreventing Trichinella infection involves practicing safe food handling and cooking practices, such as thoroughly cooking meat to a safe internal temperature and avoiding the consumption of raw or undercooked meat. Awareness of the potential risks and proper education about food safety can help minimize the risk of Trichinella infection.\r\n\r\nIf you suspect Trichinella infection or have concerns about consuming potentially contaminated meat, consult a healthcare professional for evaluation, testing, and appropriate management of the condition.', 'negative', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `methods`
--

CREATE TABLE `methods` (
  `id_methods` int(11) NOT NULL,
  `naame` varchar(45) NOT NULL,
  `procedures` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `methods`
--

INSERT INTO `methods` (`id_methods`, `naame`, `procedures`) VALUES
(1, ' DNA Isolation', '\r\n	1. Each student signs their initials on a 1.5 ml tube containing a milk sample and on a new 1.5 ml tube.\r\n	2. Add 20 μl of proteinase K solution to the empty tube.\r\n	3. Then add 300 μl of milk.\r\n	4. Add 200 μl of Lysis Solution C.\r\n	5. Vortex for 15 seconds, then incubate for 10 minutes at a temperature of 55 μC.\r\n	6. Prepare a column. Apply 500 μl of Column Preparation Solution to the column.\r\n	7. Spin at 12,000 rpm for 1 minute, and discard the supernatant.\r\n	8. Add 200 μl of ethanol (95-100%) to the lysate from step 4, vortex.\r\n	9. Transfer the entire contents of the tube to the column from step 8, then spin at a speed > 6,500 rpm (11,000) for 1 minute.\r\n	10. Discard the tube with the supernatant and place the column in a new 2 ml tube.\r\n	11. Add 500 μl of previously prepared Prewash Solution Concentrate or Wash Solution Concentrate to the column, then spin at a speed > 6,500 rpm (11,000) for 1 minute.\r\n	12. Remove the tube with the supernatant, and place the column in a new 2 ml tube.\r\n	13. Add 500 μl of Wash Solution Concentrate to the column, then spin at maximum speed (12,000-16,000 rpm) for 3 minutes. The column should not contain any ethanol. If ethanol is present, spin at maximum speed for an additional 1 minute.\r\n	14. Remove the tube with the supernatant, and place the column in a new 2 ml tube.\r\nAdd 50 μl of Elution Solution directly to the center of the column, then spin at a speed > 6,500 rpm (14,000) for 1 minute. For increased yield, incubate at room temperature for 5 minutes, then spin.'),
(2, 'Quantitative and Qualitative DNA Analysis', '1. Power on the device by connecting it to the electrical outlet.\r\n2. Remove the tissue located between the electrodes.\r\n3. Click on the ND 1000 program icon on the desktop.\r\n4. Enter the username: ??? Password: ???\r\n5. Click on Nucleic Acid.\r\n6. Clean the electrodes with a clean tissue.\r\n7. Pipette 1µl of H2O directly onto the electrode and close it. Ensure that a bridge forms between the electrodes.\r\n8. Click Ok to start the device operation.\r\n9. Open and clean the electrode again with a tissue.\r\n10. Perform a nanodrop calibration by conducting a blank test - pipette 1 µl of RNase/DNase-free water onto the electrode and click Blank. Open and clean the electrode from water by wiping it with a tissue.\r\n11. Apply 1 µl of the sample onto the electrode.\r\n12. Press Measure.\r\n13. Wipe the electrode with a clean tissue and proceed to the next sample.\r\n14. After finishing the sample analysis, clean the electrode with water and a tissue.\r\n15. Place the clean tissue back between the electrodes and cover the Nanodrop.\r\nDisconnect the device from the electrical outlet to power it off.'),
(3, 'PCR', 'PCR:\r\n1. Each student must label a clean tube with their initials.\r\n2. Prepare the reaction mixture according to the instructions provided below (mixture for 1 sample): The total volume of the reaction mixture is 25 μl.\r\n3. One person in the group prepares a negative control for the isolation - this involves preparing the PCR reaction mixture as described in step 2, but instead of adding DNA template, add deionized water.\r\n4. Once everyone has prepared their reaction mixture, the instructor should spin down all the samples at 1,200 rpm (160 rcf) for 1 minute to ensure that all the components are mixed and settled at the bottom of each tube.\r\n5. Place all the PCR reactions in the thermocycler. This device automatically heats the lid and maintains a constant temperature of 105°C on the top of each reaction tube, preventing evaporation of the mixture.\r\n6. Select the appropriate program on the thermocycler. The thermal cycling conditions should be as follows:\r\n• Initial denaturation - 94°C, 5 minutes;\r\n• PCR cycles - 35 cycles consisting of:\r\n• Denaturation - 94°C, 30 seconds\r\n• Primer annealing - 60°C, 30 seconds\r\n• Extension - 72°C, 1 minute\r\n• Post-PCR:\r\n• Final extension - 72°C, 15 minutes\r\n• Product storage - 4°C\r\n7. The PCR reaction takes approximately 1.5 hours. After the thermocycler has finished its run, remove the samples from the block and store them at -20°C for further analysis.\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `overview`
--

CREATE TABLE `overview` (
  `id_overview` int(11) NOT NULL,
  `details` text DEFAULT NULL,
  `id_equipment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `overview`
--

INSERT INTO `overview` (`id_overview`, `details`, `id_equipment`) VALUES
(1, 'Model: BioMagPure 12 Plus.\r\nIt is a compact, tabletop workstation for the automated purification of nucleic acids.\r\nDetails: https://www.e-biosan.pl/Urzadzenia-do-diagnostyki-PCR/system-do-izolacji-dna-rna-biosan-biomagpure-12,download-pdf.html\r\nProcess Duration [min]: 45-60\r\nProcessing Capacity: 1-12 samples per cycle\r\nExtraction Technology: magnetic bead separation technology\r\nProtocol: programmable via barcode scanning\r\nProtocol Input: barcode scanner\r\nSample Volume [µL]: 10-2000 (depending on the kit)\r\nElution Volume [µL]: 50-400\r\nPC Connection: not required\r\nDisplay: LCD (20 x 4)\r\nCertification: CE, IVD\r\nPower Supply [V / Hz]: 230 / 50\r\nDimensions (W x D x H) [mm]: 560 x 590 x 510\r\nWeight [kg]: 55', 1),
(2, 'Model: NanoDrop Lite Spectrophotometer\r\nAn instrument used for assessing the quality of isolated DNA.\r\nDetails: https://www.spectro-lab.pl/wp-content/uploads/2017/04/NanoDrop.pdf\r\nTypes of measurements:\r\n- Accurate and repeatable quantitative and qualitative analysis of samples with a volume of 1 µl;\r\n- Measurement of DNA and RNA concentration at 260 nm and analysis of purity based on the 260/280 ratio;\r\n- Measurement of protein concentration at 280 nm;\r\n- Thermal printer option with docking station for the spectrophotometer. Possibility of printing on cryogenic labels (from -70°C to -196°C).\r\nMinimum sample volume: 1 μl\r\nNumber of analyzed samples: 1\r\nPath length: nominal 0.5 mm\r\nLight source: electroluminescent diodes (LED)\r\nDetector: silicon photodiode\r\nMeasurement range: 260 and 280 nm\r\nSpectral resolution: ≤ 8 nm', 2),
(3, 'Model: 7500 Fast Food Safety RT PCR System Thermocycler.\r\nIt is an integrated and versatile real-time PCR system that combines thermal cycling, fluorescence detection, and application-specific software to measure the cycle-by-cycle accumulation of PCR products in a homogeneous reaction in a single tube.\r\nBlock Configuration: 1 x 96-well 0.1 ml\r\nCapacity: 12 x 8-tube strips, 1 x 96-well plate (fast)\r\nSample Volume: 5-30 μl (optimal volume 10 μl)\r\nMax. Ramp Rate: 3°C/s (block), 1.6°C/s (sample Standard Mode), 3.5°C/s (sample Fast Mode)\r\nTemperature Uniformity: <0.5°C (20 s after reaching 95°C)\r\nTemperature Accuracy: ±0.25°C (35°C to 99.9°C)\r\nTemperature Range: 4°C to 100°C\r\nThermal Cycling System: Peltier-based system.', 3),
(4, 'Model: BioMagPure 12 Plus.\r\nThis is a compact, tabletop workstation for the automated purification of nucleic acids.\r\nDetails: https://www.e-biosan.pl/Urzadzenia-do-diagnostyki-PCR/system-do-izolacji-dna-rna-biosan-biomagpure-12,download-pdf.html\r\nProcess Duration [min]: 45-60\r\nProcessing Capacity: 1-12 samples per cycle\r\nExtraction Technology: magnetic bead separation technology\r\nProtocol: programmable via barcode scanning\r\nProtocol Input: barcode scanner\r\nSample Volume [µL]: 10-2000 (depending on the kit)\r\nElution Volume [µL]: 50-400\r\nPC Connection: not required\r\nDisplay: LCD (20 x 4)\r\nCertification: CE, IVD\r\nPower Supply [V / Hz]: 230 / 50\r\nDimensions (W x D x H) [mm]: 560 x 590 x 510\r\nWeight [kg]: 55', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `position_list`
--

CREATE TABLE `position_list` (
  `id_position_list` int(11) NOT NULL,
  `position_name` varchar(45) NOT NULL,
  `position_details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `position_list`
--

INSERT INTO `position_list` (`id_position_list`, `position_name`, `position_details`) VALUES
(1, 'Laboratory menager', 'It\'s a lab manager\'s job to schedule lab or e'),
(2, 'Bioinformatic', 'Bioinformatics specialists collect, manage, a'),
(3, 'Lab technician', 'Lab Technician responsibilities include: Rece');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projects`
--

CREATE TABLE `projects` (
  `id_projects` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `project_details` text DEFAULT NULL,
  `finish` tinyint(4) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date DEFAULT NULL,
  `id_chef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `projects`
--

INSERT INTO `projects` (`id_projects`, `name`, `project_details`, `finish`, `start_date`, `finish_date`, `id_chef`) VALUES
(1, 'Blood test', 'A test done on a sample of blood to measure the amount of certain substances in the blood or to count different types of blood cells. Blood tests may be done to look for signs of disease or agents that cause disease, to check for antibodies or tumor markers, or to see how well treatments are working.', 3, '2023-04-04', '2023-04-21', 1),
(2, 'Muscle biopsy', 'Procedure used to diagnose diseases involving muscle tissue. Your healthcare provider will remove tissue and cells from a specific muscle and view them microscopically. Your provider will only need to remove a small piece of tissue from the designated muscle.', 4, '2023-04-02', '2023-04-28', 2),
(3, 'Bacterial Colony Testing', 'Bacterial colony testing in the gut is a diagnostic procedure that assesses the composition of bacteria in the gastrointestinal tract. It involves analyzing a stool sample to identify and characterize bacterial colonies. This helps determine the presence of normal gut flora and potentially harmful bacteria. The test provides valuable information about gut microbial balance and can detect imbalances associated with conditions like bacterial infections or intestinal dysbiosis. Molecular testing methods like PCR can be used to detect specific bacterial species. Understanding gut bacterial colonies aids in diagnosing and managing gastrointestinal conditions, guiding treatment strategies for optimal gut health.', 5, '2023-04-01', '2023-04-21', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_workers`
--

CREATE TABLE `project_workers` (
  `id_project_workers` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_projects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `project_workers`
--

INSERT INTO `project_workers` (`id_project_workers`, `id_user`, `id_projects`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samples`
--

CREATE TABLE `samples` (
  `id_sample` int(11) NOT NULL,
  `collection_date` date NOT NULL,
  `temp` double NOT NULL,
  `id_samples_list` int(11) NOT NULL,
  `id_experiments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `samples`
--

INSERT INTO `samples` (`id_sample`, `collection_date`, `temp`, `id_samples_list`, `id_experiments`) VALUES
(1, '2023-04-04', -20, 1, 1),
(1, '2023-04-05', -20, 2, 2),
(3, '2023-04-06', 2, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samples_lista`
--

CREATE TABLE `samples_lista` (
  `id_samples_list` int(11) NOT NULL,
  `details` text DEFAULT NULL,
  `recommended_storage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `samples_lista`
--

INSERT INTO `samples_lista` (`id_samples_list`, `details`, `recommended_storage`) VALUES
(1, 'saliva\r\n', 'Immediately after saliva collection, it is recommended to freeze the samples at or below -20 ºC. If a freezer is not available, specimens can be stored at 4 ºC to prevent bacterial growth and further degradation of salivary molecules (no longer than 6 h)'),
(2, 'muscle tissue', 'Immediately after saliva collection, it is recommended to freeze the samples at or below -20 ºC. If a freezer is not available, specimens can be stored at 4 ºC to prevent bacterial growth and further degradation of salivary molecules (no longer than 6 h)'),
(3, 'blood', 'Red blood cells and blood storage conditions always require a blood bank refrigerator. They should be stored in these cabinets at 2-6 degrees Celsius. An integrated temperature monitoring apparatus is placed in these refrigerators for red blood cells and blood, and this apparatus gives a warning via an alarm if the temperature is not evenly distributed among the elements inside. The most important point to ensure blood storage conditions is to catch and maintain the right temperature. Bacterial contamination and growth in the blood are reduced to a minimum at 6 degrees Celsius, which is specified as the aforementioned upper limit. In this way, the correct blood storage conditions are provided.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `PESEL` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id_user`, `name`, `surname`, `PESEL`) VALUES
(1, 'Pedro', 'Pascal', '12121212121'),
(2, 'Bella', 'Ramsey', '34343434343'),
(3, 'Robert', 'Makłowicz', '56565656565');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`id_authority`,`id_user`,`id_position_list`),
  ADD KEY `fk_uprwnienia_Użytkownik1_idx` (`id_user`),
  ADD KEY `fk_uprwnienia_slownik_stanowisk1_idx` (`id_position_list`);

--
-- Indeksy dla tabeli `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id_contact_details`,`id_user`),
  ADD KEY `fk_Dane_kontaktowe_Użytkownik_idx` (`id_user`);

--
-- Indeksy dla tabeli `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id_equipment`,`id_user`),
  ADD KEY `fk_sprzet_Użytkownik1_idx` (`id_user`);

--
-- Indeksy dla tabeli `equipment_methods`
--
ALTER TABLE `equipment_methods`
  ADD PRIMARY KEY (`id_equipment_methods`) USING BTREE,
  ADD KEY `fk_metody_sprzent_metody1_idx` (`id_methods`),
  ADD KEY `fk_metody_sprzent_sprzet1_idx` (`id_equipment`,`id_user`);

--
-- Indeksy dla tabeli `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`id_experiments`,`id_projects`),
  ADD KEY `fk_eksperymenty_projekty1_idx` (`id_projects`);

--
-- Indeksy dla tabeli `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id_methods`);

--
-- Indeksy dla tabeli `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`id_overview`,`id_equipment`),
  ADD KEY `fk_przeglond_sprzet1_idx` (`id_equipment`);

--
-- Indeksy dla tabeli `position_list`
--
ALTER TABLE `position_list`
  ADD PRIMARY KEY (`id_position_list`);

--
-- Indeksy dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_projects`,`id_chef`),
  ADD KEY `fk_projekty_Użytkownik1_idx` (`id_chef`);

--
-- Indeksy dla tabeli `project_workers`
--
ALTER TABLE `project_workers`
  ADD PRIMARY KEY (`id_project_workers`,`id_user`,`id_projects`),
  ADD KEY `fk_pracownicy_projektu_Użytkownik1_idx` (`id_user`),
  ADD KEY `fk_pracownicy_projektu_projekty1_idx` (`id_projects`);

--
-- Indeksy dla tabeli `samples`
--
ALTER TABLE `samples`
  ADD PRIMARY KEY (`id_sample`,`id_samples_list`,`id_experiments`),
  ADD KEY `fk_probki_slownik_probek1_idx` (`id_samples_list`),
  ADD KEY `fk_probki_eksperymenty1_idx` (`id_experiments`);

--
-- Indeksy dla tabeli `samples_lista`
--
ALTER TABLE `samples_lista`
  ADD PRIMARY KEY (`id_samples_list`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id_contact_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `projects`
--
ALTER TABLE `projects`
  MODIFY `id_projects` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `project_workers`
--
ALTER TABLE `project_workers`
  MODIFY `id_project_workers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `authority`
--
ALTER TABLE `authority`
  ADD CONSTRAINT `fk_uprwnienia_Użytkownik1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uprwnienia_slownik_stanowisk1` FOREIGN KEY (`id_position_list`) REFERENCES `position_list` (`id_position_list`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `fk_Dane_kontaktowe_Użytkownik` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `fk_sprzet_Użytkownik1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `equipment_methods`
--
ALTER TABLE `equipment_methods`
  ADD CONSTRAINT `fk_metody_sprzent_metody1` FOREIGN KEY (`id_methods`) REFERENCES `methods` (`id_methods`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_metody_sprzent_sprzet1` FOREIGN KEY (`id_equipment`,`id_user`) REFERENCES `equipment` (`id_equipment`, `id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `experiments`
--
ALTER TABLE `experiments`
  ADD CONSTRAINT `fk_eksperymenty_projekty1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `overview`
--
ALTER TABLE `overview`
  ADD CONSTRAINT `fk_przeglond_sprzet1` FOREIGN KEY (`id_equipment`) REFERENCES `equipment` (`id_equipment`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projekty_Użytkownik1` FOREIGN KEY (`id_chef`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `project_workers`
--
ALTER TABLE `project_workers`
  ADD CONSTRAINT `fk_pracownicy_projektu_Użytkownik1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pracownicy_projektu_projekty1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id_projects`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `samples`
--
ALTER TABLE `samples`
  ADD CONSTRAINT `fk_probki_eksperymenty1` FOREIGN KEY (`id_experiments`) REFERENCES `experiments` (`id_experiments`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_probki_slownik_probek1` FOREIGN KEY (`id_samples_list`) REFERENCES `samples_lista` (`id_samples_list`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
