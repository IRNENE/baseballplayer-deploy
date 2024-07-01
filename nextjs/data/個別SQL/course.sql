-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-18 11:22:36
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `baseball`
--

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `course_start` datetime DEFAULT NULL,
  `course_end` datetime DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `type_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) DEFAULT NULL,
  `outline` varchar(255) NOT NULL,
  `valid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `price`, `photo`, `created_at`, `course_start`, `course_end`, `type`, `type_id`, `teacher_id`, `outline`, `valid`) VALUES
(1, '打擊練習教練', '\n這個打擊練習教練課程旨在幫助球員提升他們的打擊技能。課程包含基礎技巧、戰術應用和心理素質的培訓。學生將學習握持和擊球姿勢、擺動動作、擊球範圍的掌握，以及面對不同球種的應對策略。課程還將重點放在如何在比賽中應對不同局勢的技巧上，以及如何在關鍵時刻保持冷靜和專注。透過持續的練習和指導，學生將能夠提高他們的打擊技能，成為更出色的球員。', 100, '1.jpg,KefnewczEE.png', '2024-01-22 10:04:39', '2024-02-02 15:30:00', '2024-06-02 16:30:00', '打擊', '1', '5', '1. 打擊基本姿勢與握持<br> 2. 擊球技巧與練習<br> 3. 動作調整與改進<br> 4. 擊球訓練工具與設備<br> 5. 心理技巧與專注訓練<br> 6. 實戰模擬與比賽情境訓練<br> 7. 體能與力量訓練<br> 8. 教練角色與溝通技巧<br>', 1),
(2, '打擊練習HitTrax發球機餵球', '這個打擊練習課程利用HitTrax發球機為學生提供高效、精準的球速和球種訓練。課程包括150個練習課，涵蓋了從基礎到進階的各種技能和戰術。學生將透過定制的餵球設置，練習應對不同球速和球種的打擊技巧。課程還將教授打擊姿勢、握持、擊球力量控制和打擊範圍調整等基本技巧。此外，學生還將學習如何根據投手的手法和比賽局勢調整打擊策略。透過反覆練習和即時反饋，學生將能夠提高他們的打擊水準，成為更加全面的球員。', 200, '2.jpg', '2024-01-22 10:04:47', '2024-01-29 13:00:00', '2024-05-31 14:00:00', '打擊', '1', '6', '50顆球/ 可即時呈現打擊數據', 0),
(3, '打擊練習\n發球機餵球', '這個打擊練習課程利用HitTrax發球機為學生提供高效、精準的球速和球種訓練。課程包括150個練習課，涵蓋了從基礎到進階的各種技能和戰術。學生將透過定制的餵球設置，練習應對不同球速和球種的打擊技巧。課程還將教授打擊姿勢、握持、擊球力量控制和打擊範圍調整等基本技巧。此外，學生還將學習如何根據投手的手法和比賽局勢調整打擊策略。透過反覆練習和即時反饋，學生將能夠提高他們的打擊水準，成為更加全面的球員。', 100, '3.jpg', '2024-01-22 10:04:51', '2024-01-19 00:00:00', '2024-06-17 00:00:00', '打擊', '1', '6', '50顆球/ 可調速度', 1),
(4, '打擊練習HitTrax教練餵球', '這個打擊練習課程利用HitTrax發球機為學生提供高效、精準的球速和球種訓練。課程包括150個練習課，涵蓋了從基礎到進階的各種技能和戰術。學生將透過定制的餵球設置，練習應對不同球速和球種的打擊技巧。課程還將教授打擊姿勢、握持、擊球力量控制和打擊範圍調整等基本技巧。此外，學生還將學習如何根據投手的手法和比賽局勢調整打擊策略。透過反覆練習和即時反饋，學生將能夠提高他們的打擊水準，成為更加全面的球員。', 200, '4.jpg', '2024-01-22 10:04:55', '2024-04-11 09:01:00', '2024-06-07 09:02:00', '打擊', '1', '1', '25顆/ 可即時呈現打擊數據', 1),
(5, '守備練習教練擊球', '守備練習教練擊球課程旨在提高學生在守備位置上的技能和反應速度。這個課程將通過使用不同速度和角度的擊球機或發球手來模擬真實比賽場景，幫助學生在不同守備位置上進行有效的擊球訓練。課程將涵蓋擊球的基本技巧，包括站位、擊球角度、握持、擺動、以及擊球後的追球和準備再次投球的能力。學生還將學習如何根據不同球種和速度做出適當的守備反應，以及如何在壓力下保持冷靜和準確。透過這個課程，學生將能夠提高他們的守備技能，增強球隊的整體防守能力。', 100, '5.jpg', '2024-01-22 10:04:58', '2024-04-24 09:02:00', '2024-06-05 09:02:00', '守備', '3', '1', '50顆', 1),
(6, '體能練習肌力體能訓練班', ' 這個體能練習肌力體能訓練班旨在提升學員的身體素質和肌力水平。課程結合了多種訓練方法，包括重量訓練、功能性訓練和核心訓練，以幫助學員達到最佳的體能水平。課程將涵蓋以下內容：  身體姿勢和基本動作的評估：學員將接受身體結構和姿勢評估，以確定個人的訓練需求和目標。  基礎肌力訓練：學員將學習如何透過重量訓練和機能訓練來增強全身肌肉力量，包括上半身、下半身和核心部位。  功能性訓練：課程將包括一系列模擬日常活動和運動動作的功能性訓練，以提高學員的身體穩定性、平衡性和協調性。  有氧運動：課程將結合有氧運動，如跑步、跳繩等，以提高心肺功能和耐力。  伸展和恢復：學員將學習伸展和恢復運動，以幫助肌肉恢復，預防運動傷害，並提高靈活性。  這個訓練班將為學員提供全面的肌力和體能訓練，幫助他們在運動和日常生活中表現更出色，同時減少受傷的風險。', 500, '6.jpg', '2024-01-17 10:05:04', '2024-02-23 17:00:00', '2024-06-03 18:00:00', '體能', '4', '9', '固定周六 1700~1800<br> 1.藥球投球發力訓練<br> 2.藥球打擊發力訓練<br> 3.基礎速度體能訓練<br> 4.基礎槓鈴訓練', 1),
(7, '初階課程(6Y-9Y)', '我們的初階課程旨在為6至9歲的學員提供有趣和互動的學習體驗，同時建立他們的運動技能和自信心。以下是課程的主要內容：<br>  基礎運動技能：教授基本的運動動作，如跑步、跳躍、捉球、投球等，以及相關的基礎技術。  <br>手眼協調訓練：透過各種遊戲和活動，提高孩子們的手眼協調能力，包括接球、拋球、擊球等。  平衡和靈活性：通過平衡板、<br>障礙訓練等活動，培養孩子們的平衡感和靈活性，增強身體控制能力。<br>  團隊合作：通過團隊遊戲和合作活動，培養孩子們的合作精神和團隊意識，提高溝通和協作能力。<br>  運動遊戲：結合各種趣味運動遊戲，讓孩子們在玩樂中學習基本運動技能，培養對運動的興趣和熱愛。  <br>這個初階課程將提供一個安全、有趣和具有挑戰性的學習環境，幫助孩子們建立健康的身體素質、積極的運動態度和良好的社交技能。我们相信通過這個課程，孩子們將成為更加自信和健康的個體。', 1000, '7.jpg', '2024-01-12 10:05:08', '2024-03-13 08:54:00', '2024-07-18 08:54:00', '打擊,投球,守備', '1,2,3', '4', '打擊守備投球綜合學習訓練<br> 固定周六 1300~1500', 1),
(8, '初階課程(10Y-12Y)', '我們的初階課程針對10至12歲的學員，旨在建立他們的運動基礎，培養他們的技能和自信心。以下是課程的主要內容：  <br>基礎運動技能：學習和加強基本的運動技能，如跑步、跳躍、捉球、投球等，並透過練習和反覆練習來提高技能水平。  <br>技術訓練：深入學習特定運動領域的技術，例如足球的帶球、傳球和射門，籃球的運球、投籃和防守等，並透過實際應用來提高技術水平。  <br>戰術理解：介紹基本的運動戰術和策略，如隊形、位置轉換、團隊合作等，幫助學員更好地理解比賽的戰術性。  <br>團隊合作：通過團隊遊戲和合作活動，培養學員的合作精神和團隊意識，並提高溝通和協作能力。 <br> 運動競賽：提供比賽和表演的機會，讓學員能夠在實際比賽中應用所學技能，並體驗競爭和合作的樂趣。 <br> 這個初階課程將為學員提供一個全面的運動訓練和成長的機會，幫助他們建立健康的身體素質、積極的運動態度和良好的社交技能。我們相信通過這個課程，學員將成為更加自信、技術優秀且具有良好運動精神的運動員。', 1500, '8.jpg', '2024-01-08 10:05:11', '2024-03-01 00:00:00', '2024-05-17 00:00:00', '打擊,投球,守備', '1,2,3', '1', '打擊守備投球綜合學習訓練<br> 固定周六 1500~1700', 1),
(9, '初階課程(青年/成人)', '我們的初階課程針對青年和成人學員，旨在為他們提供一個全面的運動入門體驗，幫助他們建立健康的身體素質和運動技能。以下是課程的主要內容：  運動基礎知識：<br>介紹各種運動的基本知識，包括規則、技術、戰術等，幫助學員了解不同運動的特點和要求。  <br>基礎運動技能：學習和加強基本的運動技能，如跑步、跳躍、捉球、投球等，並透過練習和指導來提高技能水平。  <br>身體素質訓練：包括力量、耐力、速度、靈活性等方面的訓練，幫助學員建立良好的身體素質和運動能力。 <br> 運動技巧訓練：深入學習特定運動領域的技術，如足球的帶球、傳球和射門，籃球的運球、投籃和防守等，並透過實際應用來提高技術水平。 <br> 健康生活方式：提供健康生活方式的指導和建議，包括飲食、休息、心理健康等方面的知識，幫助學員保持良好的身心健康。  <br>這個初階課程將為學員提供一個全面的運動訓練和成長的機會，幫助他們建立健康的生活習慣、積極的運動態度和良好的身體素質。我們相信通過這個課程，學員將成為更加自信、健康且具有運動技能的個體。', 2500, '9.jpg', '2024-01-25 10:05:16', '2024-04-11 09:01:00', '2024-05-22 09:01:00', '打擊,投球,守備', '1,2,3', '1', '1. 介紹與安全注意事項<br> 2. 基本姿勢與握持<br> 3. 基本擊球技巧<br> 4. 守備技巧<br> 5. 跑壘技巧<br> 6. 球賽規則與戰術<br> 7. 策略與智慧<br> 8. 比賽模擬與實戰演練<br> 9. 體能與訓練<br> 10. 結業評估與回顧<br>', 1),
(10, '初階課程(女性)', '我們的初階課程針對女性學員，旨在為她們提供一個舒適和友善的環境，幫助她們建立健康的身體素質和運動技能。以下是課程的主要內容： <br> 運動基礎知識：介紹各種運動的基本知識，包括規則、技術、戰術等，讓學員了解不同運動的特點和要求。 <br> 基礎運動技能：學習和加強基本的運動技能，如跑步、跳躍、捉球、投球等，並透過練習和指導來提高技能水平。 <br> 身體塑形訓練：包括核心訓練、柔韌度訓練、有氧運動等，幫助學員塑造健美的身體線條，提高體態美感。 <br> 健康生活方式：提供健康生活方式的指導和建議，包括飲食、休息、心理健康等方面的知識，幫助學員保持良好的身心健康。 <br> 社交和支持：提供一個支持和鼓勵的環境，讓學員在課程中建立友誼，互相支持和鼓勵，共同進步。 <br> 這個初階課程將為女性學員提供一個安全、舒適和有趣的學習環境，幫助她們建立健康的生活習慣、積極的運動態度和自信心。我們相信通過這個課程，女性學員將成為更加健康、自信和活力充沛的個體。', 1000, '10.jpg', '2024-03-14 10:05:20', '2024-04-16 10:01:12', '2024-07-11 10:03:20', '打擊,投球,守備', '1,2,3', '3', '打擊守備投球綜合學習訓練<br> 固定周日 1500~1700', 1),
(16, '打擊特訓班', '打擊特訓班是針對棒球或壘球運動員設計的培訓課程，旨在提高他們的打擊技術和能力。以下是一個典型的打擊特訓班的主要內容：<br> <br> 打擊基本功：課程將著重於教授學員打擊的基本技術，包括揮拍姿勢、握拍方式、站位平衡、擊球視線等，建立良好的打擊基礎。<br> <br> 打擊姿勢與擊球區域：學員將學習不同的打擊姿勢和擊球區域，包括如何應對不同類型的球速、球種和球路，以提高在比賽中的應對能力。<br> <br> 打擊訓練技巧：課程將介紹各種打擊訓練技巧，包括使用投球機、擊打運動器材、進行模擬比賽等，以提高學員的打擊速度、力量和精準度。<br> <br> 打擊心理戰：培訓學員如何應對壓力、集中注意力、保持自信心和冷靜頭腦，在比賽中取得更好的表現。<br> <br> 录像分析和反饋：課程可能會使用錄像分析技術，記錄學員的打擊動作，並通過反饋來幫助他們改進技術和提高表現水平。<br> <br> 體能訓練：打擊特訓班通常也包括一些體能訓練，以提高學員的身體素質、爆發力和耐力，從而增強打擊表現。<br> <br> 打擊特訓班的目標是通過系統化的訓練計劃和專業的指導，幫助學員提高打擊技術水平，增強在比賽中的競爭力。透過課程的學習和實踐，學員可以建立自信心、提高打擊成功率，並在棒球或壘球比賽中發揮更出色的表現。', 600, '16.jpg', '2024-03-08 10:06:54', '2024-03-06 10:03:38', '2024-06-04 15:00:00', '打擊', '1', '2,5,10', '星期日1400~1500', 1),
(17, '守備特訓班', '守備特訓班是針對棒球或壘球運動員的培訓課程，主要旨在提高他們的守備技能和戰術意識。<br> 以下是一個典型的守備特訓班的主要內容：<br> <br>  基本守備技能：課程將專注於教授學員守備的基本技能，包括接球、投球、扔球、接殺、滾地球等，建立穩固的守備基礎。<br> <br> 守備姿勢和移動：學員將學習正確的守備姿勢和移動技巧，包括站位平衡、腳步踏實、視線專注等，以應對不同的守備場景和球路。<br> <br> 守備位置和協作：課程將介紹不同的守備位置和區域，包括內野、外野、捕手等，並教導學員如何與隊友協作，實現無縫的守備轉換和防守戰術。<br> <br> 守備訓練技巧：課程將涵蓋各種守備訓練技巧，包括使用守備器材、模擬比賽情境、分析守備數據等，以提高學員的守備速度、反應和準確度。<br> <br> 戰術意識和判斷力：培訓學員如何在比賽中做出正確的守備決策，包括應對不同局勢的守備戰術和策略，以及如何在關鍵時刻做出正確的判斷。<br> <br> 录像分析和反饋：課程可能會利用錄像分析技術，記錄學員的守備動作，並通過反饋來幫助他們改進技術和提高表現水平。<br> <br> 守備特訓班的目標是通過系統化的訓練計劃和專業的指導，幫助學員提高守備技術水平，增強在比賽中的競爭力。<br> 透過課程的學習和實踐，學員可以建立自信心、提高守備成功率，並在球場上展現出色的守備表現。', 600, '16.jpg', '2024-04-18 10:06:57', '2024-02-02 15:00:00', '2024-06-08 16:00:00', '守備', '3', '2,5,10', '星期日1500~1600', 1),
(18, '打擊動力鏈檢核班', ' 打擊動力鏈檢核班是針對棒球或壘球運動員的專業培訓課程。<br> <br> 課程內容包括：<br>  動力鏈解析：學習人體動力鏈的結構和運作，了解如何將身體各部位的力量連貫地應用於擊球動作中。<br> <br> 打擊姿勢評估：進行專業的姿勢評估，發現並糾正學員的擊球姿勢中可能存在的問題，以提高擊球效率和準確性。<br> <br> 核心力量訓練：通過一系列核心訓練，強化學員的核心穩定性和爆發力，有助於改善揮拍力量和速度。<br> <br> 技巧矯正：針對個人技術缺陷提供專業的矯正訓練，幫助學員改進擊球動作並提高成功率。<br> <br> 录像分析和反饋：利用錄像分析技術，記錄學員的打擊動作，提供即時反饋和指導，以加速學習和進步。<br> <br> 力量訓練：包括擊球力量和速度的訓練，使用各種設備和技術來增強學員的擊球能力。<br> <br> 打擊動力鏈檢核班通過系統化的訓練和專業的指導，幫助學員提升打擊技巧和力量，從而在比賽中取得更好的表現。<br>', 999, '17.jpg', '2024-04-04 10:07:01', '2024-02-01 19:00:00', '2024-07-01 21:00:00', '打擊', '1', '8', '提供紮實優質的打擊訓練方式，並且運用科學化訓練工具，針對個人動作進行科學化的教學指導，加上MLB等級設備數據分析與解析，讓學員記憶正確運動姿勢、養成好的棒球技術及態度，進而提升個人專業球技。', 1),
(19, '投手養成訓練班', '投手養成訓練班是專為棒球或壘球投手而設計的培訓課程。<br> <br> 課程內容包括：<br>  基本投球動作：學習正確的投球動作，包括抓球姿勢、步法、擲球力量控制等基本技術。<br> <br> 不同球種投球：教授各種不同的球種，如快速球、曲球、變速球等，並進行實戰模擬和技術精進。<br> <br> 技巧改進：針對每位學員的個人特點和問題，提供專業的技術改進指導，幫助他們提升投球準確性和效果。<br> <br> 录像分析和反饋：利用錄像分析技術，記錄學員的投球動作，並提供即時的反饋和指導，以便調整和改進技術。<br> <br> 體能訓練：通過專業的體能訓練課程，提高學員的力量、耐力和爆發力，以支持長時間高強度的投球訓練。<br> <br> 戰術訓練：學習如何應對不同的比賽局勢和對手打者，制定有效的投球戰術和策略。<br> <br> 投手養成訓練班旨在通過系統化的訓練和專業的指導，幫助學員提升投球技術和戰術意識，成為出色的球隊投手。', 1500, '18.jpg', '2024-03-13 10:07:04', '2024-02-04 17:00:00', '2024-07-04 18:00:00', '投球', '2', '10', '提供紮實優質的投手訓練方式，教學課程中輔以國內外知名投手的優缺點案例分析，並且運用科學化訓練工具(高速攝影機與智慧棒球) ，針對個人動作進行科學化的教學指導，加上大數據分析與名師解析，讓學員記憶正確運動姿勢、養成好的棒球技術及態度，進而提升個人專業球技', 1),
(20, '守備技術班', '守備技術班是針對棒球或壘球運動員的專業培訓課程，旨在提升他們的守備技能和戰術意識。<br> <br> 課程內容包括：<br>  基本守備姿勢：教授正確的守備姿勢，包括站位平衡、手部位置、視線方向等基本技巧。<br> <br> 守備位置和角色：介紹不同守備位置的特點和要求，包括內野手、外野手、捕手等，並強調各個位置的角色和責任。<br> <br> 接球和擲球技術：學習如何準確地接球和擲球，包括地滾球、高飛球、遠距離擲球等各種守備動作。<br> <br> 守備範圍和節奏：培養學員對守備範圍和球路的掌握，並提高守備時的節奏感和反應速度。<br> <br> 守備戰術和協作：教授守備戰術和策略，包括對不同打者的應對策略、守備轉換和協作等技巧。<br> <br> 录像分析和反饋：利用錄像分析技術，記錄學員的守備動作，並提供即時的反饋和指導，以幫助他們改進技術和提高表現水平。<br> <br> 守備技術班旨在通過系統化的訓練和專業的指導，幫助學員提升守備技能和戰術意識，成為出色的守備球員，為球隊贏得比賽做出貢獻。', 1500, '19.jpg', '2024-02-20 10:07:07', '2024-02-03 14:00:00', '2024-06-03 15:00:00', '守備', '3', '5', '系統性學科背景知識底蘊建立+紮實優質的守備訓練方式，教學課程中輔以國內不同層級守備相關數據分析，並且運用科學化訓練工具(My Jump) ，針對下肢爆發力動作中最核心的跳躍測驗進行深入探討，配合頂尖選手實務經驗相互配合，讓學員記憶正確運動姿勢、養成好的棒球技術及態度，進而提升個人專業球技。', 1),
(21, '私人教練課(投手)', '私人教練課程是為個別學員量身打造的專業培訓方案，針對棒球或壘球的投手技術進行訓練。<br> <br> 課程內容包括：<br>  技術評估：進行學員的技術評估，分析其投球動作、力量和速度等方面，找出存在的問題和改進空間。<br> <br> 個性化訓練計劃：根據學員的技術水平和目標訂製個性化的訓練計劃，針對性地進行技術和體能訓練。<br> <br> 技術矯正：通過專業的指導和矯正，改善學員的投球動作，提高投球的準確性、速度和力量。<br> <br> 录像分析和即時反饋：利用錄像分析技術記錄學員的投球動作，並給予即時的反饋和指導，幫助學員更好地理解和改進技術。<br> <br> 體能和力量訓練：通過專業的體能訓練，提高學員的力量、耐力和爆發力，從而支持長時間高強度的投球訓練。<br> <br> 戰術訓練和策略制定：學習如何制定有效的投球戰術和策略，應對不同的比賽情況和對手打者。<br> <br> 私人教練課程將為投手提供一對一的專業指導和個性化訓練，幫助他們克服技術上的障礙，提升投球水平，並在比賽中取得更好的表現。', 1500, '20.jpg', '2024-03-12 10:07:11', '2024-03-13 10:01:53', '2024-06-13 10:03:08', '投球', '2', '4', '投手專項訓練<br> 60分鐘', 1),
(22, '私人教練課(野手)', ' 私人教練課程是針對個別學員的專業培訓方案，專注於棒球或壘球的野手技術。<br> <br> 課程內容包括：<br>  基本技術評估：評估學員的野手基本技術，包括接球、擲球、移動和站位等，並確定需要改進的項目。<br> <br> 個性化訓練計劃：根據學員的技術水平和目標訂製個性化的訓練計劃，針對性地進行技術和體能訓練。<br> <br> 技術矯正：提供專業的指導和矯正，幫助學員改進野手動作，提高接球準確性和擲球力量。<br> <br> 录像分析和即時反饋：利用錄像分析技術記錄學員的野手動作，並提供即時的反饋和指導，幫助學員更好地理解和改進技術。<br> <br> 守備範圍和節奏：培養學員對守備範圍和球路的掌握，並提高守備時的節奏感和反應速度。<br> <br> 戰術訓練和協作：學習如何制定有效的守備戰術和策略，以及如何與隊友協作，應對不同的比賽局勢和對手打者。<br> <br> 私人教練課程將提供野手個人化的專業指導和訓練，幫助他們提升守備技術，增強自信心，並在場上表現出色。', 1500, '21.jpg', '2024-03-13 10:07:13', '2024-03-12 10:01:50', '2024-06-06 10:03:04', '守備', '3', '3', '野手專項訓練<br> 60分鐘', 1),
(23, '守備技術班(N4)', '守備基本姿勢與動作<br>  學習正確的守備基本姿勢，包括站位、手部位置和身體平衡。<br> 掌握基本的守備動作，如接球、擲球和移動。<br> 守備位置與角色分配<br>  介紹不同守備位置的特點和角色，包括內野手、外野手和捕手。<br> 學習如何根據局勢和對手打者分配守備角色。<br> 接球技術訓練<br>  提高接球的準確性和穩定性。<br> 學習不同球路的接球技巧，包括地滾球、高飛球和遠距離擲球。<br> 擲球技術訓練<br>  增強擲球力量和精準度。<br> 學習如何快速、準確地將球傳遞到指定目標。<br> 守備範圍與區域覆蓋<br>  培養對守備範圍和球路的掌握。<br> 提高在守備區域內的覆蓋範圍和反應速度。<br> 守備戰術與協作<br>  學習制定有效的守備戰術和策略，應對不同的比賽局勢。<br> 加強與隊友的協作，提高整個守備陣容的效率和協調性。<br>', 1500, '22.jpg', '2024-01-05 10:07:16', '2024-02-03 14:00:00', '2024-06-19 15:00:00', '守備', '3', '5', '四點守備動作指導教學<br> 星期六1400~1500', 1),
(24, '打擊初速提升班', ' 打擊初速提升班是針對棒球或壘球運動員的培訓課程，旨在提高他們的打擊速度和力量，以增強在比賽中的表現。以下是課程的主要內容：<br> <br>  打擊動作分析：透過專業的教練指導和視頻分析，評估學員的打擊動作，找出不足之處並提供改進建議。<br> <br> 提高擊球速度：通過各種訓練方法，如使用打擊機、增加反應速度等，提高學員的擊球速度和反應能力。<br> <br> 增強打擊力量：訓練學員的上肢力量和核心穩定性，以增加打擊力量，讓他們能夠擊出更遠的球。<br> <br> 心理訓練：幫助學員建立自信心，克服比賽中的壓力，提高比賽中的表現水平。<br> <br> 實戰模擬：進行各種實戰模擬訓練，讓學員在真實比賽情境下練習，提高比賽中的應變能力和表現。<br> <br> 這個課程將為學員提供專業的打擊技術指導和全面的訓練計劃，幫助他們在打擊方面取得顯著進步。通過持續的訓練和努力，學員將能夠提高打擊速度和力量，成為更加出色的棒球或壘球運動員。', 3000, '23.jpg', '2024-03-20 10:07:18', '2024-04-16 10:01:56', '2024-06-06 10:02:50', '打擊', '1', '7', '穩定提升擊球初速<br> 星期一 1900~2100<br> 星期四 1900~2100', 1),
(29, '少棒守備技術班12', '少棒守備技術班旨在為年齡在12歲以下的棒球少年提供全面的守備技術培訓。以下是課程的主要內容：<br>\n<br>\n\n守備基本姿勢：教授學員正確的守備姿勢，包括站位、手部位置、視線等，建立穩定的守備基礎。<br>\n<br>\n接球技巧：訓練學員如何準確地接住地面球、高空球和遠場飛球，並學習如何應對快速球和不規則彈跳的球。<br>\n<br>\n傳球技巧：教導學員正確的傳球姿勢和技巧，包括準確度、力量和速度的掌握，以及各種守備位置的傳球方法。<br>\n<br>\n位移和反應訓練：訓練學員在守備時的快速移動和反應能力，包括預判球路、及時調整站位和移動方向等。<br>\n<br>\n實戰模擬：透過模擬比賽情境的訓練，讓學員在真實的比賽場景中應用所學技巧，提高比賽中的守備表現。<br>\n<br>\n這個班級將由專業的教練團隊指導，結合理論教學和實際訓練，幫助學員建立自信心、技術水準和比賽意識。通過持續的訓練和精心的指導，學員將能夠在守備方面取得顯著進步，成為球隊中的優秀守備員。', 2600, '19.jpg', '2024-02-01 13:50:07', '2024-01-21 13:00:00', '2024-02-06 15:00:00', '守備,體能', '', '9', '針對守備要領強化訓練<br> 基礎守備動作加強<br> 正、反手接球動作加強', 1),
(30, '少棒守備技術班15', '少棒守備技術班旨在為年齡在15歲以下的棒球少年提供全面的守備技術培訓。以下是課程的主要內容：<br>\n<br>\n\n守備基本姿勢：教授學員正確的守備姿勢，包括站位、手部位置、視線等，建立穩定的守備基礎。<br>\n<br>\n接球技巧：訓練學員如何準確地接住地面球、高空球和遠場飛球，並學習如何應對快速球和不規則彈跳的球。<br>\n<br>\n傳球技巧：教導學員正確的傳球姿勢和技巧，包括準確度、力量和速度的掌握，以及各種守備位置的傳球方法。<br>\n<br>\n位移和反應訓練：訓練學員在守備時的快速移動和反應能力，包括預判球路、及時調整站位和移動方向等。<br>\n<br>\n實戰模擬：透過模擬比賽情境的訓練，讓學員在真實的比賽場景中應用所學技巧，提高比賽中的守備表現。<br>\n<br>\n這個班級將由專業的教練團隊指導，結合理論教學和實際訓練，幫助學員建立自信心、技術水準和比賽意識。通過持續的訓練和精心的指導，學員將能夠在守備方面取得顯著進步，成為球隊中的優秀守備員。', 2700, '19.jpg', '2024-03-13 13:55:08', '2024-04-17 13:54:00', '2024-06-01 15:54:00', '守備,體能', '', '7', '針對守備要領強化訓練<br> 基礎守備動作加強<br> 正、反手接球動作加強', 1),
(31, '打擊動力練檢核班', '\n打擊動力練檢核班是為了幫助棒球或壘球運動員提升他們的打擊技術和力量而設計的培訓課程。以下是課程的主要內容：<br>\n<br>\n\n動力擊球基礎：學習正確的揮拍姿勢、握拍方式和站位，以建立穩固的動力擊球基礎。<br>\n<br>\n擊球力量訓練：通過各種訓練方法，包括重量訓練、彈跳訓練和核心訓練，提高擊球時的力量和爆發力。<br>\n<br>\n技術檢核：對學員的打擊動作進行詳細的檢核和分析，並提供改善建議，以確保打擊動作的正確性和效率。<br>\n<br>\n打擊反應速度訓練：透過快速反應訓練和模擬比賽情境的練習，提高學員在比賽中的打擊反應速度和準確性。<br>\n<br>\n录像分析和反饋：利用錄像分析技術記錄學員的打擊動作，並通過教練的反饋和指導來幫助他們改進技術和表現。<br>\n<br>\n這個班級由專業的教練團隊指導，結合理論教學和實際訓練，旨在幫助學員全面提升其打擊技術和能力。通過持續的訓練和個性化的指導，學員將能夠提高擊球力量和準確性，以在比賽中取得更出色的表現。', 999, '1706767085.jpg', '2024-02-01 13:58:05', '2024-05-31 13:57:00', '2024-06-01 16:57:00', '打擊,知識', '', '8', '六大檢核項目', 1),
(34, '專項技術提升', '『專項技術提升』課程是針對已具備棒球基礎技能的學員設計，旨在深化特定技術領域的專業知識和技能。此課程屬於專項技術提升類，重點包括進階打擊技巧、守備策略和專門的投球技術。課程旨在通過專業教練的指導和大量的實戰練習，幫助學員在棒球的特定技術領域達到新的高度。\r\n\r\n在進階打擊技巧部分，學員將學習如何根據不同投手的投球特點選擇最佳的打擊策略，以及如何調整站位和揮棒時機以提高擊球效率。守備策略部分，則著重於提升學員在不同守備位置的反應速度和準確性，同時教授如何根據比賽情況做出快速決策。對於有志於成為投手的學員，本課程將深入探討各種投球技巧，包括速球、變速球和曲球的控制與運用，並通過模擬比賽實踐所學技術。\r\n\r\n透過『專項技術提升』課程，學員將能夠在自己選擇的專項技術領域實現突破，為高級比賽和專業發展奠定堅實的基礎。', 2500, '1715327587.png', '2024-05-10 09:53:07', '2024-04-10 15:49:00', '2024-05-31 15:50:00', '打擊,投球,守備', '', '1', '進階打擊技巧<br>\n專業級投球技術<br>\n高級防守戰術<br>\n專業跑壘技巧與策略<br>\n數據分析應用於技術提升<br>\n視覺訓練與反應速度提升<br>\n比賽心理與壓力管理<br>\n個人化訓練計劃與持續發展<br>投球技巧精進：為有志於成為投手的學員量身定制，從握球方法到各種投球技巧（如直球、變速球、曲球等）的教學。強調控球能力和策略思考', 1),
(35, '基礎技能發展', '『棒球基礎入門』課程是為初學者設計的完整入門指南，旨在從零基礎開始，全面介紹棒球的基本規則、技巧和文化。本課程屬於基礎技能發展類，涵蓋了從握棒、站位、揮棒的正確方法到基本的投球和接球技巧，並透過實戰練習加深學員的理解和技能。\r\n\r\n課程首先介紹棒球的歷史和基本規則，讓學員對這項運動有一個全面的認識。接著，專業教練將指導學員學習正確的握棒和站位方式，以及如何有效地揮棒擊球。此外，課程還著重於投球和接球的基本技巧訓練，包括不同類型的投球技巧和守備時的位置佈局。\r\n\r\n通過理論學習和大量的實踐演練，學員將能夠掌握棒球的基礎技能，為進一步的技術提升和比賽參與打下堅實的基礎。課程結束時，學員不僅能夠熟練運用學到的技巧，也將對棒球這項運動有更深的熱愛和理解。', 8800, '1715327675.png', '2024-05-10 09:54:35', '2024-03-13 15:53:00', '2024-07-04 15:53:00', '打擊,投球', '', '7', '基礎揮棒技巧<br>\n投球基本原理<br>\n基礎防守位置與技巧<br>\n跑壘技巧與策略<br>\n球場規則與遊戲流程<br>\n裝備使用與維護<br>\n團隊合作與溝通<br>\n比賽預備與心理調整<br>進階打擊技巧：專為想提升打擊表現的學員設計，深入探討如何閱讀投手動作，選擇最佳打擊時機，以及實施進階打擊策略。課程包含大量實戰練習和個人指導。', 1),
(36, '基礎規則與裁判講解', '『規則與裁判』課程專為那些對棒球規則有深入興趣，以及希望成為棒球裁判的人士設計。此課程屬於規則與裁判類，旨在全面深化學員對棒球規則的理解，並提供專業的裁判技能訓練。通過本課程，學員將學習到棒球比賽中的各項規則細節，包括但不限於比賽進行規則、球員行為規範、比賽裝備要求等。\r\n\r\n課程內容從基礎規則開始，逐步過渡到複雜的判決情況分析，並通過實際案例研究，讓學員能夠在實戰中快速準確地做出裁決。除了理論學習，學員還將有機會參與模擬比賽，實踐裁判技能，如位置擺放、手勢使用和判決溝通技巧。\r\n\r\n本課程特別強調裁判的公正性和權威性，教授學員如何在比賽中保持冷靜，公正地處理比賽中出現的各種情況，包括如何有效地解決爭議和維持比賽秩序。完成本課程的學員將獲得深厚的棒球規則知識和實踐裁判技能，為從事棒球裁判工作或更深入地了解和欣賞棒球比賽奠定堅實的基礎。', 1200, '1715327778.png', '2024-05-10 09:56:18', '2024-04-03 15:55:00', '2024-06-28 15:55:00', '知識', '', '10', '棒球規則基礎<br>\n比賽進行的結構與階段<br>\n主要規則與罰則解析<br>\n裁判的角色與職責<br>\n裁判信號與手勢學習<br>\n實際案例分析<br>\n場地布局與裁判位置<br>\n比賽管理與公正執法<br>', 1),
(37, '體能與健康', '『體能與健康』課程專為棒球運動員設計，旨在透過全面的體能訓練和健康管理，提升運動表現並預防運動傷害。此課程屬於體能與健康類，強調平衡發展運動員的身體素質，包括力量、速度、耐力、靈活性和協調性。\r\n\r\n課程內容涵蓋了有氧和無氧運動訓練、力量訓練、靈活性和伸展運動、以及專門針對棒球運動特點的體能訓練。透過科學的訓練方法和個性化的訓練計畫，幫助運動員提升體能表現，同時增強身體的抗傷害能力。\r\n\r\n除了體能訓練，本課程還特別關注運動員的飲食營養和心理健康。專業營養師將根據運動員的訓練強度和比賽需求，提供個性化的飲食建議和營養計畫，確保運動員能夠攝取足夠的營養，支持高強度的訓練和恢復。心理輔導部分，則旨在幫助運動員建立正確的運動心態，學會管理比賽壓力，提升心理韌性。\r\n\r\n『體能與健康』課程通過全方位的體能和健康管理，不僅能夠幫助運動員在場上發揮更好的表現，也能夠提高運動員的生活質量，確保他們能夠長期健康地從事棒球運動。完成本課程的運動員將在體能、營養、心理等多方面獲得顯著提升，為達成更高運動成就奠定堅實的基礎。', 4300, '1715328019.png', '2024-05-10 10:00:19', '2024-04-11 15:57:00', '2024-05-24 15:57:00', '體能', '', '8', '體能評估與個人化訓練計劃<br>\n全面的力量訓練<br>\n心肺耐力提升<br>\n柔韌性和平衡訓練<br>\n核心肌群強化<br>\n運動恢復技巧與策略<br>\n營養指導與健康飲食計劃<br>\n心理健康與壓力管理<br>', 1),
(38, '女子棒球技巧提升', '『女子棒球技巧提升』課程專門針對女性棒球運動員設計，旨在提供一個支持性和鼓勵性的學習環境，幫助女性球員在棒球領域實現技術上的突破。此課程屬於特殊群體訓練類，著重於打擊、守備和投球等核心技術的提升，同時考慮到女性運動員的特殊需求，進行針對性的訓練方法和體能鍛煉。\r\n\r\n課程從基礎技能的鞏固開始，逐步引導學員掌握更高階的技術動作，如進階打擊技巧、精準投球和靈活守備策略。專業教練將通過個別指導和團體訓練，幫助學員提升技術水平，並在實戰中應用所學技巧。\r\n\r\n此外，課程還特別強調心理素質的培養和團隊合作能力的提升。透過模擬比賽和心理輔導，學員將學會如何在比賽壓力下保持冷靜，如何與隊友有效溝通和協作，從而在比賽中發揮最佳狀態。\r\n\r\n『女子棒球技巧提升』課程不僅關注技術的提升，也致力於打造一個互相學習、相互支持的社群，讓女性球員在棒球這項運動中找到歸屬感和自信。完成本課程的學員將能夠在技術、體能和心理素質上都有顯著提升，為參與更高級別的比賽和挑戰做好準備。\r\n\r\n', 7200, '1715328241.png', '2024-05-10 10:04:01', '2024-04-11 16:02:00', '2024-06-28 16:02:00', '打擊,投球', '', '12', '基礎技能回顧與強化<br>\n專屬女性的力量與體能訓練<br>\n打擊技術和策略<br>\n防守技巧與位置訓練<br>\n投球技巧與控球訓練<br>\n比賽心理準備與壓力管理<br>\n團隊合作與溝通<br>\n比賽分析與自我評估<br>', 1),
(39, '專業球員體能管理', '體能調節\r\n高強度間歇訓練(HIIT)：提升心肺功能和耐力。\r\n力量與爆發力訓練：增強肌肉力量，提升打擊和投球的爆發力。\r\n靈活性和伸展運動：提高身體靈活性，預防運動傷害。\r\n恢復策略：包括冷療、熱療、按摩和肌肉放鬆等，加速運動後恢復。\r\n營養管理\r\n個性化飲食計劃：根據運動員的體能訓練強度和比賽需求，提供個性化的飲食建議。\r\n營養補充：指導運動員合理使用營養補充品，如蛋白粉、維生素等，以支持訓練和恢復。\r\n水分管理：教授運動員正確的水分補充時機和量，以保持最佳的身體狀態。\r\n心理調適\r\n心理韌性訓練：提升面對比賽壓力和挑戰的心理韌性。\r\n目標設定和自我激勵：幫助運動員設定實際目標，並透過正向心態保持動力。\r\n焦慮管理：教授運動員應對比賽前焦慮的策略，如深呼吸、正念冥想等。\r\n本課程結合了專業教練的實戰經驗和最新科學研究，旨在為專業球員提供一個全方位的體能管理計畫，幫助他們在高強度的比賽和訓練中保持最佳狀態，並有效預防傷害，從而達到職業生涯的巔峰。', 9000, '1715329682.png', '2024-05-10 10:28:02', '2024-03-07 16:25:00', '2024-07-11 16:25:00', '體能,知識', '', '12', '基礎體能評估<br>\n核心肌群強化<br>\n耐力與心肺訓練<br>\n柔韌性和伸展運動<br>\n爆發力訓練<br>\n恢復技術與策略<br>\n營養與飲食指導<br>\n心理素質與壓力管理<br>', 1),
(40, '高階打擊技巧班', '「高階打擊技巧班」專為有經驗的棒球選手設計，旨在提升打擊能力到專業水平。本課程深入探討先進的打擊技術，包括力量生成、擊球角度調整和打擊時機的精確把握。學員將學習如何根據不同投球類型和速度作出快速反應，並通過專業設備和高科技分析工具，實時反饋打擊效果，從而精準改善打擊姿態和技巧。\r\n\r\n此外，課程還包括心理訓練模塊，幫助選手在比賽壓力下保持冷靜，提高集中力和自信心。經過本課程的訓練，選手將能夠在比賽中更好地控制比賽節奏，有效提升打擊表現和團隊貢獻。這是一個全面提升打擊技能的絕佳機會，適合那些追求棒球高峰的選手。', 4580, '1715651239.png', '2024-05-14 03:47:19', '2024-04-09 09:45:00', '2024-06-20 09:45:00', '打擊', '', '13', '進階打擊技術<br>\n力量訓練<br>\n心理專注訓練<br>\n打擊策略與分析<br>\n視覺與反應速度訓練<br>\n對抗不同球種的打擊練習<br>\n比賽中的應用與調整<br>\n個人化打擊改善計劃<br>', 1),
(41, '投手專業訓練', '課程專為那些希望精進投球技能的棒球選手設計。這個課程涵蓋了從基本的投球機制到進階的球種掌握技巧，目的是提升選手的投球質量和效率。學員將接受全面的體能評估，包括肩膀、手臂和整體身體的力量與靈活性訓練，以確保投球時的最大力量和最小傷害。\r\n\r\n課程中，專業教練將指導如何掌控球速、改善控球能力和學習各種球種，如快速球、變速球和曲球等。此外，我們還提供高科技設備支持，例如高速攝影機和動作捕捉技術，以分析和改進投手的動作。\r\n\r\n除了技術和體能訓練外，「投手專業訓練」還強調心理和戰略訓練，教導選手如何在比賽中讀懂打者的意圖，控制比賽節奏，並在壓力下保持冷靜和集中。通過這個課程，投手將能夠提升自己在比賽中的表現，並為高水平的競爭做好準備。', 8540, '1715651713.jpeg', '2024-05-14 03:55:13', '2024-03-12 09:52:00', '2024-06-12 09:52:00', '投球', '', '8', '投球基礎與機制<br>\r\n體能與力量訓練<br>\r\n球種學習與掌握<br>\r\n控球與準確性訓練<br>\r\n比賽策略與心理準備<br>\r\n技術分析與反饋<br>\r\n健康管理與傷害預防<br>\r\n實戰模擬與比賽應用<br>', 1),
(42, '捕手工作坊', '捕手工作坊是一個專門為棒球捕手設計的全面訓練課程，旨在提升捕手在比賽中的核心技能和戰術理解。本工作坊涵蓋從基礎接球姿勢、精準傳球到比賽策略的各個方面。學員將學習如何有效地阻擋失誤球，提升傳球速度與準確性，並學會如何引導投手，控制比賽節奏。此外，課程還將教授捕手如何在高壓比賽中保持冷靜，以及如何選擇和維護個人裝備。通過實戰演練和專業教練的指導，學員將大幅提升自己作為捕手的比賽表現和戰術價值。', 11990, '1715652717.png', '2024-05-14 04:11:57', '2024-04-09 10:05:00', '2024-06-25 10:05:00', '守備', '', '16', '捕手基礎姿勢與技巧<br>\r\n接球技術與準確性提升<br>\r\n阻擋失誤球技巧<br>\r\n引導投手與比賽策略<br>\r\n傳球技巧與快速出手<br>\r\n防守布局與球員協調<br>\r\n比賽中的心理準備與應對<br>\r\n捕手裝備的選擇與維護<br>', 1),
(43, '棒球冬季訓練營 ', '棒球冬季訓練營為期數週，旨在全面提升選手的棒球技能和體能。本訓練營透過專業的體能評估，為每位選手設計個人化的訓練計劃，涵蓋打擊、投球、防守等各方面技能。除了技術與體能訓練，訓練營還特別強調心理素質的培養和營養恢復的重要性，幫助選手在冬季期間維持最佳狀態，為春季賽季做好準備。專業教練團隊將引導選手透過實戰模擬，將所學技術應用於比賽中，確保技能提升能夠轉化為實際比賽的表現。', 13999, '1715654790.jpeg', '2024-05-14 04:46:30', '2024-04-10 10:46:00', '2024-08-23 10:46:00', '打擊,投球,守備', '', '8', '全面體能評估與訓練<br>\r\n專業打擊技術提升<br>\r\n投球技巧與力量訓練<br>\r\n防守戰術與團隊合作<br>\r\n心理素質強化與比賽準備<br>\r\n營養指導與恢復策略<br>\r\n個人化訓練計劃與進度追蹤<br>\r\n實戰模擬與技術應用<br>\r\n', 1),
(44, '棒球營養與健康管理課程大綱', '棒球營養與健康管理課程專為追求卓越表現的棒球選手設計。本課程深入探討運動員的營養需求，教導如何透過合理飲食來提升體能表現和加速恢復。學習重點包括賽前後的營養策略、有效的水分補充方法、傷害預防與恢復的營養支持，以及如何管理體重和體脂比例，保持最佳競技狀態。此外，課程還將介紹適合運動員的補充品選擇，並探討心理健康與飲食之間的關聯，幫助選手在比賽和日常訓練中保持身心健康。', 7777, '1715655258.jpeg', '2024-05-14 04:51:25', '2024-04-24 10:48:00', '2024-05-31 10:48:00', '體能,知識', '', '1', '營養基礎知識<br>\r\n運動員營養需求<br>\r\n賽前與賽後營養策略<br>\r\n水分補充與電解質平衡<br>\r\n傷害預防與恢復營養<br>\r\n體重管理與體脂控制<br>\r\n補充品與天然食物選擇<br>\r\n心理健康與飲食關係<br>', 1),
(45, '棒球體能訓練', '棒球體能訓練工作坊專為那些渴望提升在場上表現的棒球選手而設計。本課程著重於增強選手的力量、爆發力、耐力、靈活性和敏捷性，透過專門針對棒球運動的體能訓練，幫助選手提高運動表現。除了體能訓練，我們還提供恢復策略、營養指導和心理素質訓練，以確保選手能夠在比賽中保持最佳狀態。透過本課程，選手將學會如何有效地利用自己的身體潛力，並將這些技能轉化為場上的優勢。', 9999, '1715655805.jpeg', '2024-05-14 05:03:25', '2024-04-30 11:02:00', '2024-06-06 11:02:00', '體能', '', '1', '全面體能評估<br>\r\n力量與爆發力訓練<br>\r\n耐力與心肺功能提升<br>\r\n靈活性與敏捷性練習<br>\r\n專門的棒球動作訓練<br>\r\n恢復策略與傷害預防<br>\r\n營養指導與體能管理<br>\r\n心理素質訓練與比賽準備<br>', 1),
(46, '棒球數據分析與運用', '\r\n棒球數據分析課程旨在教授學員如何運用數據分析技術來解析棒球比賽和球員表現。課程涵蓋數據收集、清理、分析和應用等方面。學員將通過理論學習和實踐案例，掌握數據分析工具和技術，並了解棒球數據背後的故事。本課程將啟發學員對數據的深入理解，並培養他們的數據分析能力，以應對現代棒球競爭的挑戰。', 2500, '1715666421.jpeg', '2024-05-14 08:00:21', '2024-03-13 13:55:00', '2024-06-27 13:55:00', '知識', '', '18', '1. 數據分析概述<br>\r\n2. 數據收集和處理技術<br>\r\n3. 棒球數據分析工具<br>\r\n4. 進階數據分析技術<br>\r\n5. 棒球數據分析案例研究<br>\r\n6. 未來趨勢與發展方向<br>\r\n7. 棒球數據分析應用工作坊<br>', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
