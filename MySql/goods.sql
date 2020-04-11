/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-04-11 09:38:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(255) NOT NULL,
  `goods_desc` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `goods_price` int(11) NOT NULL,
  `goods_url` varchar(255) NOT NULL,
  `goods_detailurl` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('203218', '特价批发心心相印卷纸三层180g家用有芯卷筒纸卫生纸厕纸20卷家用', '2990', 'http://t00img.yangkeduo.com/goods/images/2019-01-16/bb2eabb5de571476480b2f889b983847.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-01-16/f8fcaee7-a3e8-4099-90c0-bf30e9b7ffd8.jpg', '特价批发心心相印卷纸三层180g家用有芯');
INSERT INTO `goods` VALUES ('563821', '【拍2减5】心相印卷纸厕纸家用整箱心心相印实惠装卫生纸巾家庭装', '5590', 'http://t00img.yangkeduo.com/goods/images/2019-05-27/cfce3acf6598bdbab99df786ab816081.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-05-27/1bf30363-7a50-42f9-8695-dac66f081061.jpg', '心相印卷纸厕纸卷筒纸');
INSERT INTO `goods` VALUES ('679967', '【39.9元限时抢，抢完恢复57元】蓝月亮洗衣液3kg亮白增艳薰衣草低泡易漂瓶瓶装袋装整箱多规格选', '3990', 'http://t00img.yangkeduo.com/goods/images/2020-01-17/d0695fba331368beb411810ad8f8ba2a.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-17/06bef5e6-5ef5-4f2c-ae56-480d4f99b76d.jpg', '蓝月亮6斤洗衣液');
INSERT INTO `goods` VALUES ('680007', '【79.9元限时抢，抢完恢复104.14元】蓝月亮洗衣液12斤亮白增艳薰衣草香瓶装袋装官方正品多规格可选', '7990', 'http://t00img.yangkeduo.com/goods/images/2020-01-17/0400859ba4ff6afd95efd69fda2a21bc.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-17/fca72582-9bdb-497e-9fa0-a6f7cd65e2d5.jpg', '蓝月亮12斤洗衣液');
INSERT INTO `goods` VALUES ('1142381', '【44.5元限时抢，抢完恢复63.57元】【蓝月亮】手洗专用洗衣液内衣裤可用白兰薰衣草护手正品多规格', '4450', 'http://t00img.yangkeduo.com/goods/images/2020-01-17/ddee8c6cf8c953a84b081579d0f60f92.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-17/c1a0cf5d-4cea-4fcb-ae7b-c1bea7f63be6.jpg', '蓝月亮手洗专用6斤');
INSERT INTO `goods` VALUES ('2046480', '【49.9元限时抢，抢完恢复71.28元】蓝月亮大牌精选洗衣液8斤装超值抢购官方正品直营多规格可选', '4990', 'http://t00img.yangkeduo.com/goods/images/2020-01-17/c359af83e8efc0486ec3f5585cc7e4b7.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-17/b3f2355f-608a-4884-8b47-a2219778bdb1.jpg', '蓝月亮8斤洗衣液');
INSERT INTO `goods` VALUES ('2135808', '【官方正品】洁婷卫生巾透气防漏日用夜用超长薄棉柔组合装批发价', '1290', 'http://t00img.yangkeduo.com/goods/images/images/2019-09-19/c602573b3214abd456df091eec19a0b4.jpeg', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-19/19674c7f-e383-4342-baf0-7814cfec2879.jpg', '洁婷透气卫生巾多组合');
INSERT INTO `goods` VALUES ('5771831', '香港AXE斧头牌柠檬洗洁精1.18kg2瓶家庭装去油除菌洗碗果蔬批发', '2990', 'http://t00img.yangkeduo.com/goods/images/2019-12-20/922545e970f3423ec42651a428f1d602.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-12-20/42c209ac-df77-4da5-a661-73cc193dcc06.jpg', 'axe斧头牌洗洁精2瓶');
INSERT INTO `goods` VALUES ('5982811', '【40卷10卷可选】斑布本色纸无芯卷纸无漂白家用卫生卷筒厕纸竹浆', '1089', 'http://t00img.yangkeduo.com/t07img/images/2018-06-05/90acdcb0e678884dc375db284ba0dbe6.jpeg', 'http://t02img.yangkeduo.com/images/2018-03-31/30601d2fbc20fb2f4477532202e5af6a.jpeg', '斑布本色无芯卷纸');
INSERT INTO `goods` VALUES ('6040686', '清风爆款纸巾金装抽纸3层130抽共16包整箱卫生纸面巾纸加厚家用', '1290', 'http://t00img.yangkeduo.com/goods/images/2019-06-10/fd0f6a7bc7732372281b849d4b101953.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-06-10/ae7c7ba3-cf79-497b-80ed-a015a7e33cc1.jpg', '清风爆款纸巾金装抽纸3层130抽共16包整箱卫生纸面巾纸加厚家用');
INSERT INTO `goods` VALUES ('11280537', '张小泉菜刀家用厨房不锈钢切肉刀切菜刀套装锋利刀 正品刀具套装', '6900', 'http://t00img.yangkeduo.com/goods/images/2020-01-21/210870605c2058148f17e2809dea8fc2.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-21/5e215a16-b154-4a7e-aaf8-b79aa8674dfb.jpg', '张小泉菜刀家用');
INSERT INTO `goods` VALUES ('13114244', '【正品保障】云南白药牙膏家庭组合装大克重缓解牙龈出血牙龈疼痛', '5980', 'http://t00img.yangkeduo.com/goods/images/2020-01-16/5a694d12b26252ca26e3945fdd93e307.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-16/3acf6c78-086a-44a5-a416-29653cadd399.jpg', '云南白药牙膏家庭套装');
INSERT INTO `goods` VALUES ('38865776', '【赠7对共22对】珍视明护眼贴缓解眼疲劳眼贴学生护眼去淡化黑眼', '3900', 'http://t00img.yangkeduo.com/goods/images/2018-08-13/f179e9ab30485171f45c1274d14460c7.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-13/6d7ad330c58e75fee46be61542277fb2.jpeg', '【赠7对共22对】珍视明护眼贴缓解眼疲劳眼贴学生护眼去淡化黑眼');
INSERT INTO `goods` VALUES ('122522543', '【99元限时抢，抢完恢复141.42元】蓝月亮旗舰店亮白增艳洗衣液14斤机洗瓶装组合薰衣草香型多规格选', '9900', 'http://t00img.yangkeduo.com/goods/images/2020-01-17/7972296c9065d549282203834e61c766.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-01-17/db269a97-0fba-426d-aa3f-0bfba991ec19.jpg', '蓝月亮14斤洗衣液');
INSERT INTO `goods` VALUES ('161537375', '超威强效洁厕灵洁厕净除重垢除菌家用马桶清洁剂清香洁厕液精500g', '790', 'http://t00img.yangkeduo.com/goods/images/2019-12-01/6ede03f4261f679eaebd05131f6d58c0.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-12-01/a18b8945-5c38-45f7-994f-1869b2c52d7d.jpg', '超威强效洁厕灵500g');
INSERT INTO `goods` VALUES ('614512566', '张小泉女士菜刀 家用不锈钢厨刀切片刀 切肉刀小菜刀', '5800', 'http://t00img.yangkeduo.com/goods/images/2019-11-26/097a604eff8256f98def8d24eedbc838.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-11-26/33b41231-fbfb-4b76-b1ce-54eb2d7c373b.jpg', '张小泉女士菜刀');
INSERT INTO `goods` VALUES ('902976266', '【奇强内衣皂10块装】 奇强内衣抑菌皂贴身内衣裤专用洗衣皂无磷', '1190', 'http://t00img.yangkeduo.com/goods/images/2019-04-18/81ae6dd95d15340faaac4d305709d4e3.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-03-03/63d28f4b-bb01-49f0-8b7e-1a908c0d73b6.jpg', '内衣裤专用肥皂');
INSERT INTO `goods` VALUES ('989821719', '奇强亮白去渍洗衣粉8斤/百合花香洗衣粉家庭装洗衣粉批发大袋正品', '2975', 'http://t00img.yangkeduo.com/goods/images/images/2019-09-17/fa00d7ff3ad23b2882bf17fe5b3be9a8.jpeg', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-17/52869b6b-5ebe-4a98-baff-3d7ee866272f.jpg', '奇强亮白去渍洗衣粉8斤/百合花香洗衣粉家庭装洗衣粉批发大袋正品');
INSERT INTO `goods` VALUES ('1455200350', '口才训练书籍全5册高情商聊天术别输在不会表达上撩妹套路书籍', '2950', 'http://t00img.yangkeduo.com/goods/images/2019-09-18/db03e697724f41970eee3c7c20c0ac40.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-09-18/8531b4c8-cb77-40e5-8f67-50fe6a63bf4d.jpg', '卡耐基人性的弱点成功励志正版书籍');

-- ----------------------------
-- Table structure for groupbuyactivity
-- ----------------------------
DROP TABLE IF EXISTS `groupbuyactivity`;
CREATE TABLE `groupbuyactivity` (
  `act_no` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `goods_id` int(255) DEFAULT NULL,
  `captain` int(1) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `issuccess` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupbuyactivity
-- ----------------------------
INSERT INTO `groupbuyactivity` VALUES ('1586973061759', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '367716399', '1', '1586564059396', null);
INSERT INTO `groupbuyactivity` VALUES ('1587573062181', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '263939156', '1', '1586564599792', '0');
INSERT INTO `groupbuyactivity` VALUES ('1592634103817', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '2338511', '1', '1586564623013', '0');
INSERT INTO `groupbuyactivity` VALUES ('1587665338136', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '191246317', '1', '1586564669454', '0');
INSERT INTO `groupbuyactivity` VALUES ('1587392365164', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '191246317', '1', '1586565176108', null);
INSERT INTO `groupbuyactivity` VALUES ('1587293069706', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '263939156', '1', '1586566165862', null);
INSERT INTO `groupbuyactivity` VALUES ('1586601620019', 'oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '263939156', '1', '1586566199360', null);
INSERT INTO `groupbuyactivity` VALUES ('1591374335056', '', '263939156', '1', '1586568161303', '0');

-- ----------------------------
-- Table structure for groupbuyset
-- ----------------------------
DROP TABLE IF EXISTS `groupbuyset`;
CREATE TABLE `groupbuyset` (
  `person` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupbuyset
-- ----------------------------
INSERT INTO `groupbuyset` VALUES ('2', '24');

-- ----------------------------
-- Table structure for groupgoods
-- ----------------------------
DROP TABLE IF EXISTS `groupgoods`;
CREATE TABLE `groupgoods` (
  `groupgoods_id` int(255) NOT NULL,
  `groupgoods_desc` varchar(255) DEFAULT NULL,
  `groupgoods_originalprice` int(255) NOT NULL,
  `groupgoods_groupbuyprice` int(255) NOT NULL,
  `groupgoods_url` varchar(255) NOT NULL,
  `groupgoods_detailurl` varchar(255) NOT NULL,
  `groupgoods_name` varchar(255) DEFAULT NULL,
  `groupgoods_sale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupgoods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupgoods
-- ----------------------------
INSERT INTO `groupgoods` VALUES ('20399', '紫米面包550g黑米夹心奶酪整箱营养早餐手撕吐司蛋糕点心零食', '8900', '7120', 'https://t00img.yangkeduo.com/goods/images/2019-10-27/4437d7ca146a39144b6a29c908ae20a4.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-10-27/4437d7ca146a39144b6a29c908ae20a4.jpeg', '紫米面包550g黑米夹心奶酪整箱营养早餐手撕吐司蛋糕点心零食', '10万+');
INSERT INTO `groupgoods` VALUES ('2338511', '【4-10斤】薰衣草香氛洗衣液正品香味持久留香低泡易漂家庭装批发', '9900', '7920', 'https://t00img.yangkeduo.com/goods/images/2018-10-11/4f76d68b1123c812e8e8dce4fb45be69.jpeg', 'https://t00img.yangkeduo.com/goods/images/2018-10-11/4f76d68b1123c812e8e8dce4fb45be69.jpeg', '【4-10斤】薰衣草香氛洗衣液正品香味持久留香低泡易漂家庭装批发', '10万+');
INSERT INTO `groupgoods` VALUES ('191246317', '【基地原装货】绿萝盆栽植物绿植盆栽花卉花室内盆栽盆景水培植物', '8900', '7120', 'https://t00img.yangkeduo.com/goods/images/2018-08-23/b71018ad46387163747b084b05f13a38.jpeg', 'https://t00img.yangkeduo.com/goods/images/2018-08-23/b71018ad46387163747b084b05f13a38.jpeg', '【基地原装货】绿萝盆栽植物绿植盆栽花卉花室内盆栽盆景水培植物', '9.5万');
INSERT INTO `groupgoods` VALUES ('263939156', '【50卷6斤赠毛巾】50卷12卷卫生纸批发纸巾家用木浆厕纸手纸卷纸', '9900', '7920', 'https://t00img.yangkeduo.com/goods/images/2020-03-01/f297c7382ac79f2f162e880ac5fb8c41.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-03-01/f297c7382ac79f2f162e880ac5fb8c41.jpeg', '【50卷6斤赠毛巾】50卷12卷卫生纸批发纸巾家用木浆厕纸手纸卷纸', '10万+');
INSERT INTO `groupgoods` VALUES ('367716399', '【足足6斤】【2瓶装】洁瑞美洗洁精强效去残留 果蔬不伤手', '14900', '11920', 'https://t00img.yangkeduo.com/goods/images/2019-06-29/87643fc99c44cbf29f0edcb194e6323e.jpeg', 'https://t00img.yangkeduo.com/goods/images/2019-06-29/87643fc99c44cbf29f0edcb194e6323e.jpeg', '【足足6斤】【2瓶装】洁瑞美洗洁精强效去残留 果蔬不伤手', '10万+');
INSERT INTO `groupgoods` VALUES ('451117322', '(超值4支)正品云南中药牙膏薄荷香型清热去火消炎止痛美白去口臭', '29900', '23920', 'https://t00img.yangkeduo.com/goods/images/2020-02-23/0be7ffcf01d8dde96abdf2144bfeadaf.jpeg', 'https://t00img.yangkeduo.com/goods/images/2020-02-23/0be7ffcf01d8dde96abdf2144bfeadaf.jpeg', '(超值4支)正品云南中药牙膏薄荷香型清热去火消炎止痛美白去口臭', '7.4万');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `open_id` varchar(255) NOT NULL,
  `nick_name` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', '萤火虫吃蜗牛', 'https://wx.qlogo.cn/mmopen/vi_32/kYdhnw2via7fVe3Qy76SpOjnbdsQlnBuSJdI7M6vw798WlH0pxYsXicnt1CSo10QmtG8UOoKn6cqQEBNibcAIiaq6w/132', '1', 'Ganzhou', 'Jiangxi');
INSERT INTO `user` VALUES ('oLmTz5GEdVPF5mFNXRk30__pJym4', '夏了夏天蓝了海', 'https://wx.qlogo.cn/mmopen/vi_32/FO2icUicrNFiad5b0p3eIrxe6ybI0nBJjPQSVHJObr1VLb4TH2zs8EtGqe9Wqxnre6SCwSF6UeXDOK8OFzOBG1oFQ/132', '0', '', '');
INSERT INTO `user` VALUES ('oLmTz5K7oUi-mYCo7a26qK6Hfl7k', '萤火虫吃蜗牛', 'https://wx.qlogo.cn/mmopen/vi_32/iaM6NonIPzXyGh3ib5ste75WwP4vT1zJYYDK4oibmBhaTCyTapBselXBen42Lw8zXe0IP4gmhaLyQ5GRWv37htIZw/132', '1', 'Ganzhou', 'Jiangxi');
