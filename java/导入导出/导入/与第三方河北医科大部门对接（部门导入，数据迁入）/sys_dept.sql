/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : test2

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-04-18 22:39:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL COMMENT '机构名称',
  `parent_id` int(11) NOT NULL COMMENT '上级机构ID',
  `code` varchar(300) DEFAULT NULL COMMENT '机构编码',
  `search_code` varchar(300) NOT NULL COMMENT '查询码',
  `py` varchar(300) DEFAULT NULL COMMENT '拼音缩写',
  `wb` varchar(300) DEFAULT NULL COMMENT '五笔缩写',
  `full_name` varchar(600) NOT NULL COMMENT '全路径',
  `isdel` int(11) NOT NULL COMMENT '是否删除',
  `remark` varchar(600) DEFAULT NULL COMMENT '备注',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `update_user` int(11) DEFAULT NULL COMMENT '修改人',
  `type_id` int(11) DEFAULT NULL COMMENT '机构类型，根据业务设计，关联字典项目表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '所有单位', '0', '00000000', '001', 'SYDW', 'RDUW', '所有单位', '0', '', '2019-04-18 06:15:00', '2019-04-18 06:15:00', '1', '1', null);
INSERT INTO `sys_dept` VALUES ('2', '其他部门', '1', '', '001001', 'QT', 'AW', '所有单位-其他', '0', '', '2019-04-18 06:15:00', '2019-04-18 06:15:00', '1', '1', null);
INSERT INTO `sys_dept` VALUES ('3', '保健病区', '1', '', '001002', 'BJBQ', 'WWUA\n', '所有单位-保健病区', '0', 'string', '2019-04-18 06:18:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('4', '保卫处\n', '1', '', '001003', 'BWC', 'WBT\n\n', '所有单位-保卫处\n', '0', '', '2019-04-18 06:18:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('5', '变态反应科\n\n', '1', '', '001004', 'BTFYK', 'YDRYT\n\n\n', '所有单位-变态反应科\n\n', '0', '', '2019-04-18 06:19:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('6', '病理科\n\n', '1', '', '001005', 'BLK', 'UGT\n\n\n', '所有单位-病理科\n\n', '0', '', '2019-04-18 06:19:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('7', '财务处\n\n\n', '1', '', '001006', 'CWC', 'MTT\n\n\n\n', '所有单位-财务处\n\n\n', '0', '', '2019-04-18 06:19:40', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('8', '产科\n\n\n\n', '1', '', '001007', 'CK', 'UT\n\n\n\n\n', '所有单位-产科\n\n\n\n', '0', '', '2019-04-18 06:19:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('9', '超声科\n\n\n\n\n', '1', '', '001008', 'CSK', 'FFT\n\n\n\n\n\n', '所有单位-超声科\n\n\n\n\n', '0', '', '2019-04-18 06:20:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('10', '党务办公室\n\n\n\n\n', '1', '', '001009', 'DWBGS', 'ITLWP\n\n\n\n\n\n\n', '所有单位-党务办公室\n\n\n\n\n\n', '0', '', '2019-04-18 06:20:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('11', '导管室\n', '1', '', '001010', 'DGS', 'NTP\n', '所有单位-导管室\n', '0', '', '2019-04-18 06:22:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('12', '儿科\n', '1', '', '001011', 'EK', 'QT\n', '所有单位-儿科\n', '0', '', '2019-04-18 06:22:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('13', '耳鼻咽喉科\n', '1', '', '001012', 'EBYHK', 'BTKKT\n', '所有单位-耳鼻咽喉科\n', '0', '', '2019-04-18 06:22:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('14', '法律部（医患关系办公室）\n', '1', '', '001013', 'FLB（YHGXBGS）', 'ITU！AKUTLWP！\n', '所有单位-法律部（医患关系办公室）\n', '0', '', '2019-04-18 06:22:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('15', '放射科\n', '1', '', '001014', 'FSK', 'YTT\n', '所有单位-放射科\n', '0', '', '2019-04-18 06:23:05', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('16', '风湿免疫科\n', '1', '', '001015', 'FSMYK', 'MIQUT\n', '所有单位-风湿免疫科\n', '0', '', '2019-04-18 06:23:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('17', '妇产科\n', '1', '', '001016', 'FCK', 'VUT\n', '所有单位-妇产科\n', '0', '', '2019-04-18 06:23:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('18', '妇科\n', '1', '', '001017', 'FK', 'VT\n', '所有单位-妇科\n', '0', '', '2019-04-18 06:23:54', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('19', '肝病中心\n', '1', '', '001018', 'GBZX', 'EUKN\n', '所有单位-肝病中心\n', '0', '', '2019-04-18 06:24:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('20', '肝胆耳鼻咽喉皮肤病区\n', '1', '', '001019', 'GDEBYHPFBQ', 'EEBTKKHEUA\n', '所有单位-肝胆耳鼻咽喉皮肤病区\n', '0', '', '2019-04-18 06:24:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('21', '肝胆外科\n', '1', '', '001020', 'GDWK', 'EEQT\n', '所有单位-肝胆外科\n', '0', '', '2019-04-18 06:24:26', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('22', '感染性疾病科\n', '1', '', '001021', 'GRXJBK', 'DINUUT\n', '所有单位-感染性疾病科\n', '0', '', '2019-04-18 06:24:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('23', '工会\n', '1', '', '001022', 'GH', 'AW\n', '所有单位-工会\n', '0', '', '2019-04-18 06:24:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('24', '骨二科\n', '1', '', '001023', 'GEK', 'MFT\n', '所有单位-骨二科\n', '0', '', '2019-04-18 06:25:54', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('25', '骨科门诊\n', '1', '', '001024', 'GKMZ', 'MTUY\n', '所有单位-骨科门诊\n', '0', '', '2019-04-18 06:25:40', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('26', '骨一科\n', '1', '', '001025', 'GYK', 'MGT\n', '所有单位-骨一科\n', '0', '', '2019-04-18 06:25:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('27', '国医堂\n', '1', '', '001026', 'GYT', 'LAI\n', '所有单位-国医堂\n', '0', '', '2019-04-18 06:26:39', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('28', '核医学科\n', '1', '', '001027', 'HYXK', 'SAIT\n', '所有单位-核医学科\n', '0', '', '2019-04-18 06:26:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('29', '后勤处\n', '1', '', '001028', 'HQC', 'RAT\n', '所有单位-后勤处\n', '0', '', '2019-04-18 06:27:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('30', '呼吸内科\n', '1', '', '001029', 'HXNK', 'KKMT\n', '所有单位-呼吸内科\n', '0', '', '2019-04-18 06:27:13', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('31', '护理部\n', '1', '', '001030', 'HLB', 'RGU\n', '所有单位-护理部\n', '0', '', '2019-04-18 06:27:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('32', '患者服务部\n', '1', '', '001031', 'HZFWB', 'KFETU\n', '所有单位-患者服务部\n', '0', '', '2019-04-18 06:27:32', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('33', '基建处\n', '1', '', '001032', 'JJC', 'AVT\n', '所有单位-基建处\n', '0', '', '2019-04-18 06:27:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('34', '急诊科\n', '1', '', '001033', 'JZK', 'QYT\n', '所有单位-急诊科', '0', '', '2019-04-18 06:27:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('35', '急诊内科（神内）', '1', '', '001034', 'JZNK（SN', 'QYMT！PM\n', '所有单位-急诊内科（神内）', '0', '', '2019-04-18 06:28:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('36', '急诊外科\n', '1', '', '001035', 'JZWK', 'QYQT\n', '所有单位-急诊外科\n', '0', '', '2019-04-18 06:28:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('37', '纪检监察处\n', '1', '', '001036', 'JJJCC', 'XSJPT\n', '所有单位-纪检监察处\n', '0', '', '2019-04-18 06:34:20', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('38', '检验一科\n', '1', '', '001037', 'JYYK', 'SCGT\n', '所有单位-检验一科\n', '0', '', '2019-04-18 06:34:32', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('39', '检验二科\n', '1', '', '001038', 'JYEK', 'SCFT\n', '所有单位-检验二科\n', '0', '', '2019-04-18 06:34:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('40', '简易门诊2\n', '1', '', '001039', 'JYMZ2', 'TJUY2\n', '所有单位-简易门诊2\n', '0', '', '2019-04-18 06:34:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('41', '健康查体部\n', '1', '', '001040', 'JKCTB', 'WYSWU\n', '所有单位-健康查体部\n', '0', '', '2019-04-18 06:35:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('42', '健康学院\n', '1', '', '001041', 'JKXY', 'WYIB\n', '所有单位-健康学院\n', '0', '', '2019-04-18 06:35:19', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('43', '教务处\n', '1', '', '001042', 'JWC', 'FTT\n', '所有单位-教务处\n', '0', '', '2019-04-18 06:35:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('44', '精神康复\n', '1', '', '001043', 'JSKF', 'OPYT\n', '所有单位-精神康复\n', '0', '', '2019-04-18 06:35:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('45', '精卫门诊\n', '1', '', '001044', 'JWMZ', 'OBUY\n', '所有单位-精卫门诊\n', '0', '', '2019-04-18 06:36:14', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('46', '精卫一\n', '1', '', '001045', 'JWY', 'OBG\n', '所有单位-精卫一\n', '0', '', '2019-04-18 06:36:20', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('47', '精卫二\n', '1', '', '001046', 'JWE', 'OBF\n', '所有单位-精卫二\n', '0', '', '2019-04-18 06:36:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('48', '精卫三\n', '1', '', '001047', 'JWS', 'OBD\n', '所有单位-精卫三\n', '0', '', '2019-04-18 06:36:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('49', '精卫四\n', '1', '', '001048', 'JWS', 'OBL\n', '所有单位-精卫四\n', '0', '', '2019-04-18 06:36:31', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('50', '精卫五\n', '1', '', '001049', 'JWW', 'OBG\n', '所有单位-精卫五\n', '0', '', '2019-04-18 06:36:35', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('51', '精卫六\n', '1', '', '001050', 'JWL', 'OBU\n', '所有单位-精卫六\n', '0', '', '2019-04-18 06:36:39', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('52', '精卫七\n', '1', '', '001051', 'JWQ', 'OBA\n', '所有单位-精卫七\n', '0', '', '2019-04-18 06:36:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('53', '经济管理办公室\n', '1', '', '001052', 'JJGLBGS', 'XITGLWP\n', '所有单位-经济管理办公室\n', '0', '', '2019-04-18 06:36:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('54', '纠风办公室\n', '1', '', '001053', 'JFBGS', 'XMLWP\n', '所有单位-纠风办公室\n', '0', '', '2019-04-18 06:36:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('55', '康复医学科\n', '1', '', '001054', 'KFYXK', 'YTAIT\n', '所有单位-康复医学科\n', '0', '', '2019-04-18 06:37:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('56', '科研处\n', '1', '', '001055', 'KYC', 'TDT\n', '所有单位-科研处\n', '0', '', '2019-04-18 06:37:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('57', '口腔科\n', '1', '', '001056', 'KQK', 'KET\n', '所有单位-口腔科\n', '0', '', '2019-04-18 06:37:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('58', '口腔正畸科\n', '1', '', '001057', 'KQZJK', 'KEGLT\n', '所有单位-口腔正畸科\n', '0', '', '2019-04-18 06:37:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('59', '老年病科\n', '1', '', '001058', 'LNBK', 'FRUT\n', '所有单位-老年病科\n', '0', '', '2019-04-18 06:37:54', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('60', '老年病脑卒中病区\n', '1', '', '001059', 'LNBNZZBQ', 'FRUEYKUA\n', '所有单位-老年病脑卒中病区\n', '0', '', '2019-04-18 06:38:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('61', '临床心理科\n', '1', '', '001060', 'LCXLK', 'JYNGT\n', '所有单位-临床心理科\n', '0', '', '2019-04-18 06:38:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('62', '临床营养科', '1', '', '001061', 'LCYYK', 'JYAUT', '所有单位-临床营养科', '0', '', '2019-04-18 06:38:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('63', '麻醉手术科', '1', '', '001062', 'MZSSK', 'YSRST', '所有单位-麻醉手术科', '0', '', '2019-04-18 06:38:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('64', '泌尿外科', '1', '', '001063', 'MNWK', 'INQT', '所有单位-泌尿外科', '0', '', '2019-04-18 06:39:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('65', '脑功能科', '1', '', '001064', 'NGNK', 'EACT', '所有单位-脑功能科', '0', '', '2019-04-18 06:39:18', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('66', '内分泌科', '1', '', '001065', 'NFMK', 'MWIT', '所有单位-内分泌科', '0', '', '2019-04-18 06:39:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('67', '内镜中心', '1', '', '001066', 'NJZX', 'MQKN', '所有单位-内镜中心', '0', '', '2019-04-18 06:39:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('68', '皮肤科', '1', '', '001067', 'PFK', 'HET', '所有单位-皮肤科', '0', '', '2019-04-18 06:39:47', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('69', '普外一科（腺体外科）', '1', '', '001068', 'PWYK（XTWK）', 'UQGT！EWQT！', '所有单位-普外一科（腺体外科）', '0', '', '2019-04-18 06:40:13', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('70', '普外一眼科病区', '1', '', '001069', 'PWYYKBQ', 'UQGHTUA', '所有单位-普外一眼科病区', '0', '', '2019-04-18 06:40:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('71', '普外二科（血管外科）', '1', '', '001070', 'PWEK（XGWK）', 'UQFT！TTQT！', '所有单位-普外二科（血管外科）', '0', '', '2019-04-18 06:40:35', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('72', '普外三科（胃肠外科）', '1', '', '001071', 'PWSK（WCWK）', 'UQDT！LEQT！', '所有单位-普外三科（胃肠外科）', '0', '', '2019-04-18 06:40:45', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('73', '全科医学科', '1', '', '001072', 'QKYXK', 'WTAIT', '所有单位-全科医学科', '0', '', '2019-04-18 06:41:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('74', '人力资源部', '1', '', '001073', 'RLZYB', 'WLUIU', '所有单位-人力资源部', '0', '', '2019-04-18 06:41:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('75', '烧伤整形科', '1', '', '001074', 'SSZXK', 'OWGGT', '所有单位-烧伤整形科', '0', '', '2019-04-18 06:41:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('76', '设备处', '1', '', '001075', 'SBC', 'YTT', '所有单位-设备处', '0', '', '2019-04-18 06:41:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('77', '神经内科', '1', '', '001076', 'SJNK', 'PXMT', '所有单位-神经内科', '0', '', '2019-04-18 06:42:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('78', '神经内一科', '1', '', '001077', 'SJNYK', 'PXMGT', '所有单位-神经内一科', '0', '', '2019-04-18 06:42:22', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('79', '神经内一科（睡眠）', '1', '', '001078', 'SJNYK（SM）', 'PXMGT！HH！', '所有单位-神经内一科（睡眠）', '0', '', '2019-04-18 06:42:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('80', '神经内二科', '1', '', '001079', 'SJNEK', 'PXMFT', '所有单位-神经内二科', '0', '', '2019-04-18 06:42:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('81', '神经内二科（眩晕中心）', '1', '', '001080', 'SJNEK（XYZX）', 'PXMFT！HJKN！', '所有单位-神经内二科（眩晕中心）', '0', '', '2019-04-18 06:43:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('82', '神经内三科（脑卒中）', '1', '', '001081', 'SJNSK（NZZ）', 'PXMDT！EYK！', '所有单位-神经内三科（脑卒中）', '0', '', '2019-04-18 06:43:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('83', '神内二康复病区', '1', '', '001082', 'SNEKFBQ', 'PMFYTUA', '所有单位-神内二康复病区', '0', '', '2019-04-18 06:44:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('84', '神经外科监护室', '1', '', '001083', 'SJWKJHS', 'PXQTJRP', '所有单位-神经外科监护室', '0', '', '2019-04-18 06:44:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('85', '神经外一科', '1', '', '001084', 'SJWYK', 'PXQGT', '所有单位-神经外一科', '0', '', '2019-04-18 06:44:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('86', '神经外二科', '1', '', '001085', 'SJWEK', 'PXQFT', '所有单位-神经外二科', '0', '', '2019-04-18 06:44:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('87', '审计处', '1', '', '001086', 'SJC', 'PYT', '所有单位-审计处', '0', '', '2019-04-18 06:45:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('88', '肾内一科（中西医结合肾病）', '1', '', '001087', 'SNYK（ZXYJHSB）', 'JMGT！KSAXWJU！', '所有单位-肾内一科（中西医结合肾病）', '0', '', '2019-04-18 06:45:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('89', '肾内二中医风湿病区', '1', '', '001088', 'SNEZYFSBQ', 'JMFKAMIUA', '所有单位-肾内二中医风湿病区', '0', '', '2019-04-18 06:46:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('90', '肾内二科（血液净化血管通路）', '1', '', '001089', 'SNEK（XYJHXGTL）', 'JMFT！TIUWTTCK！', '所有单位-肾内二科（血液净化血管通路）', '0', '', '2019-04-18 06:46:12', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('91', '生殖医学科', '1', '', '001090', 'SZYXK', 'TGAIT', '所有单位-生殖医学科', '0', '', '2019-04-18 06:46:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('92', '食堂', '1', '', '001091', 'ST', 'WI', '所有单位-食堂', '0', '', '2019-04-18 06:46:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('93', '输血科', '1', '', '001092', 'SXK', 'LTT', '所有单位-输血科', '0', '', '2019-04-18 06:46:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('94', '司法鉴定中心', '1', '', '001093', 'SFJDZX', 'NIJPKN', '所有单位-司法鉴定中心', '0', '', '2019-04-18 06:47:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('95', '团委', '1', '', '001094', 'TW', 'LT', '所有单位-团委', '0', '', '2019-04-18 06:47:20', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('96', '雾化中心', '1', '', '001095', 'WHZX', 'FWKN', '所有单位-雾化中心', '0', '', '2019-04-18 06:47:31', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('97', '物资处', '1', '', '001096', 'WZC', 'TUT', '所有单位-物资处', '0', '', '2019-04-18 06:47:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('98', '细胞治疗室', '1', '', '001097', 'XBZLS', 'XEIUP', '所有单位-细胞治疗室', '0', '', '2019-04-18 06:47:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('99', '先天性心脏病科', '1', '', '001098', 'XTXXZBK', 'TGNNEUT', '所有单位-先天性心脏病科', '0', '', '2019-04-18 06:48:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('100', '消化内科', '1', '', '001099', 'XHNK', 'IWMT', '所有单位-消化内科', '0', '', '2019-04-18 06:49:11', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('101', '心功能科', '1', '', '001100', 'XGNK', 'NACT', '所有单位-心功能科', '0', '', '2019-04-18 06:49:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('102', '心内一全科医学病区', '1', '', '001101', 'XNYQKYXBQ', 'NMGWTAIUA', '所有单位-心内一全科医学病区', '0', '', '2019-04-18 06:49:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('103', '心内一科', '1', '', '001102', 'XNYK', 'NMGT', '所有单位-心内一科', '0', '', '2019-04-18 06:50:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('104', '心内二科', '1', '', '001103', 'XNEK', 'NMFT', '所有单位-心内二科', '0', '', '2019-04-18 06:50:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('105', '心内三科', '1', '', '001104', 'XNSK', 'NMDT', '所有单位-心内三科', '0', '', '2019-04-18 06:50:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('106', '心胸病区', '1', '', '001105', 'XXBQ', 'NEUA', '所有单位-心胸病区', '0', '', '2019-04-18 06:51:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('107', '心脏超声科', '1', '', '001106', 'XZCSK', 'NEFFT', '所有单位-心脏超声科', '0', '', '2019-04-18 06:51:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('108', '心脏大血管外科', '1', '', '001107', 'XZDXGWK', 'NEDTTQT', '所有单位-心脏大血管外科', '0', '', '2019-04-18 06:51:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('109', '心脏中心', '1', '', '001108', 'XZZX', 'NEKN', '所有单位-心脏中心', '0', '', '2019-04-18 06:52:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('110', '信息化建设部', '1', '', '001109', 'XXHJSB', 'WTWVYU', '所有单位-信息化建设部', '0', '', '2019-04-18 06:52:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('111', '胸外科', '1', '', '001110', 'XWK', 'EQT', '所有单位-胸外科', '0', '', '2019-04-18 06:52:32', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('112', '宣传部', '1', '', '001111', 'XCB', 'PWU', '所有单位-宣传部', '0', '', '2019-04-18 06:52:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('113', '血透室病区', '1', '', '001112', 'XTSBQ', 'TTPUA', '所有单位-血透室病区', '0', '', '2019-04-18 06:52:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('114', '血液内科', '1', '', '001113', 'XYNK', 'TIMT', '所有单位-血液内科', '0', '', '2019-04-18 06:53:10', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('115', '眼科', '1', '', '001114', 'YK', 'HT', '所有单位-眼科', '0', '', '2019-04-18 06:53:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('116', '药学部', '1', '', '001115', 'YXB', 'AIU', '所有单位-药学部', '0', '', '2019-04-18 06:53:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('117', '医保办公室（物价办公室）', '1', '', '001116', 'YBBGS（WJBGS）', 'AWLWP！TWLWP！', '所有单位-医保办公室（物价办公室）', '0', '', '2019-04-18 06:53:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('118', '医联体办公室', '1', '', '001117', 'YLTBGS', 'ABWLWP', '所有单位-医联体办公室', '0', '', '2019-04-18 06:54:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('119', '医院感染管理部（公共卫生科）', '1', '', '001118', 'YYGRGLB（GGWSK）', 'ABDITGU！WABTT！', '所有单位-医院感染管理部（公共卫生科）', '0', '', '2019-04-18 06:54:20', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('120', '元氏院区', '1', '', '001119', 'YSYQ', 'FQBA', '所有单位-元氏院区', '0', '', '2019-04-18 06:54:31', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('121', '院领导', '1', '', '001120', 'YLD', 'BWN', '所有单位-院领导', '0', '', '2019-04-18 06:54:40', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('122', '院前急救部', '1', '', '001121', 'YQJJB', 'BUQFU', '所有单位-院前急救部', '0', '', '2019-04-18 06:54:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('123', '智慧医疗部', '1', '', '001122', 'ZHYLB', 'TDAUU', '所有单位-智慧医疗部', '0', '', '2019-04-18 06:55:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('124', '质量管理办公室', '1', '', '001123', 'ZLGLBGS', 'RJTGLWP', '所有单位-质量管理办公室', '0', '', '2019-04-18 06:55:11', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('125', '中医科', '1', '', '001124', 'ZYK', 'KAT', '所有单位-中医科', '0', '', '2019-04-18 06:55:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('126', '中医科2', '1', '', '001125', 'ZYK2', 'KAT2', '所有单位-中医科2', '0', '', '2019-04-18 06:55:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('127', '肿瘤科', '1', '', '001126', 'ZLK', 'EUT', '所有单位-肿瘤科', '0', '', '2019-04-18 06:55:40', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('128', '重症医学科', '1', '', '001127', 'ZZYXK', 'TUAIT', '所有单位-重症医学科', '0', '', '2019-04-18 06:55:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('129', '组织部', '1', '', '001128', 'ZZB', 'XXU', '所有单位-组织部', '0', '', '2019-04-18 06:56:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('130', '健康学院_', '42', '', '001041001', 'JKXY_', 'WYIB_', '所有单位-健康学院\n-健康学院_', '1', '', '2019-04-18 07:00:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('131', '健康学院_', '42', '', '001041001', 'JKXY_', 'WYIB_', '所有单位-健康学院\n-健康学院_', '0', '', '2019-04-18 07:02:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('132', '呼吸内科_', '30', '', '001029001', 'HXNK_', 'KKMT_', '所有单位-呼吸内科\n-呼吸内科_', '0', '', '2019-04-18 07:09:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('133', '呼吸内科病区', '30', '', '001029002', 'HXNKBQ', 'KKMTUA', '所有单位-呼吸内科\n-呼吸内科病区', '0', '', '2019-04-18 07:10:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('134', '消化内科_', '100', '', '001099001', 'XHNK_', 'IWMT_', '所有单位-消化内科-消化内科_', '0', '', '2019-04-18 07:11:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('135', '消化内科病区', '100', '', '001099002', 'XHNKBQ', 'IWMTUA', '所有单位-消化内科-消化内科病区', '0', '', '2019-04-18 07:12:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('136', '神经内一科_', '78', null, '001077001', 'SJNYK_', 'PXMGT_', '所有单位-神经内一科-神经内一科_', '0', null, '2019-04-18 07:13:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('137', '神内一病区', '78', '', '001077002', 'SNYBQ', 'PMGUA', '所有单位-神经内一科-神内一病区', '0', '', '2019-04-18 07:17:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('138', '神经内二科_', '80', '', '001079001', 'SJNEK_', 'PXMFT_', '所有单位-神经内二科-神经内二科_', '0', '', '2019-04-18 07:23:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('139', '神经内三科（脑卒中）_', '82', '', '001081001', 'SJNSK（NZZ）_', 'PXMDT！EYK！_', '所有单位-神经内三科（脑卒中）-神经内三科（脑卒中）_', '0', '', '2019-04-18 07:24:12', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('140', '心内一科_', '103', '', '001102001', 'XNYK_', 'NMGT_', '所有单位-心内一科-心内一科_', '0', '', '2019-04-18 07:25:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('141', '心内一病区', '103', '', '001102002', 'XNYBQ', 'NMGUA', '所有单位-心内一科-心内一病区', '0', '', '2019-04-18 07:25:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('142', '心内二科_', '104', '', '001103001', 'XNEK_', 'NMFT_', '所有单位-心内二科-心内二科_', '0', '', '2019-04-18 07:26:49', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('143', '心内二病区', '104', '', '001103002', 'XNEBQ', 'NMFUA', '所有单位-心内二科-心内二病区', '0', '', '2019-04-18 07:27:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('144', '心内三科_', '105', '', '001104001', 'XNSK_', 'NMDT_', '所有单位-心内三科-心内三科_', '0', '', '2019-04-18 07:27:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('145', '心内三病区', '105', '', '001104002', 'XNSBQ', 'NMDUA', '所有单位-心内三科-心内三病区', '0', '', '2019-04-18 07:27:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('146', '血液内科_', '114', '', '001113001', 'XYNK_', 'TIMT_', '所有单位-血液内科-血液内科_', '0', '', '2019-04-18 07:28:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('147', '血液内科病区', '114', '', '001113002', 'XYNKBQ', 'TIMTUA', '所有单位-血液内科-血液内科病区', '0', '', '2019-04-18 07:29:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('148', '肾内一病区', '88', '', '001087001', 'SNYBQ', 'JMGUA', '所有单位-肾内一科（中西医结合肾病）-肾内一病区', '0', '', '2019-04-18 07:30:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('149', '肾内一科（中西医结合肾病）_', '88', '', '001087002', 'SNYK（ZXYJHSB）_', 'JMGT！KSAXWJU！_', '所有单位-肾内一科（中西医结合肾病）-肾内一科（中西医结合肾病）_', '0', '', '2019-04-18 07:30:49', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('150', '肾内二科（血液净化血管通路）_', '90', '', '001089001', 'SNEK（XYJHXGTL）_', 'JMFT！TIUWTTCK！_', '所有单位-肾内二科（血液净化血管通路）-肾内二科（血液净化血管通路）_', '0', '', '2019-04-18 07:31:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('151', '血透室', '90', '', '001089002', 'XTS', 'TTP', '所有单位-肾内二科（血液净化血管通路）-血透室', '0', '', '2019-04-18 07:33:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('152', '内分泌科_', '66', '', '001065001', 'NFMK_', 'MWIT_', '所有单位-内分泌科-内分泌科_', '0', '', '2019-04-18 07:34:17', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('153', '内分泌病区', '66', '', '001065002', 'NFMBQ', 'MWIUA', '所有单位-内分泌科-内分泌病区', '0', '', '2019-04-18 07:34:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('154', '风湿免疫科_', '16', '', '001015001', 'FSMYK_', 'MIQUT_', '所有单位-风湿免疫科\n-风湿免疫科_', '0', '', '2019-04-18 07:35:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('155', '老年病科_', '59', '', '001058001', 'LNBK_', 'FRUT_', '所有单位-老年病科\n-老年病科_', '0', '', '2019-04-18 07:37:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('156', '肠道门诊', '19', '', '001018001', 'CDMZ', 'EUUY', '所有单位-肝病中心\n-肠道门诊', '0', '', '2019-04-18 07:39:31', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('157', '发热门诊', '19', '', '001018002', 'FRMZ', 'NRUY', '所有单位-肝病中心\n-发热门诊', '0', '', '2019-04-18 07:39:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('158', '肝病病区', '19', '', '001018003', 'GBBQ', 'EUUA', '所有单位-肝病中心\n-肝病病区', '0', '', '2019-04-18 07:40:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('159', '肝病中心_', '19', '', '001018004', 'GBZX_', 'EUKN_', '所有单位-肝病中心\n-肝病中心_', '0', '', '2019-04-18 07:40:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('160', '肿瘤科_', '127', '', '001126001', 'ZLK_', 'EUT_', '所有单位-肿瘤科-肿瘤科_', '0', '', '2019-04-18 07:42:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('161', '肿瘤病区', '127', '', '001126002', 'ZLBQ', 'EUUA', '所有单位-肿瘤科-肿瘤病区', '0', '', '2019-04-18 07:42:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('162', '重症医学科_', '128', '', '001127001', 'ZZYXK_', 'TUAIT_', '所有单位-重症医学科-重症医学科_', '0', '', '2019-04-18 07:43:59', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('163', 'ICU病区', '128', '', '001127002', 'ICUBQ', 'ICUUA', '所有单位-重症医学科-ICU病区', '0', '', '2019-04-18 07:44:13', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('164', '中医科（国医堂）', '125', '', '001124001', 'ZYK（GYT）', 'KAT！LAI！', '所有单位-中医科-中医科（国医堂）', '0', '', '2019-04-18 07:45:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('165', '普外一科（腺体外科）_', '69', '', '001068001', 'PWYK（XTWK）_', 'UQGT！EWQT！_', '所有单位-普外一科（腺体外科）-普外一科（腺体外科）_', '0', '', '2019-04-18 07:47:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('166', '普外二科（血管外科）_', '71', '', '001070001', 'PWEK（XGWK）_', 'UQFT！TTQT！_', '所有单位-普外二科（血管外科）-普外二科（血管外科）_', '0', '', '2019-04-18 07:48:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('167', '普外二病区', '71', '', '001070002', 'PWEBQ', 'UQFUA', '所有单位-普外二科（血管外科）-普外二病区', '0', '', '2019-04-18 07:48:47', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('168', '普外三科（胃肠外科）_', '72', '', '001071001', 'PWSK（WCWK）_', 'UQDT！LEQT！_', '所有单位-普外三科（胃肠外科）-普外三科（胃肠外科）_', '0', '', '2019-04-18 07:49:32', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('169', '普外三病区', '72', '', '001071002', 'PWSBQ', 'UQDUA', '所有单位-普外三科（胃肠外科）-普外三病区', '0', '', '2019-04-18 07:49:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('170', '肝胆外科_', '21', '', '001020001', 'GDWK_', 'EEQT_', '所有单位-肝胆外科\n-肝胆外科_', '0', '', '2019-04-18 07:53:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('171', '神经外科监护室_', '85', '', '001084001', 'SJWKJHS_', 'PXQTJRP_', '所有单位-神经外一科-神经外科监护室_', '0', '', '2019-04-18 07:59:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('172', '神经外一科_', '85', '', '001084002', 'SJWYK_', 'PXQGT_', '所有单位-神经外一科-神经外一科_', '0', '', '2019-04-18 07:59:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('173', '神外一病区', '85', '', '001084003', 'SWYBQ', 'PQGUA', '所有单位-神经外一科-神外一病区', '0', '', '2019-04-18 08:00:29', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('174', '神经外二科_', '86', '', '001085001', 'SJWEK_', 'PXQFT_', '所有单位-神经外二科-神经外二科_', '0', '', '2019-04-18 08:01:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('175', '神外二病区', '86', '', '001085002', 'SWEBQ', 'PQFUA', '所有单位-神经外二科-神外二病区', '0', '', '2019-04-18 08:01:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('176', '骨一科_', '26', '', '001025001', 'GYK_', 'MGT_', '所有单位-骨一科\n-骨一科_', '0', '', '2019-04-18 08:02:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('177', '骨科一病区', '26', '', '001025002', 'GKYBQ', 'MTGUA', '所有单位-骨一科\n-骨科一病区', '0', '', '2019-04-18 08:03:05', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('178', '骨二科_', '24', '', '001023001', 'GEK_', 'MFT_', '所有单位-骨二科\n-骨二科_', '0', '', '2019-04-18 08:03:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('179', '骨科二病区', '26', '', '001025003', 'GKEBQ', 'MTFUA', '所有单位-骨一科\n-骨科二病区', '0', '', '2019-04-18 08:04:11', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('180', '泌尿外科_', '64', '', '001063001', 'MNWK_', 'INQT_', '所有单位-泌尿外科-泌尿外科_', '0', '', '2019-04-18 08:05:26', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('181', '碎石室', '64', '', '001063002', 'SSS', 'DDP', '所有单位-泌尿外科-碎石室', '0', '', '2019-04-18 08:05:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('182', '泌尿外病区', '64', '', '001063003', 'MNWBQ', 'INQUA', '所有单位-泌尿外科-泌尿外病区', '0', '', '2019-04-18 08:05:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('183', '胸外科_', '111', '', '001110001', 'XWK_', 'EQT_', '所有单位-胸外科-胸外科_', '0', '', '2019-04-18 08:07:29', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('184', '心脏大血管外科_', '108', '', '001107001', 'XZDXGWK_', 'NEDTTQT_', '所有单位-心脏大血管外科-心脏大血管外科_', '0', '', '2019-04-18 08:09:49', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('185', '先天性心脏病科_', '99', '', '001098001', 'XTXXZBK_', 'TGNNEUT_', '所有单位-先天性心脏病科-先天性心脏病科_', '0', '', '2019-04-18 08:11:06', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('186', '心外ICU_', '99', '', '001098002', 'XWICU_', 'NQICU_', '所有单位-先天性心脏病科-心外ICU_', '0', '', '2019-04-18 08:11:20', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('187', '心外ICU病区', '99', '', '001098003', 'XWICUBQ', 'NQICUUA', '所有单位-先天性心脏病科-心外ICU病区', '0', '', '2019-04-18 08:12:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('188', '烧伤整形科_', '75', '', '001074001', 'SSZXK_', 'OWGGT_', '所有单位-烧伤整形科-烧伤整形科_', '0', '', '2019-04-18 08:13:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('189', '烧伤整形病区', '75', '', '001074002', 'SSZXBQ', 'OWGGUA', '所有单位-烧伤整形科-烧伤整形病区', '0', '', '2019-04-18 08:13:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('190', '眼科_', '115', '', '001114001', 'YK_', 'HT_', '所有单位-眼科-眼科_', '0', '', '2019-04-18 08:15:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('191', '干眼门诊', '115', '', '001114002', 'GYMZ', 'FHUY', '所有单位-眼科-干眼门诊', '0', '', '2019-04-18 08:15:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('192', '耳鼻咽喉科_', '13', '', '001012001', 'EBYHK_', 'BTKKT_', '所有单位-耳鼻咽喉科\n-耳鼻咽喉科_', '0', '', '2019-04-18 08:16:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('193', '麻醉手术科_', '63', '', '001062001', 'MZSSK_', 'YSRST_', '所有单位-麻醉手术科-麻醉手术科_', '0', '', '2019-04-18 08:26:43', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('194', '手术室', '63', '', '001062002', 'SSS', 'RSP', '所有单位-麻醉手术科-手术室', '0', '', '2019-04-18 08:27:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('195', '骨科门诊_', '25', '', '001024001', 'GKMZ_', 'MTUY_', '所有单位-骨科门诊\n-骨科门诊_', '0', '', '2019-04-18 08:28:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('196', '变态反应科_', '5', '', '001004001', 'BTFYK_', 'YDRYT_', '所有单位-变态反应科\n\n-变态反应科_', '0', '', '2019-04-18 08:29:33', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('197', '口腔科_', '57', '', '001056001', 'KQK_', 'KET_', '所有单位-口腔科\n-口腔科_', '0', '', '2019-04-18 08:30:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('198', '口腔正畸科_', '58', '', '001057001', 'KQZJK_', 'KEGLT_', '所有单位-口腔正畸科\n-口腔正畸科_', '0', '', '2019-04-18 08:31:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('199', '皮肤科_', '68', '', '001067001', 'PFK_', 'HET_', '所有单位-皮肤科-皮肤科_', '0', '', '2019-04-18 08:31:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('200', '高压氧舱室', '34', '', '001033001', 'GYYCS', 'YDRTP', '所有单位-急诊科-高压氧舱室', '0', '', '2019-04-18 08:32:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('201', '急诊科_', '34', '', '001033002', 'JZK_', 'QYT_', '所有单位-急诊科-急诊科_', '0', '', '2019-04-18 08:33:08', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('202', '急诊病区', '34', '', '001033003', 'JZBQ', 'QYUA', '所有单位-急诊科-急诊病区', '0', '', '2019-04-18 08:33:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('203', '急诊外科_', '36', '', '001035001', 'JZWK_', 'QYQT_', '所有单位-急诊外科\n-急诊外科_', '0', '', '2019-04-18 08:33:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('204', '康复医学科_', '55', '', '001054001', 'KFYXK_', 'YTAIT_', '所有单位-康复医学科\n-康复医学科_', '0', '', '2019-04-18 08:34:44', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('205', '司法鉴定中心_', '94', '', '001093001', 'SFJDZX_', 'NIJPKN_', '所有单位-司法鉴定中心-司法鉴定中心_', '0', '', '2019-04-18 08:36:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('206', '简易门诊', '41', '', '001040001', 'JYMZ', 'TJUY', '所有单位-健康查体部\n-简易门诊', '0', '', '2019-04-18 08:37:05', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('207', '健康查体部_', '41', '', '001040002', 'JKCTB_', 'WYSWU_', '所有单位-健康查体部\n-健康查体部_', '0', '', '2019-04-18 08:37:24', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('208', '精卫一_', '46', '', '001045001', 'JWY_', 'OBG_', '所有单位-精卫一\n-精卫一_', '0', '', '2019-04-18 08:38:17', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('209', '精卫一病区', '46', '', '001045002', 'JWYBQ', 'OBGUA', '所有单位-精卫一\n-精卫一病区', '0', '', '2019-04-18 08:38:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('210', '精卫二_', '47', '', '001046001', 'JWE_', 'OBF_', '所有单位-精卫二\n-精卫二_', '0', '', '2019-04-18 08:38:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('211', '精卫二病区', '47', '', '001046002', 'JWEBQ', 'OBFUA', '所有单位-精卫二\n-精卫二病区', '0', '', '2019-04-18 08:38:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('212', '精卫三_', '48', '', '001047001', 'JWS_', 'OBD_', '所有单位-精卫三\n-精卫三_', '0', '', '2019-04-18 08:39:12', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('213', '精卫三病区', '48', '', '001047002', 'JWSBQ', 'OBDUA', '所有单位-精卫三\n-精卫三病区', '0', '', '2019-04-18 08:39:22', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('214', '精卫四_', '49', '', '001048001', 'JWS_', 'OBL_', '所有单位-精卫四\n-精卫四_', '0', '', '2019-04-18 08:39:33', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('215', '精卫四病区', '49', '', '001048002', 'JWSBQ', 'OBLUA', '所有单位-精卫四\n-精卫四病区', '0', '', '2019-04-18 08:39:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('216', '精卫五_', '50', '', '001049001', 'JWW_', 'OBG_', '所有单位-精卫五\n-精卫五_', '0', '', '2019-04-18 08:39:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('217', '精卫五病区', '50', '', '001049002', 'JWWBQ', 'OBGUA', '所有单位-精卫五\n-精卫五病区', '0', '', '2019-04-18 08:40:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('218', '精卫六病区', '51', '', '001050001', 'JWLBQ', 'OBUUA', '所有单位-精卫六\n-精卫六病区', '0', '', '2019-04-18 08:40:10', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('219', '精卫六_', '51', '', '001050002', 'JWL_', 'OBU_', '所有单位-精卫六\n-精卫六_', '0', '', '2019-04-18 08:40:17', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('220', '精卫七_', '52', '', '001051001', 'JWQ_', 'OBA_', '所有单位-精卫七\n-精卫七_', '0', '', '2019-04-18 08:40:44', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('221', '精卫七病区', '52', '', '001051002', 'JWQBQ', 'OBAUA', '所有单位-精卫七\n-精卫七病区', '0', '', '2019-04-18 08:40:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('222', '精神康复_', '44', '', '001043001', 'JSKF_', 'OPYT_', '所有单位-精神康复\n-精神康复_', '0', '', '2019-04-18 08:41:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('223', '精神康复病区', '44', '', '001043002', 'JSKFBQ', 'OPYTUA', '所有单位-精神康复\n-精神康复病区', '0', '', '2019-04-18 08:42:12', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('224', '精卫门诊_', '45', '', '001044001', 'JWMZ_', 'OBUY_', '所有单位-精卫门诊\n-精卫门诊_', '0', '', '2019-04-18 08:42:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('225', '临床心理科_', '61', '', '001060001', 'LCXLK_', 'JYNGT_', '所有单位-临床心理科\n-临床心理科_', '0', '', '2019-04-18 08:43:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('226', '临床营养科_', '62', '', '001061001', 'LCYYK_', 'JYAUT_', '所有单位-临床营养科-临床营养科_', '0', '', '2019-04-18 08:44:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('227', '临床营养病区', '62', '', '001061002', 'LCYYBQ', 'JYAUUA', '所有单位-临床营养科-临床营养病区', '0', '', '2019-04-18 08:44:36', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('228', '妇科_', '18', '', '001017001', 'FK_', 'VT_', '所有单位-妇科\n-妇科_', '0', '', '2019-04-18 08:45:32', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('229', '妇科病区', '18', '', '001017002', 'FKBQ', 'VTUA', '所有单位-妇科\n-妇科病区', '0', '', '2019-04-18 08:46:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('230', '产科_', '8', '', '001007001', 'CK_', 'UT_', '所有单位-产科\n\n\n\n-产科_', '0', '', '2019-04-18 08:46:40', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('231', '产科病区', '8', '', '001007002', 'CKBQ', 'UTUA', '所有单位-产科\n\n\n\n-产科病区', '0', '', '2019-04-18 08:47:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('232', '生殖医学科_', '91', '', '001090001', 'SZYXK_', 'TGAIT_', '所有单位-生殖医学科-生殖医学科_', '0', '', '2019-04-18 08:47:47', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('233', '儿科_', '12', '', '001011001', 'EK_', 'QT_', '所有单位-儿科\n-儿科_', '0', '', '2019-04-18 08:48:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('234', '儿科病区', '12', '', '001011002', 'EKBQ', 'QTUA', '所有单位-儿科\n-儿科病区', '0', '', '2019-04-18 08:49:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('235', '检验一科_', '38', '', '001037001', 'JYYK_', 'SCGT_', '所有单位-检验一科\n-检验一科_', '0', '', '2019-04-18 08:49:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('236', '抽血护士（一）', '38', '', '001037002', 'CXHS（Y）', 'RTRF！G！', '所有单位-检验一科\n-抽血护士（一）', '0', '', '2019-04-18 08:50:06', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('237', '检验二科_', '39', '', '001038001', 'JYEK_', 'SCFT_', '所有单位-检验二科\n-检验二科_', '0', '', '2019-04-18 08:50:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('238', '抽血护士（二）\n', '39', '', '001038002', 'CXHS（E）', 'RTRF！F！\n', '所有单位-检验二科\n-抽血护士（二）\n', '0', '', '2019-04-18 08:50:39', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('239', '输血科_\n', '93', '', '001092001', 'SXK_', 'LTT_\n', '所有单位-输血科-输血科_\n', '0', '', '2019-04-18 08:51:27', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('240', '病理科_\n', '6', '', '001005001', 'BLK_', 'UGT_\n', '所有单位-病理科\n\n-病理科_\n', '0', '', '2019-04-18 08:52:18', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('241', '放射科_\n', '15', '', '001014001', 'FSK_', 'YTT_\n', '所有单位-放射科\n-放射科_\n', '0', '', '2019-04-18 08:53:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('242', '核医学科_\n', '28', '', '001027001', 'HYXK_', 'SAIT_\n', '所有单位-核医学科\n-核医学科_\n', '0', '', '2019-04-18 08:58:19', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('243', '核医学药房\n', '28', '', '001027002', 'HYXYF', 'SAIAY\n', '所有单位-核医学科\n-核医学药房\n', '0', '', '2019-04-18 08:58:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('244', '超声科_\n', '9', '', '001008001', 'CSK_', 'FFT_\n', '所有单位-超声科\n\n\n\n\n-超声科_\n', '0', '', '2019-04-18 08:59:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('245', '心脏超声科_\n', '107', '', '001106001', 'XZCSK_', 'NEFFT_\n', '所有单位-心脏超声科-心脏超声科_\n', '0', '', '2019-04-18 08:59:49', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('246', '心功能科_\n', '101', '', '001100001', 'XGNK_', 'NACT_\n', '所有单位-心功能科-心功能科_\n', '0', '', '2019-04-18 09:00:30', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('247', '脑功能科_\n', '65', '', '001064001', 'NGNK_', 'EACT_\n', '所有单位-脑功能科-脑功能科_\n', '0', '', '2019-04-18 09:01:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('248', '导管室_\n', '11', '', '001010001', 'DGS_', 'NTP_\n', '所有单位-导管室\n-导管室_\n', '0', '', '2019-04-18 09:02:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('249', '内镜中心_\n', '67', '', '001066001', 'NJZX_', 'MQKN_\n', '所有单位-内镜中心-内镜中心_\n', '0', '', '2019-04-18 09:03:29', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('250', '草药房', '116', '', '001115001', 'CYF', 'AAY', '所有单位-药学部-草药房', '0', '', '2019-04-18 09:05:26', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('251', '草药库', '116', '', '001115002', 'CYK', 'AAY', '所有单位-药学部-草药库', '0', '', '2019-04-18 09:05:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('252', '精卫药房', '116', '', '001115003', 'JWYF', 'OBAY', '所有单位-药学部-精卫药房', '0', '', '2019-04-18 09:05:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('253', '西药房', '116', '', '001115004', 'XYF', 'SAY', '所有单位-药学部-西药房', '0', '', '2019-04-18 09:05:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('254', '西药库', '116', '', '001115005', 'XYK', 'SAY', '所有单位-药学部-西药库', '0', '', '2019-04-18 09:06:06', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('255', '消杀库', '116', '', '001115006', 'XSK', 'IQY', '所有单位-药学部-消杀库', '0', '', '2019-04-18 09:06:19', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('256', '药学部_', '116', '', '001115007', 'YXB_', 'AIU_', '所有单位-药学部-药学部_', '0', '', '2019-04-18 09:06:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('257', '制剂室', '116', '', '001115008', 'ZJS', 'RYP', '所有单位-药学部-制剂室', '0', '', '2019-04-18 09:06:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('258', '住院口服药房', '116', '', '001115009', 'ZYKFYF', 'WBKEAY', '所有单位-药学部-住院口服药房', '0', '', '2019-04-18 09:07:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('259', '住院针剂药房', '116', '', '001115010', 'ZYZJYF', 'WBQYAY', '所有单位-药学部-住院针剂药房', '0', '', '2019-04-18 09:07:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('260', '细胞治疗室_', '98', '', '001097001', 'XBZLS_', 'XEIUP_', '所有单位-细胞治疗室-细胞治疗室_', '0', '', '2019-04-18 09:09:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('261', '党务办公室_', '10', '', '001009001', 'DWBGS_', 'ITLWP_', '所有单位-党务办公室\n\n\n\n\n\n-党务办公室_', '0', '', '2019-04-18 09:12:15', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('262', '健康学院__', '112', '', '001111001', 'JKXY__', 'WYIB__', '所有单位-宣传部-健康学院__', '0', '', '2019-04-18 09:19:05', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('263', '社工部', '112', '', '001111002', 'SGB', 'PAU', '所有单位-宣传部-社工部', '0', '', '2019-04-18 09:19:18', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('264', '宣传部_', '112', '', '001111003', 'XCB_', 'PWU_', '所有单位-宣传部-宣传部_', '0', '', '2019-04-18 09:19:29', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('265', '纪检监察处_', '37', '', '001036001', 'JJJCC_', 'XSJPT_', '所有单位-纪检监察处\n-纪检监察处_', '0', '', '2019-04-18 09:20:35', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('266', '工会_', '23', '', '001022001', 'GH_', 'AW_', '所有单位-工会\n-工会_', '0', '', '2019-04-18 09:21:10', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('267', '团委_', '95', '', '001094001', 'TW_', 'LT_', '所有单位-团委-团委_', '0', '', '2019-04-18 09:23:14', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('268', '纠风办公室_', '54', '', '001053001', 'JFBGS_', 'XMLWP_', '所有单位-纠风办公室\n-纠风办公室_', '0', '', '2019-04-18 09:24:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('269', '医务处', '1', '', '001129', 'YWC', 'ATT', '所有单位-医务处', '0', '', '2019-04-18 09:31:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('270', '医院办公室', '1', '', '001130', 'YYBGS', 'ABLWP', '所有单位-医院办公室', '0', '', '2019-04-18 09:31:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('271', '保健科', '270', '', '001130001', 'BJK', 'WWT', '所有单位-医院办公室-保健科', '0', '', '2019-04-18 09:32:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('272', '车队', '270', '', '001130002', 'CD', 'LB', '所有单位-医院办公室-车队', '0', '', '2019-04-18 09:33:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('273', '医院办公室_', '270', '', '001130003', 'YYBGS_', 'ABLWP_', '所有单位-医院办公室-医院办公室_', '0', '', '2019-04-18 09:33:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('274', '医务处_', '269', '', '001129001', 'YWC_', 'ATT_', '所有单位-医务处-医务处_', '0', '', '2019-04-18 09:33:56', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('275', '病案室', '269', '', '001129002', 'BAS', 'UPP', '所有单位-医务处-病案室', '0', '', '2019-04-18 09:34:09', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('276', '门诊办公室', '269', '', '001129003', 'MZBGS', 'UYLWP', '所有单位-医务处-门诊办公室', '0', '', '2019-04-18 09:34:19', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('277', '新院区筹建办', '269', '', '001129004', 'XYQCJB', 'UBATVL', '所有单位-医务处-新院区筹建办', '0', '', '2019-04-18 09:34:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('278', '预约导诊服务部', '269', '', '001129005', 'YYDZFWB', 'CXNYETU', '所有单位-医务处-预约导诊服务部', '0', '', '2019-04-18 09:34:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('279', '远程会诊中心', '269', '', '001129006', 'YCHZZX', 'FTWYKN', '所有单位-医务处-远程会诊中心', '0', '', '2019-04-18 09:34:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('280', '院前急救部_', '269', '', '001129007', 'YQJJB_', 'BUQFU_', '所有单位-医务处-院前急救部_', '0', '', '2019-04-18 09:35:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('281', '住院患者事务部', '269', '', '001129008', 'ZYHZSWB', 'WBKFGTU', '所有单位-医务处-住院患者事务部', '0', '', '2019-04-18 09:35:57', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('282', '法律部（医患关系办公室）_', '14', '', '001013001', 'FLB（YHGXBGS）_', 'ITU！AKUTLWP！_', '所有单位-法律部（医患关系办公室）\n-法律部（医患关系办公室）_', '0', '', '2019-04-18 09:36:52', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('283', '患者回访中心', '124', '', '001123001', 'HZHFZX', 'KFLYKN', '所有单位-质量管理办公室-患者回访中心', '0', '', '2019-04-18 09:37:45', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('284', '质量管理办公室_', '124', '', '001123002', 'ZLGLBGS_', 'RJTGLWP_', '所有单位-质量管理办公室-质量管理办公室_', '0', '', '2019-04-18 09:37:58', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('285', '教务处_', '43', '', '001042001', 'JWC_', 'FTT_', '所有单位-教务处\n-教务处_', '0', '', '2019-04-18 09:39:05', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('286', '教务处规培', '43', '', '001042002', 'JWCGP', 'FTTFF', '所有单位-教务处\n-教务处规培', '0', '', '2019-04-18 09:39:25', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('287', '临床技能培训中心', '43', '', '001042003', 'LCJNPXZX', 'JYRCFYKN', '所有单位-教务处\n-临床技能培训中心', '0', '', '2019-04-18 09:39:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('288', '耳鼻喉实验室', '56', '', '001055001', 'EBHSYS', 'BTKPCP', '所有单位-科研处\n-耳鼻喉实验室', '0', '', '2019-04-18 09:40:18', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('289', '工程技术研究中心', '56', '', '001055002', 'GCJSYJZX', 'ATRSDPKN', '所有单位-科研处\n-工程技术研究中心', '0', '', '2019-04-18 09:40:28', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('290', '科研处_', '56', '', '001055003', 'KYC_', 'TDT_', '所有单位-科研处\n-科研处_', '0', '', '2019-04-18 09:40:41', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('291', '中心实验室', '56', '', '001055004', 'ZXSYS', 'KNPCP', '所有单位-科研处\n-中心实验室', '0', '', '2019-04-18 09:40:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('292', '重点实验室_', '56', '', '001055005', 'ZDSYS_', 'THPCP_', '所有单位-科研处\n-重点实验室_', '0', '', '2019-04-18 09:41:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('293', '辅医中心', '31', '', '001030001', 'FYZX', 'LAKN', '所有单位-护理部\n-辅医中心', '0', '', '2019-04-18 09:42:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('294', '护工中心', '31', '', '001030002', 'HGZX', 'RAKN', '所有单位-护理部\n-护工中心', '0', '', '2019-04-18 09:42:35', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('295', '护理部_', '31', '', '001030003', 'HLB_', 'RGU_', '所有单位-护理部\n-护理部_', '0', '', '2019-04-18 09:42:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('296', '护理部（轮转）', '31', '', '001030004', 'HLB（LZ）', 'RGU！LL！', '所有单位-护理部\n-护理部（轮转）', '0', '', '2019-04-18 09:42:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('297', '消毒供应室', '31', '', '001030005', 'XDGYS', 'IGWYP', '所有单位-护理部\n-消毒供应室', '0', '', '2019-04-18 09:43:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('298', '医院感染管理部（公共卫生科）_', '119', '', '001118001', 'YYGRGLB（GGWSK）_', 'ABDITGU！WABTT！_', '所有单位-医院感染管理部（公共卫生科）-医院感染管理部（公共卫生科）_', '0', '', '2019-04-18 09:44:16', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('299', '人力资源部_', '74', '', '001073001', 'RLZYB_', 'WLUIU_', '所有单位-人力资源部-人力资源部_', '0', '', '2019-04-18 09:44:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('300', '财务处_', '7', '', '001006001', 'CWC_', 'MTT_', '所有单位-财务处\n\n\n-财务处_', '0', '', '2019-04-18 09:45:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('301', '门诊收费处', '7', '', '001006002', 'MZSFC', 'UYNXT', '所有单位-财务处\n\n\n-门诊收费处', '0', '', '2019-04-18 09:46:06', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('302', '住院收费处', '7', '', '001006003', 'ZYSFC', 'WBNXT', '所有单位-财务处\n\n\n-住院收费处', '0', '', '2019-04-18 09:46:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('303', '经济管理办公室_', '53', '', '001052001', 'JJGLBGS_', 'XITGLWP_', '所有单位-经济管理办公室\n-经济管理办公室_', '0', '', '2019-04-18 09:47:13', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('304', '物价办公室', '117', '', '001116001', 'WJBGS', 'TWLWP', '所有单位-医保办公室（物价办公室）-物价办公室', '0', '', '2019-04-18 09:48:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('305', '医保办公室', '117', '', '001116002', 'YBBGS', 'AWLWP', '所有单位-医保办公室（物价办公室）-医保办公室', '0', '', '2019-04-18 09:49:26', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('306', '信息化建设部_', '110', '', '001109001', 'XXHJSB_', 'WTWVYU_', '所有单位-信息化建设部-信息化建设部_', '0', '', '2019-04-18 09:52:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('307', '呼吸机管理中心', '76', '', '001075001', 'HXJGLZX', 'KKSTGKN', '所有单位-设备处-呼吸机管理中心', '0', '', '2019-04-18 09:53:33', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('308', '设备处_', '76', '', '001075002', 'SBC_', 'YTT_', '所有单位-设备处-设备处_', '0', '', '2019-04-18 09:53:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('309', '医学装备调配中心', '76', '', '001075003', 'YXZBDPZX', 'AIUTYSKN', '所有单位-设备处-医学装备调配中心', '0', '', '2019-04-18 09:54:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('310', '物资处_', '97', '', '001096001', 'WZC_', 'TUT_', '所有单位-物资处-物资处_', '0', '', '2019-04-18 09:59:46', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('311', '后勤处_', '29', '', '001028001', 'HQC_', 'RAT_', '所有单位-后勤处\n-后勤处_', '0', '', '2019-04-18 10:01:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('312', '基建处_', '33', '', '001032001', 'JJC_', 'AVT_', '所有单位-基建处\n-基建处_', '0', '', '2019-04-18 10:02:49', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('313', '脑卒中办公室', '118', '', '001117001', 'NZZBGS', 'EYKLWP', '所有单位-医联体办公室-脑卒中办公室', '0', '', '2019-04-18 13:41:42', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('314', '脑卒中门诊', '118', '', '001117002', 'NZZMZ', 'EYKUY', '所有单位-医联体办公室-脑卒中门诊', '0', '', '2019-04-18 13:42:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('315', '医联体办公室_', '118', '', '001117003', 'YLTBGS_', 'ABWLWP_', '所有单位-医联体办公室-医联体办公室_', '0', '', '2019-04-18 13:42:23', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('316', '导医组', '32', '', '001031001', 'DYZ', 'NAX', '所有单位-患者服务部\n-导医组', '0', '', '2019-04-18 13:43:35', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('317', '患者服务部_', '32', '', '001031002', 'HZFWB_', 'KFETU_', '所有单位-患者服务部\n-患者服务部_', '0', '', '2019-04-18 13:43:50', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('318', '患者随访中心', '32', '', '001031003', 'HZSFZX', 'KFBYKN', '所有单位-患者服务部\n-患者随访中心', '0', '', '2019-04-18 13:44:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('319', '患者转运中心', '32', '', '001031004', 'HZZYZX', 'KFLFKN', '所有单位-患者服务部\n-患者转运中心', '0', '', '2019-04-18 13:44:18', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('320', '肾内二中医风湿病区_', '89', '', '001088001', 'SNEZYFSBQ_', 'JMFKAMIUA_', '所有单位-肾内二中医风湿病区-肾内二中医风湿病区_', '0', '', '2019-04-18 13:53:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('321', '神内二康复病区_', '83', '', '001082001', 'SNEKFBQ_', 'PMFYTUA_', '所有单位-神内二康复病区-神内二康复病区_', '0', '', '2019-04-18 13:54:11', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('322', '心内一全科医学病区_', '102', '', '001101001', 'XNYQKYXBQ_', 'NMGWTAIUA_', '所有单位-心内一全科医学病区-心内一全科医学病区_', '0', '', '2019-04-18 13:54:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('323', '老年病脑卒中病区_', '60', '', '001059001', 'LNBNZZBQ_', 'FRUEYKUA_', '所有单位-老年病脑卒中病区\n-老年病脑卒中病区_', '0', '', '2019-04-18 13:56:01', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('324', '普外一眼科病区_', '70', '', '001069001', 'PWYYKBQ_', 'UQGHTUA_', '所有单位-普外一眼科病区-普外一眼科病区_', '0', '', '2019-04-18 13:57:12', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('325', '肝胆耳鼻咽喉皮肤病区_', '20', '', '001019001', 'GDEBYHPFBQ_', 'EEBTKKHEUA_', '所有单位-肝胆耳鼻咽喉皮肤病区\n-肝胆耳鼻咽喉皮肤病区_', '0', '', '2019-04-18 13:57:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('326', '心胸病区_', '106', '', '001105001', 'XXBQ_', 'NEUA_', '所有单位-心胸病区-心胸病区_', '0', '', '2019-04-18 13:59:07', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('327', '院领导_', '121', '', '001120001', 'YLD_', 'BWN_', '所有单位-院领导-院领导_', '0', '', '2019-04-18 13:59:51', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('328', '保健病区_', '3', '', '001002001', 'BJBQ_', 'WWUA_', '所有单位-保健病区-保健病区_', '0', '', '2019-04-18 14:00:21', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('329', '血透室病区_', '113', '', '001112001', 'XTSBQ_', 'TTPUA_', '所有单位-血透室病区-血透室病区_', '0', '', '2019-04-18 14:01:00', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('330', '感染性疾病科_', '22', '', '001021001', 'GRXJBK_', 'DINUUT_', '所有单位-感染性疾病科\n-感染性疾病科_', '0', '', '2019-04-18 14:03:03', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('331', '国医堂_', '27', '', '001026001', 'GYT_', 'LAI_', '所有单位-国医堂\n-国医堂_', '0', '', '2019-04-18 14:03:45', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('332', '组织部_', '129', '', '001128001', 'ZZB_', 'XXU_', '所有单位-组织部-组织部_', '0', '', '2019-04-18 14:05:02', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('333', '心脏中心_', '109', '', '001108001', 'XZZX_', 'NEKN_', '所有单位-心脏中心-心脏中心_', '0', '', '2019-04-18 14:09:04', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('334', '智慧医疗部_', '123', '', '001122001', 'ZHYLB_', 'TDAUU_', '所有单位-智慧医疗部-智慧医疗部_', '0', '', '2019-04-18 14:09:38', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('335', '保卫处_', '4', '', '001003001', 'BWC_', 'WBT_', '所有单位-保卫处\n-保卫处_', '0', '', '2019-04-18 14:10:10', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('336', '急诊内科（神内）_', '35', '', '001034001', 'JZNK（SN）_', 'QYMT！PM！_', '所有单位-急诊内科（神内）-急诊内科（神内）_', '0', '', '2019-04-18 14:10:48', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('337', '神经内一科（睡眠）_', '79', '', '001078001', 'SJNYK（SM）_', 'PXMGT！HH！_', '所有单位-神经内一科（睡眠）-神经内一科（睡眠）_', '0', '', '2019-04-18 14:11:55', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('338', '妇产科_', '17', '', '001016001', 'FCK_', 'VUT_', '所有单位-妇产科\n-妇产科_', '0', '', '2019-04-18 14:12:22', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('339', '神经内科_', '77', '', '001076001', 'SJNK_', 'PXMT_', '所有单位-神经内科-神经内科_', '0', '', '2019-04-18 14:12:53', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('340', '中医科2_', '126', '', '001125001', 'ZYK2_', 'KAT2_', '所有单位-中医科2-中医科2_', '0', '', '2019-04-18 14:13:47', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('341', '神经内二科（眩晕中心）_', '81', '', '001080001', 'SJNEK（XYZX）_', 'PXMFT！HJKN！_', '所有单位-神经内二科（眩晕中心）-神经内二科（眩晕中心）_', '0', '', '2019-04-18 14:14:45', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('342', '审计处_', '87', '', '001086001', 'SJC_', 'PYT_', '所有单位-审计处-审计处_', '0', '', '2019-04-18 14:18:37', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('343', '雾化中心_', '96', '', '001095001', 'WHZX_', 'FWKN_', '所有单位-雾化中心-雾化中心_', '0', '', '2019-04-18 14:19:34', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('344', '筹建办', '120', '', '001119001', 'CJB', 'TVL', '所有单位-元氏院区-筹建办', '0', '', '2019-04-18 14:24:14', null, '1', null, null);
INSERT INTO `sys_dept` VALUES ('345', '元氏院区_', '120', '', '001119002', 'YSYQ_', 'FQBA_', '所有单位-元氏院区-元氏院区_', '0', '', '2019-04-18 14:24:28', null, '1', null, null);
