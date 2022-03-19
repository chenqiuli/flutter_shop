// 轮播图数据
const swiperList = [
  'https://images.vsigo.cn/ADVP/640-260/2021619185841917.jpg',
  'https://images.vsigo.cn/ADVP/640-260/202162023944920.jpg',
  'https://images.vsigo.cn/ADVP/640-260/2021622125158211.jpg',
];

// 导航数据
const navigatorList = [
  {
    'image': 'https://m.vsigo.cn/static/img/haitaoIcon.png',
    'mallCategoryName': '蘑菇街'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/eyesIcon.png',
    'mallCategoryName': '洋码头'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/meitongIocn.png',
    'mallCategoryName': '聚美优品'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/waterIocn.png',
    'mallCategoryName': '京东'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/couponIcon.png',
    'mallCategoryName': '唯品会'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/benefitsIcon.png',
    'mallCategoryName': '值得买'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/kefuIcon.png',
    'mallCategoryName': '当当网'
  },
  {
    'image': 'https://m.vsigo.cn/static/img/bellIocn.png',
    'mallCategoryName': '淘粉吧'
  },
];

// 广告数据
const advertiseList =
    'https://images.vsigo.cn/advp/1460-278/2021625154147607.jpg';

// 推荐数据
const recommendList = [
  {
    'image':
        'https://images.vsigo.cn/live/post/cover/400-400/2021622175644410_1000.jpg',
    'newPrice': '229',
    'olePrice': '259',
  },
  {
    'image':
        'https://images.vsigo.cn/live/post/cover/400-400/2021625153032534673_1000.jpg',
    'newPrice': '129',
    'olePrice': '159',
  },
  {
    'image':
        'https://images.vsigo.cn/live/post/cover/400-400/2021328214955209_1000.png',
    'newPrice': '29',
    'olePrice': '59',
  },
  {
    'image':
        'https://images.vsigo.cn/live/post/cover/400-400/2021618144336351_600.jpg',
    'newPrice': '19',
    'olePrice': '39',
  },
];

// 火爆专区
const hotList = [
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/202167144830332.jpg',
    'desc': 'LaPeche拉拜诗樱桃小丸子联名款日抛10片',
    'price': '62',
    'mallPrice': '198',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/202099163024374.jpg',
    'desc': 'T-Garden Bambi Series日抛彩色隐形眼镜10片装',
    'price': '59',
    'mallPrice': '198',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/202131995040545.jpg',
    'desc': 'EverColor LUQUAGE日抛彩色隐形眼镜10片装（海外版）',
    'price': '95',
    'mallPrice': '124',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/2021621202452950.jpg',
    'desc': 'GIVRE绮芙莉日抛彩色隐形眼镜10片装',
    'price': '59',
    'mallPrice': '128',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/2021526184245515.jpg',
    'desc': '爱尔康DAILIES TOTAL 1 水梯度硅水凝胶隐形眼镜日抛30片装（海外版）',
    'price': '228',
    'mallPrice': '299',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/202131917585819.jpg',
    'desc': 'Miacare美若康沐氧硅水凝胶隐形眼镜日抛10片装',
    'price': '59',
    'mallPrice': '88',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/2021618175212299.jpg',
    'desc': '库博佰视明非球面硅水凝胶隐形眼镜月抛3片装',
    'price': '75',
    'mallPrice': '159',
  },
  {
    'image':
        'https://images.vsigo.cn/Products/contacts/210-210/202142310403314.jpg',
    'desc': '爱尔康视康舒视氧水活泉硅水凝胶隐形眼镜月抛3片 ',
    'price': '75',
    'mallPrice': '169',
  }
];

// 分类页大类数据
// 接口返回的数据要  json.decode(val.toString()) 一下，因为要确保它变成json数据
const categoryList = {
  "code": "0",
  "message": "success",
  "data": [
    {
      "mallCategoryId": "4",
      "mallCategoryName": "白酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c94621970a801626a35cb4d0175",
          "mallCategoryId": "4",
          "mallSubName": "名酒",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c94621970a801626a363e5a0176",
          "mallCategoryId": "4",
          "mallSubName": "宝丰",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170036_4477.png"
    },
    {
      "mallCategoryId": "1",
      "mallCategoryName": "啤酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946016ea9b016016f79c8e0000",
          "mallCategoryId": "1",
          "mallSubName": "百威",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c94608ff843016095163b8c0177",
          "mallCategoryId": "1",
          "mallSubName": "福佳",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170044_9165.png"
    },
    {
      "mallCategoryId": "2",
      "mallCategoryName": "葡萄酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c9460337d540160337fefd60000",
          "mallCategoryId": "2",
          "mallSubName": "澳大利亚",
          "comments": " "
        },
        {
          "mallSubId": "402880e86016d1b5016016e083f10010",
          "mallCategoryId": "2",
          "mallSubName": "德国",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170053_878.png"
    },
    {
      "mallCategoryId": "3",
      "mallCategoryName": "清酒洋酒",
      "bxMallSubDto": [
        {
          "mallSubId": "402880e86016d1b5016016e135440011",
          "mallCategoryId": "3",
          "mallSubName": "清酒",
          "comments": " "
        },
        {
          "mallSubId": "402880e86016d1b5016016e171cc0012",
          "mallCategoryId": "3",
          "mallSubName": "洋酒",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170101_6957.png"
    },
    {
      "mallCategoryId": "5",
      "mallCategoryName": "保健酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c94609a62be0160a02d1dc20021",
          "mallCategoryId": "5",
          "mallSubName": "黄酒",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c94648837980164883ff6980000",
          "mallCategoryId": "5",
          "mallSubName": "药酒",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170110_6581.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
      "mallCategoryName": "预调酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d02f6250026",
          "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
          "mallSubName": "果酒",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d031bae0027",
          "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
          "mallSubName": "鸡尾酒",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170124_4760.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
      "mallCategoryName": "下酒小菜",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dc18e610035",
          "mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
          "mallSubName": "熟食",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dc1d9070036",
          "mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
          "mallSubName": "火腿",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170133_4419.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
      "mallCategoryName": "饮料",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d09cbf6002d",
          "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
          "mallSubName": "茶饮",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d09f7e8002e",
          "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
          "mallSubName": "水饮",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
      "mallCategoryName": "饮料",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d09cbf6002d",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "茶饮",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d09f7e8002e",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "水饮",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
      "mallCategoryName": "乳制品",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dd4ac8c0048",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "常温纯奶",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd4f6a40049",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "常温酸奶",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170151_9234.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
      "mallCategoryName": "休闲零食",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dc51d93003c",
          "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
          "mallSubName": "方便食品",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd204dc0040",
          "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
          "mallSubName": "面包糕点",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170200_7553.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
      "mallCategoryName": "粮油调味",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dd2e8270043",
          "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
          "mallSubName": "油/粮食",
          "comments": " "
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd31bca0044",
          "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
          "mallSubName": "调味品",
          "comments": ""
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20181212/20181212115842_9733.png"
    },
    {
      "mallCategoryId": "2c9f6c9468a85aef016925444ddb271b",
      "mallCategoryName": "积分商品",
      "bxMallSubDto": [],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190225/20190225232703_9950.png"
    }
  ]
};

// 分类页商品列表数据
// 接口返回的数据要  json.decode(val.toString()) 一下
const goodLists = {
  "code": "0",
  "message": "success",
  "data": [
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
      "oriPrice": 2.50,
      "presentPrice": 1.80,
      "goodsName": "哈尔滨冰爽啤酒330ml",
      "goodsId": "3194330cf25f43c3934dbb8c2a964ade"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190115185215_1051.jpg",
      "oriPrice": 2.00,
      "presentPrice": 1.80,
      "goodsName": "燕京啤酒8°330ml",
      "goodsId": "522a3511f4c545ab9547db074bb51579"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190121102419_9362.jpg",
      "oriPrice": 1.98,
      "presentPrice": 1.80,
      "goodsName": "崂山清爽8°330ml",
      "goodsId": "bbdbd5028cc849c2998ff84fb55cb934"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712181330_9746.jpg",
      "oriPrice": 2.50,
      "presentPrice": 1.90,
      "goodsName": "雪花啤酒8°清爽330ml",
      "goodsId": "87013c4315e54927a97e51d0645ece76"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712180233_4501.jpg",
      "oriPrice": 2.50,
      "presentPrice": 2.20,
      "goodsName": "崂山啤酒8°330ml",
      "goodsId": "86388a0ee7bd4a9dbe79f4a38c8acc89"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190116164250_1839.jpg",
      "oriPrice": 2.50,
      "presentPrice": 2.30,
      "goodsName": "哈尔滨小麦王10°330ml",
      "goodsId": "d31a5a337d43433385b17fe83ce2676a"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712181139_2653.jpg",
      "oriPrice": 2.70,
      "presentPrice": 2.50,
      "goodsName": "三得利清爽啤酒10°330ml",
      "goodsId": "74a1fb6adc1f458bb6e0788c4859bf54"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190121162731_3928.jpg",
      "oriPrice": 2.75,
      "presentPrice": 2.50,
      "goodsName": "三得利啤酒7.5度超纯啤酒330ml",
      "goodsId": "d52fa8ba9a5f40e6955be9e28a764f34"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712180452_721.jpg",
      "oriPrice": 4.50,
      "presentPrice": 3.70,
      "goodsName": "青岛啤酒11°330ml",
      "goodsId": "a42c0585015540efa7e9642ec1183940"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190121170407_7423.jpg",
      "oriPrice": 4.40,
      "presentPrice": 4.00,
      "goodsName": "三得利清爽啤酒500ml 10.0°",
      "goodsId": "94ec3df73f4446b5a5f0d80a8e51eb9d"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712181427_6101.jpg",
      "oriPrice": 4.50,
      "presentPrice": 4.00,
      "goodsName": "雪花勇闯天涯啤酒8°330ml",
      "goodsId": "d80462faab814ac6a7124cec3b868cf7"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180717151537_3425.jpg",
      "oriPrice": 4.90,
      "presentPrice": 4.10,
      "goodsName": "百威啤酒听装9.7°330ml",
      "goodsId": "91a849140de24546b0de9e23d85399a3"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190121101926_2942.jpg",
      "oriPrice": 4.95,
      "presentPrice": 4.50,
      "goodsName": "崂山啤酒8°500ml",
      "goodsId": "3758bbd933b145f2a9c472bf76c4920c"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712175422_518.jpg",
      "oriPrice": 5.00,
      "presentPrice": 4.50,
      "goodsName": "百威3.6%大瓶9.7°P460ml",
      "goodsId": "dc32954b66814f40977be0255cfdacca"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180717151454_4834.jpg",
      "oriPrice": 5.00,
      "presentPrice": 4.50,
      "goodsName": "青岛啤酒大听装500ml",
      "goodsId": "fc85510c3af7428dbf1cb0c1bcb43711"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712181007_4229.jpg",
      "oriPrice": 5.50,
      "presentPrice": 5.00,
      "goodsName": "三得利金纯生啤酒580ml 9°",
      "goodsId": "14bd89f066ca4949af5e4d5a1d2afaf8"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190121100752_4292.jpg",
      "oriPrice": 6.60,
      "presentPrice": 6.00,
      "goodsName": "哈尔滨啤酒冰纯白啤（小麦啤酒）500ml",
      "goodsId": "89bccd56a8e9465692ccc469cd4b442e"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712175656_777.jpg",
      "oriPrice": 7.20,
      "presentPrice": 6.60,
      "goodsName": "百威啤酒500ml",
      "goodsId": "3a94dea560ef46008dad7409d592775d"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20180712180754_2838.jpg",
      "oriPrice": 7.78,
      "presentPrice": 7.00,
      "goodsName": "青岛啤酒皮尔森10.5°330ml",
      "goodsId": "97adb29137fb47689146a397e5351926"
    },
    {
      "image":
          "http://images.baixingliangfan.cn/compressedPic/20190116164149_2165.jpg",
      "oriPrice": 7.78,
      "presentPrice": 7.00,
      "goodsName": "青岛全麦白啤11°500ml",
      "goodsId": "f78826d3eb0546f6a2e58893d4a41b43"
    }
  ]
};

const categoryLists = {
  "code": "0",
  "message": "success",
  "data": [
    {
      "mallCategoryId": "4",
      "mallCategoryName": "白酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c94621970a801626a35cb4d0175",
          "mallCategoryId": "4",
          "mallSubName": "名酒",
          "comments": "",
          "parentId": "1-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-1",
              "goodsId": "1-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94621970a801626a363e5a0176",
          "mallCategoryId": "4",
          "mallSubName": "宝丰",
          "comments": "",
          "parentId": "1-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-2",
              "goodsId": "1-2"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94621970a801626a3770620177",
          "mallCategoryId": "4",
          "mallSubName": "北京二锅头",
          "comments": " ",
          "parentId": "1-3",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-3",
              "goodsId": "1-3"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94679b4fb10167f7cc035c15a8",
          "mallCategoryId": "4",
          "mallSubName": "大明",
          "comments": "",
          "parentId": "1-5",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-5",
              "goodsId": "1-5"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94679b4fb10167f7cc2af915a9",
          "mallCategoryId": "4",
          "mallSubName": "杜康",
          "comments": "",
          "parentId": "1-6",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-6",
              "goodsId": "1-6"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94679b4fb10167f7cc535115aa",
          "mallCategoryId": "4",
          "mallSubName": "顿丘",
          "comments": "",
          "parentId": "1-7",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-7",
              "goodsId": "1-7"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94679b4fb10167f7cc77b215ab",
          "mallCategoryId": "4",
          "mallSubName": "汾酒",
          "comments": " ",
          "parentId": "1-8",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-8",
              "goodsId": "1-8"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94679b4fb10167f7cca72e15ac",
          "mallCategoryId": "4",
          "mallSubName": "枫林",
          "comments": "",
          "parentId": "1-9",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 1-9",
              "goodsId": "1-9"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170036_4477.png"
    },
    {
      "mallCategoryId": "1",
      "mallCategoryName": "啤酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946016ea9b016016f79c8e0000",
          "mallCategoryId": "1",
          "mallSubName": "百威",
          "comments": " ",
          "parentId": "2-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 2-1",
              "goodsId": "2-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94608ff843016095163b8c0177",
          "mallCategoryId": "1",
          "mallSubName": "福佳",
          "comments": "",
          "parentId": "2-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 2-2",
              "goodsId": "2-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170044_9165.png"
    },
    {
      "mallCategoryId": "2",
      "mallCategoryName": "葡萄酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c9460337d540160337fefd60000",
          "mallCategoryId": "2",
          "mallSubName": "澳大利亚",
          "comments": " ",
          "parentId": "3-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 3-1",
              "goodsId": "3-1"
            },
          ]
        },
        {
          "mallSubId": "402880e86016d1b5016016e083f10010",
          "mallCategoryId": "2",
          "mallSubName": "德国",
          "comments": "",
          "parentId": "3-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 3-2",
              "goodsId": "3-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170053_878.png"
    },
    {
      "mallCategoryId": "3",
      "mallCategoryName": "清酒洋酒",
      "bxMallSubDto": [
        {
          "mallSubId": "402880e86016d1b5016016e135440011",
          "mallCategoryId": "3",
          "mallSubName": "清酒",
          "comments": " ",
          "parentId": "4-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 4-1",
              "goodsId": "4-1"
            },
          ]
        },
        {
          "mallSubId": "402880e86016d1b5016016e171cc0012",
          "mallCategoryId": "3",
          "mallSubName": "洋酒",
          "comments": "",
          "parentId": "4-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 4-2",
              "goodsId": "4-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170101_6957.png"
    },
    {
      "mallCategoryId": "5",
      "mallCategoryName": "保健酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c94609a62be0160a02d1dc20021",
          "mallCategoryId": "5",
          "mallSubName": "黄酒",
          "comments": " ",
          "parentId": "5-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 5-1",
              "goodsId": "5-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c94648837980164883ff6980000",
          "mallCategoryId": "5",
          "mallSubName": "药酒",
          "comments": "",
          "parentId": "5-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 5-2",
              "goodsId": "5-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170110_6581.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
      "mallCategoryName": "预调酒",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d02f6250026",
          "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
          "mallSubName": "果酒",
          "comments": " ",
          "parentId": "6-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 6-1",
              "goodsId": "6-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d031bae0027",
          "mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
          "mallSubName": "鸡尾酒",
          "comments": "",
          "parentId": "6-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 6-2",
              "goodsId": "6-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170124_4760.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
      "mallCategoryName": "饮料",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d09cbf6002d",
          "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
          "mallSubName": "茶饮",
          "comments": " ",
          "parentId": "7-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 7-1",
              "goodsId": "7-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d09f7e8002e",
          "mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
          "mallSubName": "水饮",
          "comments": "",
          "parentId": "7-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 7-2",
              "goodsId": "7-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
      "mallCategoryName": "饮料",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647d09cbf6002d",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "茶饮",
          "comments": " ",
          "parentId": "8-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 8-1",
              "goodsId": "8-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647d09f7e8002e",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "水饮",
          "comments": "",
          "parentId": "8-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 8-2",
              "goodsId": "8-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
      "mallCategoryName": "乳制品",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dd4ac8c0048",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "常温纯奶",
          "comments": " ",
          "parentId": "9-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 9-1",
              "goodsId": "9-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd4f6a40049",
          "mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
          "mallSubName": "常温酸奶",
          "comments": "",
          "parentId": "9-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 9-2",
              "goodsId": "9-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170151_9234.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
      "mallCategoryName": "休闲零食",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dc51d93003c",
          "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
          "mallSubName": "方便食品",
          "comments": " ",
          "parentId": "10-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 10-1",
              "goodsId": "10-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd204dc0040",
          "mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
          "mallSubName": "面包糕点",
          "comments": "",
          "parentId": "10-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 10-2",
              "goodsId": "10-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170200_7553.png"
    },
    {
      "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
      "mallCategoryName": "粮油调味",
      "bxMallSubDto": [
        {
          "mallSubId": "2c9f6c946449ea7e01647dd2e8270043",
          "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
          "mallSubName": "油/粮食",
          "comments": " ",
          "parentId": "11-1",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 11-1",
              "goodsId": "11-1"
            },
          ]
        },
        {
          "mallSubId": "2c9f6c946449ea7e01647dd31bca0044",
          "mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
          "mallSubName": "调味品",
          "comments": "",
          "parentId": "11-2",
          "data": [
            {
              "image":
                  "http://images.baixingliangfan.cn/compressedPic/20190116145309_40.jpg",
              "oriPrice": 2.50,
              "presentPrice": 1.80,
              "goodsName": "哈尔滨冰爽啤酒330ml 11-2",
              "goodsId": "11-2"
            },
          ]
        }
      ],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20181212/20181212115842_9733.png"
    },
    {
      "mallCategoryId": "2c9f6c9468a85aef016925444ddb271b",
      "mallCategoryName": "积分商品",
      "bxMallSubDto": [],
      "comments": null,
      "image":
          "http://images.baixingliangfan.cn/firstCategoryPicture/20190225/20190225232703_9950.png",
      "parentId": "11-2",
      "data": []
    }
  ]
};
