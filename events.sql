-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 10:46 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE Database sampled;
use sampled;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampled`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
  `Topic` varchar(1000) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Abstract` text NOT NULL,
  `Location` varchar(500) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Image` text NOT NULL,
  `Doc` text NOT NULL,
  `Speaker` text NOT NULL,
  `Stime` text NOT NULL,
  `Etime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `Topic`, `Abstract`, `Location`, `Date`, `Type`, `Image`, `Doc`, `Speaker`, `Stime`, `Etime`) VALUES
(1, 'Hoover Institution Virtual Policy Briefing Series\r\n', 'The Hoover Institution presents an online virtual briefing series on pressing policy issues, including health care, the economy, democratic governance, and national security. Briefings will include thoughtful and informed analysis from our top scholars.\r\n', 'Zoom Webinar\r\n', 'Thursday, April 16, 2020 | 11:00 amÂ  PT | 2:00 pm ET\r\n', 'SEMINAR\r\n', '', '', '', '', ''),
(2, 'HIP WEBINAR: Sweet Rewards â€“ Easy ways to Reduce Sugar and Improve Your Health\r\n', 'Studies show that we consume three times the recommended daily limit of added sugar, contributing to a number of health risks including type II diabetes, high blood pressure, abnormal cholesterol levels, obesity, and cardiovascular disease. The good news: you can reverse these trends with simple changes to the way you eat while still enjoying the foods you love.\r\n\r\n', 'At your computer/device\r\n', 'Thursday, April 16, 2020,Thursday, April 16, 2020  \r\n', 'CLASS\r\n', '', '', '', '', ''),
(3, 'How to Be a Good Boss During Trying Times\r\n', 'WHAT leaders do during tough times is as important as HOW they do it.  How to use predictability, understanding, and control to bolster employee well-being and performance.  Why compassionate, caring, and ruthless leadership is more crucial in bad times than good. \r\n', 'ONLINE\r\n', 'Thursday, April 16, 2020  12:00 pm â€“ 1:00 pm  \r\n', 'OTHER\r\n', '', '', '', '', ''),
(4, 'From COVID19 to Cholera: Repeating Patterns in Iranian Pandemic History (Online)\r\n', 'Why has the novel coronavirus (COVID19) pandemic been so widespread and deadly in Iran and what are the consequences of the outbreak? This lecture will attempt to answer these questions by presenting a timeline of the COVID19 outbreak in Iran and the historic and political determinants that shape Tehranâ€™s public health policy against the pandemic.\r\n', 'Live webcast \r\n', 'Thursday, April 16, 2020  12:00 pm â€“ 1:00 pm  \r\n', 'Lecture / Reading\r\n', '', '', '', '', ''),
(5, 'Virtual Q&A with Deborah Stipek: Learning at Home with Your Infants, Toddlers, and Preschoolers\r\n', 'Zoom Webinar\r\nEvent Details:  All listed times are in the Pacific time zone.  A Zoom Webinar ID passcode and reminder will be provided to all registered guests by email at 12noon on Friday, April 17.  As large numbers of child and daycare centers close to contain the spread of the novel coronavirus, how can we create learning opportunities at home for our youngest children?   Join us for a virtual Q&A over Zoom with Professor Deborah Stipek and early education director Renee Scott, MA â€™05, PhD â€™12. Deborah and Renee will answer your questions and provide guidance and strategies that parents and caregivers can apply at home with their littlest learners.  Audience: parents of pre-K children, teachers or instructors interested in working with parents of pre-K children, and anyone interested in supporting pre-K learners.\r\n', 'Zoom Webinar\r\n', 'Friday, April 17, 2020 1:00 pm â€“ 1:45 pm \r\n', 'Lecture / Reading\r\n', '', '', '', '', ''),
(6, 'Earth Day Future 50: A Celebration (Virtual Event)\r\n', 'Event Details:  Please note: Due to the global health situation with COVID-19, also called the coronavirus, this event will now be live-streamed only. You will receive more information for the live-stream weblink after you RSVP.  Join the Stanford Woods Institute for the Environment for a virtual celebration of the 50th anniversary of Earth Day. The public is welcome to join Stanford students, staff and faculty as we gather online to hear reflections on how far we have come since the first Earth Day in 1970 and what the next 50 years may hold for the future of the Earth.   The program will include reflections from Stanford President Marc Tessier-Lavigne, one of the original organizers of Earth Day, Denis Hayes and Stanford Engineering Professor, Perry L. McCarty who was at the first Earth Day celebration at Stanford. There will also be a panel discussion featuring Stanford alumni working at the intersections of energy, sustainability and the environment. These emerging leaders will share their perspectives on progress made and what governments, companies, academics and private citizens can do to give the planet and people living on it the best hope for a bright and sustainable future.\r\n', 'Online\r\n', 'Monday, April 20, 2020 01:00 pm â€“ 3:00 pm \r\n', 'CONFERENCE/SYMPOSIUM\r\n', '', '', '', '', ''),
(7, 'DLCL Film Series: Il Sorpasso\r\n', 'Event Details:  Please join us this quarter for the Spring 2020 DLCL Film Series - Shelter in Place Edition. The theme of the film series this quarter is, very appropriately: \"Travels\"   On the scheduled dates (see attached poster), we plan to gather on Zoom before and after watching the movie from the comfort of our homes, for a quick presentation and a relaxed discussion. Please let us know if you are interested in joining us, and feel free to reach out with any question. We will circulate a Zoom meeting link before every movie.   We will begin with Il Sorpasso (1962). All three movies are available online: Il Sorpasso and Tokyo Story are on Kanopy, while Darjeeling Limited is on Amazon Prime and Hulu.\r\n', 'Zoom\r\n', 'Friday, April 24, 2020 04:30 pm â€“ 08:00 pm \r\n', 'SCREENING\r\n', '', '', '', '', ''),
(8, 'CANCELED: Raphael Transfigured: Colm TÃ³ibÃ­n\r\n', 'Event Details:  As a precautionary measure in response to the novel coronavirus (COVID-19), the Department of Art and Art History is canceling certain upcoming programs, and temporarily closing both the Stanford Art Gallery and Coulter Art Gallery. We appreciate your understanding during this time. Please visit healthalerts.stanford.edu for the latest information.   Raphael died on April 6, 1520, and the whole of Europe mourned the loss of God\'s gift to humankind. No other painterâ€”we read in the letters that flooded Rome after the news brokeâ€”was as divine, as inspired, and as graceful as Raphael. The funeral cost as much as a Renaissance palace and he was buried in the Pantheon, the temple of all gods, an honor no other mortal has ever been granted. Still today, 1520 marks a point of no return in art historical narratives, the passage from the extraordinary inventions of the High Renaissance to the precious repetition of forms that goes under the name of Mannerism. Raphael\'s death turned the artistic lights of Rome off; his pupils fled the papal city to work in other European courts. The geography of art has never been the same.  To commemorate the 500th anniversary of this artistic earthquake, the Department of Art and Art History has organized Raphael Transfigured: Three Lectures on the Occasion of the 500th Anniversary of the Great Artist\'s Death. The painter Enrique Martinez Celaya (Monday, April 6) and the writers Rachel Cusk (Tuesday, April 14) and Colm TÃ³ibÃ­n will share what Raphael has meant for them and reflect on the legacy of his work for contemporary culture at large.  Join us on Wednesday, May 20, for \"The Dynamic Gaze,\" a lecture by Colm TÃ³ibÃ­n.   Colm TÃ³ibÃ­n is the author of nine novels, including The Blackwater Lightship; The Master, winner of the Los Angeles Times Book Prize; Brooklyn, winner of the Costa Book Award; The Testament of Mary; and Nora Webster, as well as two story collections, and Mad, Bad, Dangerous to Know, a look at three nineteenth-century Irish authors. He is the Irene and Sidney B. Silverman Professor of the Humanities at Columbia University. Three times shortlisted for the Man Booker Prize, Toibin lives in Dublin and New York.  Image: Raphael. Untitled (Self-portrait on paper). 1498-1520. The British Museum, London. Â© The Trustees of the British Museum  Visitor Information: Oshman Hall is located in the McMurtry Building on the Stanford campus at 355 Roth Way. Visitor parking is free after 4 pm on weekdays, except by the Oval. Alternatively, take the Caltrain to Palo Alto Transit Center and ride the free Stanford Marguerite Shuttle.  Connect with the Department of Art & Art History! Subscribe to our mailing list and follow us on Facebook and Instagram. \r\n', 'Mayfair,Viveksland', 'Wednesday, May 20, 2020   \r\n', 'CANCELED\r\n', '', '', '', '', ''),
(9, 'Everyday Work Practices in Retail Banking and E-governance', 'This talk has two parts: the first on retail banking by Soumyo Das, and the second on e-governance by Rajesh. ICTs, Everyday Work Practices and the Skill Question in Retail Banking in India: An Ethnographic Case Study -- According to a recent McKinsey report (2018), 45% of activities individuals are paid to perform in present times can be automated by adapting currently demonstrated technologies. Major concerns around this current phase of automation include the implications of AI-based automation on human skills and employability, understanding the process of deskilling and reskilling, and the process of redesigning occupations around such automation processes. Barely thirty years ago, similar concerns were raised about information technology (IT), which was considered to be the final answer to “the labour question” (Zuboff 1988). However, historical studies of automation have pointed out that in practice, notions of skill are not shaped by the introduction of new technologies alone, but rather by a complex relationship between technology, work and organisations (Spenner 1983, Adler 1988). In this talk, I will explore this complex relationship within the organisational context of a Public Sector retail bank in India.', 'Dinkelspiel Auditorium', 'Monday, February 24, 2020. 9:30 am', 'Social', '', '', '', '', ''),
(10, 'Thesis Title Architecture Model Based Safety Assurance and Validation Framework\r\n', 'Safety Assurance and validation of complex avionics systems has always been a challenge. Real time monitoring of safety critical parameters during hardware software integration testing is adopted as a method in some of the safety critical systems. Safety Parameters specific to execution platform Environment and specific to the domain, are identified and monitored. This method can capture unexpected failures, but relatively late in the development life cycle. Hence leads to revisions in requirements and design, resulting in time and cost overruns. This can be avoided, if the safety analyst and system engineers could base their work on a common architecture model, utilizing model-based development, to manage complexity. The model can address safety and functionality requirements with equal emphasise. In an attempt towards this, AADL (Architecture Analysis and Design Language) and its error annex (EMV2) is selected as modelling language. The model is named as extended model as it is extending nominal model with fault behaviour. A Systematic method for arriving at extended model is required to incorporate all aspects of normal and faulty behaviour scenarios to be addressed. Such a modelling process is arrived at keeping in view of input and output completeness and state completeness. As further step in model-based development towards safety analysis, safety properties of the execution platform and avionics domain are derived from DO-178C, ARP 4761, ARP 4754, MIL-HDBK-516B and from domain experience. These safety properties also form part of our extended model, with the help of BLESS annex of AADL. The model is further analysed using analysis capabilities provided by OSATE, making it more complete and consistent. But for safety validation and airworthiness certification of the system, safety properties and requirements are to be demonstrated in the actual execution environment. Towards this we propose a framework for automatic generation of safety validation test cases, from the extended Model. The framework is realised in the following', 'Newsouthwales,Viveksplace', ' Friday, November 21, 2020. 12:30 am\r\n', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
