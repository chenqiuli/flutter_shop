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
// 接口返回的数据要  json.decode(val.toString()) 一下
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
