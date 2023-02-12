-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 172.17.0.1:3308
-- 生成日期： 2023-02-11 07:47:55
-- 服务器版本： 8.0.30
-- PHP 版本： 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `wordbook`
--

-- --------------------------------------------------------

--
-- 表的结构 `period_type`
--

CREATE TABLE `period_type` (
  `period` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `counts` int NOT NULL,
  `period_1` int DEFAULT NULL,
  `period_2` int DEFAULT NULL,
  `period_3` int DEFAULT NULL,
  `period_4` int DEFAULT NULL,
  `period_5` int DEFAULT NULL,
  `period_6` int DEFAULT NULL,
  `period_7` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `period_type`
--

INSERT INTO `period_type` (`period`, `counts`, `period_1`, `period_2`, `period_3`, `period_4`, `period_5`, `period_6`, `period_7`) VALUES
('paper', 5, 1, 2, 4, 7, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `translations`
--

CREATE TABLE `translations` (
  `word` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `api` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'caiyun',
  `json` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `translations`
--

INSERT INTO `translations` (`word`, `api`, `json`) VALUES
('abundance', 'caiyun', '{\"pronounces\": {\"en-us\": \"[əˈbʌndəns]\", \"en\": \"[əˈbʌndəns]\"}, \"explanations\": [\"n.丰富;富裕,充裕;大量\"], \"synonym\": [], \"antonym\": [\"lack\", \"shortage\", \"want\", \"need\", \"require\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/abundance.wav\"}'),
('amine', 'caiyun', '{\"pronounces\": {\"en-us\": \"[əˈmin]\", \"en\": \"[əˈmiːn]\"}, \"explanations\": [\"n.胺类;碳氢基氨\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/amine.wav\"}'),
('amplification', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌæmpləfəˈkeʃən]\", \"en\": \"[ˌæmplifiˈkeiʃən]\"}, \"explanations\": [\"n.扩大;详述;引伸\", \"[电学]增幅;倍率\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/amplification.wav\"}'),
('annealed', 'caiyun', '{\"pronounces\": {\"en-us\": \"[əˈnil]\", \"en\": \"[əˈniːl]\"}, \"explanations\": [\"vt.退火,焖火;韧炼;锻炼;加热后退火使其韧化\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/annealed.wav\"}'),
('assay', 'caiyun', '{\"pronounces\": {\"en-us\": \"[əˈse]\", \"en\": \"[əˈsei]\"}, \"explanations\": [\"vt.分析;试验;企图,尝试\", \"vi.含贵金属\", \"n.分析;企图;化验;鉴定;衡量\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/assay.wav\"}'),
('blastomere', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈblæstəˌmɪr]\", \"en\": \"[ˈblæstəmiə]\"}, \"explanations\": [\"n.分裂球;胚叶细胞;裂殖细胞\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/blastomere.wav\"}'),
('cohort', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈkohɔrt]\", \"en\": \"[ˈkəuhɔːt]\"}, \"explanations\": [\"n.一队兵;古罗马的步兵大队;军队;同谋者\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/cohort.wav\"}'),
('complementary', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌkɑmpləˈmεntərɪ]\", \"en\": \"[ˌkɔmpliˈmentəri]\"}, \"explanations\": [\"a.=complemental,补足(充)的\", \"[数]余的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/complementary.wav\"}'),
('compromised', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈkɑmprəˌmaɪz]\", \"en\": \"[ˈkɔmprəmaiz]\"}, \"explanations\": [\"n.和解;让步了事;中间物;折衷办法;连累\", \"vt.和解;妥协;折衷;连累;泄密\", \"vi.和解;退让;妥协\"], \"synonym\": [\"settle\", \"yield\", \"concede\", \"adjust\", \"meet halfway\"], \"antonym\": [], \"st_examples\": [[\"compromise with\", \"与…妥协\"]], \"wav_path\": \"pronounces/caiyun/compromised.wav\"}'),
('concordance', 'caiyun', '{\"pronounces\": {\"en-us\": \"[kɑnˈkɔrdns]\", \"en\": \"[kənˈkɔːdəns]\"}, \"explanations\": [\"n.一致;和谐;语词索引\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/concordance.wav\"}'),
('conditionally', 'caiyun', '{\"pronounces\": {\"en-us\": \"[kənˈdɪʃənlɪ]\", \"en\": \"[kənˈdiʃənəli]\"}, \"explanations\": [\"ad.有条件地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/conditionally.wav\"}'),
('coverage', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈkʌvərɪdʒ]\", \"en\": \"[ˈkʌvəridʒ]\"}, \"explanations\": [\"n.某事物所包含之范围;保险项目;报导范围\", \"[植物]优势度\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/coverage.wav\"}'),
('culture', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈkʌltʃɚ]\", \"en\": \"[ˈkʌltʃə]\"}, \"explanations\": [\"n.耕种;教养;教化;文化;文明\", \"vt.耕种;用作培养基\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/culture.wav\"}'),
('demonstrate', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈdεmənˌstret]\", \"en\": \"[ˈdemənstreit]\"}, \"explanations\": [\"v.证明;示范;当众表演;表露(情绪);作示威运动;炫耀军力\"], \"synonym\": [\"display\", \"show\", \"illustrate\", \"clarify\"], \"antonym\": [], \"st_examples\": [[\"demonstrate for\", \"游行示威要求…,为…而抗争\"]], \"wav_path\": \"pronounces/caiyun/demonstrate.wav\"}'),
('demonstrated', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈdεmənˌstret]\", \"en\": \"[ˈdemənstreit]\"}, \"explanations\": [\"v.证明;示范;当众表演;表露(情绪);作示威运动;炫耀军力\"], \"synonym\": [\"display\", \"show\", \"illustrate\", \"clarify\"], \"antonym\": [], \"st_examples\": [[\"demonstrate for\", \"游行示威要求…,为…而抗争\"]], \"wav_path\": \"pronounces/caiyun/demonstrated.wav\"}'),
('discriminate', 'caiyun', '{\"pronounces\": {\"en-us\": \"[dɪˈskrɪməˌnet]\", \"en\": \"[disˈkrimineit]\"}, \"explanations\": [\"v.辨别;歧视,差别待遇\", \"a.有识别力的\", \"n.区别之人(物);鉴别器\"], \"synonym\": [\"separate\", \"segregate\", \"distinguish\", \"set apart\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/discriminate.wav\"}'),
('dissect', 'caiyun', '{\"pronounces\": {\"en-us\": \"[dɪˈsεkt]\", \"en\": \"[diˈsekt]\"}, \"explanations\": [\"vt.解剖;详细研究;分辨出来;切开\", \"vi.解剖\"], \"synonym\": [\"examine\", \"analyze\", \"explore\", \"dismember\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/dissect.wav\"}'),
('eliminating', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ɪˈlɪməˌnet]\", \"en\": \"[iˈlimineit]\"}, \"explanations\": [\"vt.削减;除去;淘汰\", \"[数]消去\", \"[生理]排泄\"], \"synonym\": [\"remove\", \"discard\", \"reject\", \"exclude\", \"throw out\"], \"antonym\": [\"add\", \"unite\", \"total\", \"join\", \"sum up\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/eliminating.wav\"}'),
('embryo', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈεmbrɪˌo]\", \"en\": \"[ˈembriəu]\"}, \"explanations\": [\"n.胚芽\", \"[动物]胚胎,幼虫;初期\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/embryo.wav\"}'),
('emulsion', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ɪˈmʌlʃən]\", \"en\": \"[iˈmʌlʃən]\"}, \"explanations\": [\"n.乳状液,乳剂\", \"[摄影]感光乳剂\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/emulsion.wav\"}'),
('endogenous', 'caiyun', '{\"pronounces\": {\"en-us\": \"[εnˈdɑdʒənəs]\", \"en\": \"[enˈdɔdʒənəs]\"}, \"explanations\": [\"a.内成的\", \"[生物]由内部生长的;基于内在原因的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/endogenous.wav\"}'),
('exon', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"外显子\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/exon.wav\"}'),
('feasible', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈfizəbl]\", \"en\": \"[ˈfiːzəbl]\"}, \"explanations\": [\"a.可实行的;可能的;合宜的\"], \"synonym\": [\"possible\", \"practical\", \"workable\", \"attainable\", \"likely\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/feasible.wav\"}'),
('fluorescence', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌfluəˈrεsns]\", \"en\": \"[ˌfluəˈresns]\"}, \"explanations\": [\"n.荧光,荧光性\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/fluorescence.wav\"}'),
('germline', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"生殖细胞\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/germline.wav\"}'),
('gigabases', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"千兆字节\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/gigabases.wav\"}'),
('hello', 'caiyun', '{\"pronounces\": {\"en-us\": \"[həˈlo]\", \"en\": \"[ˈheˈləu]\"}, \"explanations\": [\"int.喂;哈罗\", \"n.引人注意的呼声\", \"v.向人呼(喂)\"], \"synonym\": [\"greetings\", \"salutations\"], \"antonym\": [], \"st_examples\": [[\"say hello to\", \"向某人问候,和某人打招呼\"], [\"Say hello to him for me . \", \"代我问候他。\"]], \"wav_path\": \"pronounces/caiyun/hello.wav\"}'),
('hi', 'caiyun', '{\"pronounces\": {\"en-us\": \"[haɪ]\", \"en\": \"[hai]\"}, \"explanations\": [\"int.喂!嗨!你好!\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/hi.wav\"}'),
('intact', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ɪnˈtækt]\", \"en\": \"[inˈtækt]\"}, \"explanations\": [\"a.原封不动的;未触动的;完整的,完整无损的\"], \"synonym\": [\"untouched\", \"whole\", \"uninjured\", \"undamaged\", \"complete\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/intact.wav\"}'),
('intensity', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ɪnˈtεnsətɪ]\", \"en\": \"[inˈtensiti]\"}, \"explanations\": [\"n.强烈,紧张;强度;饱和度;明亮度\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [[\"I was surprised by the intensity of his anxiety. \", \"我对他的极度焦虑感到吃惊\"]], \"wav_path\": \"pronounces/caiyun/intensity.wav\"}'),
('intron', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"内含子\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/intron.wav\"}'),
('isoforms', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"异构体\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/isoforms.wav\"}'),
('junctions', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈdʒʌŋkʃən]\", \"en\": \"[ˈdʒʌŋkʃən]\"}, \"explanations\": [\"n.汇合处;交叉点;联络;(半导体的)接合面;接合处\"], \"synonym\": [\"connection\", \"union\", \"linking\", \"coupling\", \"hookup\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/junctions.wav\"}'),
('ligation', 'caiyun', '{\"pronounces\": {\"en-us\": \"[laɪˈgeʃən]\", \"en\": \"[laiˈgeiʃən]\"}, \"explanations\": [\"n.绑扎;结扎;缚法;结扎线;缚线\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/ligation.wav\"}'),
('mammalian', 'caiyun', '{\"pronounces\": {\"en-us\": \"[mæˈmelɪən]\", \"en\": \"[mæˈmeiljən]\"}, \"explanations\": [\"n.,adj.哺乳动物(的)\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/mammalian.wav\"}'),
('mature', 'caiyun', '{\"pronounces\": {\"en-us\": \"[məˈtjʊr]\", \"en\": \"[məˈtjuə]\"}, \"explanations\": [\"a.成熟的;慎重考虑的;完成的;发达的;到期的\", \"vt.使成熟;慎重完成;使完善\", \"vi.成熟;(票据)到期;充分发挥\"], \"synonym\": [\"ripe\", \"developed\", \"adult\", \"full-blown\", \"full-grown\"], \"antonym\": [\"immature\", \"undeveloped\", \"unripe\", \"inexperienced\", \"green\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/mature.wav\"}'),
('microarray', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"微阵列\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/microarray.wav\"}'),
('milder', 'caiyun', '{\"pronounces\": {\"en-us\": \"[maɪld]\", \"en\": \"[maild]\"}, \"explanations\": [\"a.轻的;温和的;不严重的;次级的;非极端的;可塑的;淡味的\"], \"synonym\": [\"gentle\", \"kind\", \"calm\", \"warm\", \"temperate\"], \"antonym\": [\"wild\", \"severe\", \"strict\", \"harsh\", \"hard\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/milder.wav\"}'),
('nice', 'caiyun', '{\"pronounces\": {\"en-us\": \"[naɪs]\", \"en\": \"[nais]\"}, \"explanations\\\\\": [\"a.好的;令人愉快的;精细的;狡黠的;规矩的;讲究的;文雅的;谨慎的;坏的;放肆的;浪荡的\"], \"synonym\": [\"pleasing\", \"agreeable\", \"satisfactory\", \"enjoyable\", \"desirable\"], \"antonym\": [\"ugly\", \"coarse\", \"nasty\", \"unattractive\", \"unsightly\"], \"st_examples\": [[\"a nice fit\", \"十分合适的人或物\"], [\"It\'s nice of you to help him . \", \"你帮他的忙，真太好了。\"]], \"wav_path\": \"pronounces/caiyun/nice.wav\"}'),
('novelty', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈnɑvltɪ]\", \"en\": \"[ˈnɔvəlti]\"}, \"explanations\": [\"n.新鲜的事物;新奇的东西;新颖小巧的物品\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/novelty.wav\"}'),
('oogenesis', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌoəˈdʒεnəsɪs]\", \"en\": \"[ˌəuəˈdʒenisis]\"}, \"explanations\": [\"n.卵子发生;成卵法;adj.oogenetic\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/oogenesis.wav\"}'),
('overlooked', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌovɚˈlʊk]\", \"en\": \"[ˌəuvəˈluk]\"}, \"explanations\": [\"vt.俯视;忽视;宽恕;检查;监督;错过\", \"n.高处\"], \"synonym\": [\"neglect\", \"ignore\", \"disregard\", \"skip\", \"miss\"], \"antonym\": [\"notice\", \"note\", \"observe\", \"heed\", \"regard\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/overlooked.wav\"}'),
('phenotype', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈfinəˌtaɪp]\", \"en\": \"[ˈfiːnətaip]\"}, \"explanations\": [\"n.表现型;有共同表现型的生物体群;遗传环境互应结果\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/phenotype.wav\"}'),
('physiological', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌfɪzɪəˈlɑdʒɪkl]\", \"en\": \"[ˌfiziəˈlɔdʒikəl]\"}, \"explanations\": [\"a.=physiologic,生理的;生理学(上)的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/physiological.wav\"}'),
('potential', 'caiyun', '{\"pronounces\": {\"en-us\": \"[pəˈtεnʃəl]\", \"en\": \"[pəˈtenʃəl]\"}, \"explanations\": [\"a.可能的;潜在的;电位的\", \"n.潜力;电势\"], \"synonym\": [\"possible\", \"promising\", \"hidden\", \"likely\", \"conceivable\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/potential.wav\"}'),
('preferably', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈprεfərəblɪ]\", \"en\": \"[ˈprefərəbli]\"}, \"explanations\": [\"ad.更合意地;更可取地;更好地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/preferably.wav\"}'),
('primordial', 'caiyun', '{\"pronounces\": {\"en-us\": \"[praɪˈmɔrdɪəl]\", \"en\": \"[praiˈmɔːdjəl]\"}, \"explanations\": [\"a.原始的;最初的;根本的;原生的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/primordial.wav\"}'),
('quantitative', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈkwɑntəˌtetɪv]\", \"en\": \"[ˈkwɔntitətiv]\"}, \"explanations\": [\"a.数量的,定量的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/quantitative.wav\"}'),
('quantitatively', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"ad.用数量表示地,测量地,音量地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/quantitatively.wav\"}'),
('repressed', 'caiyun', '{\"pronounces\": {\"en-us\": \"[rɪˈprεst]\", \"en\": \"[riˈprest]\"}, \"explanations\": [\"a.被压抑的,被抑制的\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/repressed.wav\"}'),
('reproducibility', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"n.复制,重复能力,再生率,增殖率\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/reproducibility.wav\"}'),
('resolution', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌrεzəˈljuʃən]\", \"en\": \"[ˌrezəˈljuːʃən]\"}, \"explanations\": [\"n.解决;决心;决断力;决议;分析;解答\", \"[物理]分解的过程\", \"[法律]判定,判决\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/resolution.wav\"}'),
('respectively', 'caiyun', '{\"pronounces\": {\"en-us\": \"[rɪˈspεktɪvlɪ]\", \"en\": \"[risˈpektivli]\"}, \"explanations\": [\"ad.个别地;各自地;分别地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/respectively.wav\"}'),
('restrict', 'caiyun', '{\"pronounces\": {\"en-us\": \"[rɪˈstrɪkt]\", \"en\": \"[riˈstrikt]\"}, \"explanations\": [\"vt.限制;约束;制(禁)止\"], \"synonym\": [\"confine\", \"limit\", \"bound\", \"hamper\", \"cramp\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/restrict.wav\"}'),
('review', 'caiyun', '{\"pronounces\": {\"en-us\": \"[rɪˈvju]\", \"en\": \"[riˈvjuː]\"}, \"explanations\": [\"n.回顾,复查;复习;评论,评论文章\", \"vt.再看;再检查;审查;观察;复习;写评论\", \"vi.复习功课;写评论\"], \"synonym\": [\"study\", \"remember\", \"recall\", \"learn\", \"examine\"], \"antonym\": [], \"st_examples\": [[\"get a good review\", \"受到好评\"], [\"You\'d better review what you\'ve learned every day . \", \"你最好每天复习所学的功课。\"]], \"wav_path\": \"pronounces/caiyun/review.wav\"}'),
('simultaneously', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˌsaɪmlˈtenɪəslɪ]\", \"en\": \"[ˌsiməlˈteiniəsli]\"}, \"explanations\": [\"ad.同时发生地,同时存在地;同步地;同时进行地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/simultaneously.wav\"}'),
('sonicate', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈsɑnəˌket]\", \"en\": \"[ˈsɔnikeit]\"}, \"explanations\": [\"n.(超)声波降解法\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/sonicate.wav\"}'),
('spectacular', 'caiyun', '{\"pronounces\": {\"en-us\": \"[spεkˈtækjəlɚ]\", \"en\": \"[spekˈtækjulə]\"}, \"explanations\": [\"a.壮观的;引人注目的;壮丽的\", \"n.奇观;惊人之举;展览物;壮观\"], \"synonym\": [\"dramatic\", \"sensational\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/spectacular.wav\"}'),
('stochastically', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"ad.魔术地\", \"[统计]随机地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/stochastically.wav\"}'),
('substantial', 'caiyun', '{\"pronounces\": {\"en-us\": \"[səbˈstænʃəl]\", \"en\": \"[səbˈstænʃəl]\"}, \"explanations\": [\"a.相当的;实际的;重要的;牢固的;实质上的;丰富的;真实的;坚固的\", \"n.实在的东西;有实际价值的东西\"], \"synonym\": [\"real\", \"actual\", \"true\", \"authentic\", \"strong\"], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/substantial.wav\"}'),
('synthesis', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈsɪnθəsɪs]\", \"en\": \"[ˈsinθisis]\"}, \"explanations\": [\"n.综合\", \"[化学]合成(法)\", \"[医]接合;综合体;综合物\"], \"synonym\": [], \"antonym\": [\"analysis\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/synthesis.wav\"}'),
('thoroughly', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈθɝolɪ]\", \"en\": \"[ˈθʌrəli]\"}, \"explanations\": [\"ad.完全地,彻底地;严密地;准确地\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/thoroughly.wav\"}'),
('unprecedented', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ʌnˈprεsəˌdεntɪd]\", \"en\": \"[ʌnˈpresidəntid]\"}, \"explanations\": [\"a.空前的;无前例的\"], \"synonym\": [\"unduplicated\", \"uncopied\", \"unimitated\", \"extraordinary\", \"exceptional\"], \"antonym\": [\"precedented\", \"usual\"], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/unprecedented.wav\"}'),
('variants', 'caiyun', '{\"pronounces\": {\"en-us\": \"[ˈvεrɪənt]\", \"en\": \"[ˈveəriənt]\"}, \"explanations\": [\"a.差异的;变化的;不同的\", \"n.变形;异体;改编\", \"[生物]异变体\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [], \"wav_path\": \"pronounces/caiyun/variants.wav\"}'),
('vitro', 'caiyun', '{\"pronounces\": null, \"explanations\": [\"体外受精\"], \"synonym\": \"\", \"antonym\": \"\", \"st_examples\": null, \"wav_path\": \"pronounces/caiyun/vitro.wav\"}'),
('whereas', 'caiyun', '{\"pronounces\": {\"en-us\": \"[hwεrˈæz]\", \"en\": \"[hweərˈæz]\"}, \"explanations\": [\"conj.而,却,反之;就…而言;虽然\", \"[法律]鉴于…;由于…;在同时\"], \"synonym\": [], \"antonym\": [], \"st_examples\": [[\"Some people like coffee, whereas others like tea. \", \"有人喜欢咖啡,然而也有人喜欢茶\"], [\"I know the things whereas you are displeased. \", \"我知道你对甚么不高兴\"]], \"wav_path\": \"pronounces/caiyun/whereas.wav\"}');

-- --------------------------------------------------------

--
-- 表的结构 `words`
--

CREATE TABLE `words` (
  `index` int NOT NULL,
  `word` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `sentence` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paper` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coll_date` date NOT NULL COMMENT 'collect date',
  `period` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'period type',
  `next` int NOT NULL DEFAULT '0' COMMENT 'the next period',
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `words`
--

INSERT INTO `words` (`index`, `word`, `sentence`, `paper`, `coll_date`, `period`, `next`, `review_date`) VALUES
(1, 'hello', 'Hello, My name is degiminnal! Nice to meat you.', 'temporary paper', '2023-02-06', 'paper', 4, '2023-02-13'),
(2, 'cohort', 'We applied CNNC using a large cohort of single-cell (SC) expression data and tested it on several inference tasks.', 'Deep learning for inferring gene relationships from single-cell expression data', '2023-02-06', 'paper', 4, '2023-02-13'),
(3, 'preferably', 'However, under certain conditions, only a small amount of material is available, which requires more sensitive techniques that can preferably be used at the singlecell level.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(4, 'assay', 'Here we describe a single-cell digital gene expression profiling assay.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(5, 'microarray', 'Using our mRNA-Seq assay with only a single mouse blastomere, we detected the expression of 75% (5,270) more genes than microarray techniques and identified 1,753 previously unknown splice junctions called by at least 5 reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(6, 'junctions', 'Using our mRNA-Seq assay with only a single mouse blastomere, we detected the expression of 75% (5,270) more genes than microarray techniques and identified 1,753 previously unknown splice junctions called by at least 5 reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(7, 'isoforms', 'Moreover, 8–19% of the genes with multiple known transcript isoforms expressed at least two isoforms in the same blastomere or oocyte, which unambiguously demonstrated the complexity of the transcript variants at whole-genome scale in individual cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(8, 'blastomere', 'Moreover, 8–19% of the genes with multiple known transcript isoforms expressed at least two isoforms in the same blastomere or oocyte, which unambiguously demonstrated the complexity of the transcript variants at whole-genome scale in individual cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(9, 'demonstrated', 'Moreover, 8–19% of the genes with multiple known transcript isoforms expressed at least two isoforms in the same blastomere or oocyte, which unambiguously demonstrated the complexity of the transcript variants at whole-genome scale in individual cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(10, 'variants', 'Moreover, 8–19% of the genes with multiple known transcript isoforms expressed at least two isoforms in the same blastomere or oocyte, which unambiguously demonstrated the complexity of the transcript variants at whole-genome scale in individual cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-06', 'paper', 4, '2023-02-13'),
(11, 'respectively', 'Finally, for Dicer1/ and Ago2/ (Eif2c2/) oocytes, we found that 1,696 and 1,553 genes, respectively, were abnormally upregulated compared to wild-type controls, with 619 genes in common.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(12, 'amplification', 'One of the most widely used single-cell cDNA amplification methods16,17 achieves quantitative accuracy by restricting the cDNA fragment to 0.85 kb from the 3¢ end, which corresponds to about 7% of all full-length cDNAs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(13, 'quantitative', 'One of the most widely used single-cell cDNA amplification methods16,17 achieves quantitative accuracy by restricting the cDNA fragment to 0.85 kb from the 3¢ end, which corresponds to about 7% of all full-length cDNAs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(14, 'restrict', 'One of the most widely used single-cell cDNA amplification methods16,17 achieves quantitative accuracy by restricting the cDNA fragment to 0.85 kb from the 3¢ end, which corresponds to about 7% of all full-length cDNAs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(15, 'simultaneously', 'In single cells at the same cell cycle stage, hundreds of genes (8–19% of all known genes with at least two known isoforms) simultaneously expressed at least two transcript isoforms.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(16, 'embryo', 'We also identified 1,753 previously unknown splice junctions called by at least five reads from only a single blastomere of a four-cell-stage embryo.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(17, 'novelty', 'The main technical novelty of this work is the combination of an improved unbiased amplification of cDNA from single cells with well over a 100 million reads, or a few gigabases of cDNAs on SOLiD system.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(18, 'amplification', 'The main technical novelty of this work is the combination of an improved unbiased amplification of cDNA from single cells with well over a 100 million reads, or a few gigabases of cDNAs on SOLiD system.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(19, 'gigabases', 'The main technical novelty of this work is the combination of an improved unbiased amplification of cDNA from single cells with well over a 100 million reads, or a few gigabases of cDNAs on SOLiD system.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(20, 'overlooked', 'This not only allowed us to discover many new transcripts that have been overlooked.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(21, 'quantitatively', 'We quantitatively estimate their abundance in the cell by the frequency with which the sequence occurs in the mRNA-Seq reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(22, 'abundance', 'We quantitatively estimate their abundance in the cell by the frequency with which the sequence occurs in the mRNA-Seq reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(23, 'substantial', 'These low-level transcripts would likely be missed by microarrays because of substantial noise.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(24, 'discriminate', 'Third, the assay uses double-stranded cDNAs but cannot discriminate between sense and antisense transcripts.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-07', 'paper', 3, '2023-02-11'),
(25, 'hi', 'hi, I am degim.', 'test hello world', '2023-02-07', 'paper', 3, '2023-02-11'),
(26, 'review', 'test review date', 'test demo', '2023-02-07', 'paper', 3, '2023-02-11'),
(27, 'nice', 'I say \"I\'m degim, nice to meet you!\".', 'test demo', '2023-02-08', 'paper', 3, '2023-02-12'),
(28, 'nice', 'I say \"I\'m degim, nice to meet you!\".', 'test demo', '2023-02-08', 'paper', 3, '2023-02-12'),
(29, 'nice', 'I said: \"I\'m degim, nice to meet you!\\\".', 'test demo', '2023-02-08', 'paper', 3, '2023-02-12'),
(30, 'substantial', 'These low-level transcripts would likely be missed by microarrays because of substantial noise.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(31, 'spectacular', 'By analyzing the transcriptome at spectacular and unprecedented depth and accuracy, thousands of new transcript variants and isoforms have been shown to be expressed in mammalian tissues or organs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(32, 'unprecedented', 'By analyzing the transcriptome at spectacular and unprecedented depth and accuracy, thousands of new transcript variants and isoforms have been shown to be expressed in mammalian tissues or organs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(33, 'variants', 'By analyzing the transcriptome at spectacular and unprecedented depth and accuracy, thousands of new transcript variants and isoforms have been shown to be expressed in mammalian tissues or organs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(34, 'mammalian', 'By analyzing the transcriptome at spectacular and unprecedented depth and accuracy, thousands of new transcript variants and isoforms have been shown to be expressed in mammalian tissues or organs.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(35, 'germline', 'In fact, during mouse early development, when the founder population of germline, primordial germ cells have just emerged, there are only around 30 primordial germ cells in the embryo.(primordial germ cells：原始生殖细胞)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(36, 'primordial', 'In fact, during mouse early development, when the founder population of germline, primordial germ cells have just emerged, there are only around 30 primordial germ cells in the embryo.(primordial germ cells：原始生殖细胞)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(37, 'vitro', 'Even for in vitro–cultured stem cells, for which the number of cells would appear to be unlimited, there are serious limitations.(vitro–cultured：体外培养的)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(38, 'culture', 'Even for in vitro–cultured stem cells, for which the number of cells would appear to be unlimited, there are serious limitations.(vitro–cultured：体外培养的)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(39, 'physiological', 'For example, mouse embryonic stem cells, probably the most thoroughly analyzed type of stem cells, contain multiple subpopulations with strong differences in both gene expression and physiological function.（subpopulations：亚种群; embryonic stem cells：胚胎干细胞)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(40, 'thoroughly', 'For example, mouse embryonic stem cells, probably the most thoroughly analyzed type of stem cells, contain multiple subpopulations with strong differences in both gene expression and physiological function.（subpopulations：亚种群; embryonic stem cells：胚胎干细胞)', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(41, 'feasible', 'With Applied Biosystems’ nextgeneration sequencing SOLiD system, we found that it is feasible to get digital gene expression profiles at single-cell resolution.（）', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(42, 'resolution', 'With Applied Biosystems’ nextgeneration sequencing SOLiD system, we found that it is feasible to get digital gene expression profiles at single-cell resolution.（）', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(43, 'mature', 'We also found that in Dicer1/ and Ago2/ mature oocytes, 1,696 and 1,553 genes, respectively, were abnormally upregulated, and 1,571 and 1,121 genes, respectively, were downregulated compared to wild-type controls, which illustrates the global importance of small RNAs (including microRNAs and endogenous small interfering RNAs) for oogenesis.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(44, 'endogenous', 'We also found that in Dicer1/ and Ago2/ mature oocytes, 1,696 and 1,553 genes, respectively, were abnormally upregulated, and 1,571 and 1,121 genes, respectively, were downregulated compared to wild-type controls, which illustrates the global importance of small RNAs (including microRNAs and endogenous small interfering RNAs) for oogenesis.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(45, 'oogenesis', 'We also found that in Dicer1/ and Ago2/ mature oocytes, 1,696 and 1,553 genes, respectively, were abnormally upregulated, and 1,571 and 1,121 genes, respectively, were downregulated compared to wild-type controls, which illustrates the global importance of small RNAs (including microRNAs and endogenous small interfering RNAs) for oogenesis.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(46, 'amine', 'We also modified the PCR primers by adding an amine at the 5¢ end to prevent the ligation of the 5¢ end fragments of the double-stranded cDNA to the SOLiD library adaptors, thereby eliminating end bias during sequencing.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(47, 'ligation', 'We also modified the PCR primers by adding an amine at the 5¢ end to prevent the ligation of the 5¢ end fragments of the double-stranded cDNA to the SOLiD library adaptors, thereby eliminating end bias during sequencing.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(48, 'eliminating', 'We also modified the PCR primers by adding an amine at the 5¢ end to prevent the ligation of the 5¢ end fragments of the double-stranded cDNA to the SOLiD library adaptors, thereby eliminating end bias during sequencing.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(49, 'sonicate', 'We sonicated cDNAs to fragments of 80–130 base pairs (bp).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(50, 'concordance', 'The concordance between the sequences of the plus and minus cDNA strands was high (Fig. 2a and Supplementary Table 1 online).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(51, 'complementary', 'As these complementary strands were annealed from sample preparation until the emulsion PCR step, the high concordance illustrated the accuracy of our sequencing technique (Supplementary Fig. 3 online) and mapping algorithms (Supplementary Fig. 4 online).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(52, 'annealed', 'As these complementary strands were annealed from sample preparation until the emulsion PCR step, the high concordance illustrated the accuracy of our sequencing technique (Supplementary Fig. 3 online) and mapping algorithms (Supplementary Fig. 4 online).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(53, 'emulsion', 'As these complementary strands were annealed from sample preparation until the emulsion PCR step, the high concordance illustrated the accuracy of our sequencing technique (Supplementary Fig. 3 online) and mapping algorithms (Supplementary Fig. 4 online).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(54, 'concordance', 'As these complementary strands were annealed from sample preparation until the emulsion PCR step, the high concordance illustrated the accuracy of our sequencing technique (Supplementary Fig. 3 online) and mapping algorithms (Supplementary Fig. 4 online).', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(55, 'fluorescence', 'Most of these genes were only marginally detected by microarray analysis (327/400 genes had fluorescence intensity on the chip lower than 100; Fig. 3b), which is similar to the result of the mRNA-Seq analysis using total RNAs from hundreds of thousands of cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(56, 'intensity', 'Most of these genes were only marginally detected by microarray analysis (327/400 genes had fluorescence intensity on the chip lower than 100; Fig. 3b), which is similar to the result of the mRNA-Seq analysis using total RNAs from hundreds of thousands of cells.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(57, 'stochastically', 'It is also possible that for some genes with low expression, their expression can be stochastically on or off in single cell, and these genes were probably not expressed in the individual cell analyzed by our mRNA-Seq assay.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-08', 'paper', 3, '2023-02-12'),
(58, 'exon', 'We started from known gene exons and generated all possible combinations of exon-exon junctions as 84-bp sequences with 42 bases from each exon.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(59, 'demonstrate', 'This also demonstrated the splice complexity within an individual cell.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(60, 'dissect', 'Finally, we determined whether mRNA-Seq assay could be used to dissect the functional consequences when one of the critical genes for microRNA synthesis, Dicer1, or when a core component of the RNA-induced silencing complex, Ago2, was conditionally knocked out during oocyte development.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(61, 'synthesis', 'Finally, we determined whether mRNA-Seq assay could be used to dissect the functional consequences when one of the critical genes for microRNA synthesis, Dicer1, or when a core component of the RNA-induced silencing complex, Ago2, was conditionally knocked out during oocyte development.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(62, 'conditionally', 'Finally, we determined whether mRNA-Seq assay could be used to dissect the functional consequences when one of the critical genes for microRNA synthesis, Dicer1, or when a core component of the RNA-induced silencing complex, Ago2, was conditionally knocked out during oocyte development.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(63, 'reproducibility', 'To determine the reproducibility of our assay, we compared the sequence data for two separately processed single wildtype mature oocytes and found that they showed very similar transcriptome profiles.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(64, 'phenotype', 'the phenotype of Ago2/ oocytes is similar to but milder than that of Dicer1/ oocytes.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(65, 'milder', 'the phenotype of Ago2/ oocytes is similar to but milder than that of Dicer1/ oocytes.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(66, 'coverage', 'In Figure 5,we present the coverage we obtained with this method for Dicer1, Ccne1, Dppa5.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(67, 'intron', 'The reads were found in exons with sharp boundaries at the exon-intron junction, confirming the single-exon resolution of the mRNA-Seq reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(68, 'resolution', 'The reads were found in exons with sharp boundaries at the exon-intron junction, confirming the single-exon resolution of the mRNA-Seq reads.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(69, 'whereas', 'There was a loss of reads that map to exon 23 whereas the reads from neighboring exons were intact in the single Dicer1/ oocyte.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(70, 'intact', 'There was a loss of reads that map to exon 23 whereas the reads from neighboring exons were intact in the single Dicer1/ oocyte.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(71, 'compromised', 'Abnormal upregulation of these genes may contribute to the compromised developmental potential of Dicer1/ and Ago2/ oocytes.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(72, 'potential', 'Abnormal upregulation of these genes may contribute to the compromised developmental potential of Dicer1/ and Ago2/ oocytes.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(73, 'repressed', 'Some expressed genes in mature oocytes are repressed by endogenous short interfering RNA through Dicer1.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11'),
(74, 'endogenous', 'Some expressed genes in mature oocytes are repressed by endogenous short interfering RNA through Dicer1.', 'mRNA-Seq whole-transcriptome analysis of a single cell', '2023-02-09', 'paper', 2, '2023-02-11');

--
-- 转储表的索引
--

--
-- 表的索引 `period_type`
--
ALTER TABLE `period_type`
  ADD PRIMARY KEY (`period`);

--
-- 表的索引 `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`word`,`api`);

--
-- 表的索引 `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`index`),
  ADD KEY `period` (`period`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `words`
--
ALTER TABLE `words`
  MODIFY `index` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- 限制导出的表
--

--
-- 限制表 `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_ibfk_1` FOREIGN KEY (`period`) REFERENCES `period_type` (`period`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
