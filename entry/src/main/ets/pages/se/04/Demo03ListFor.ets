// interface + class
// 1. 当你需要定义简单的对象的时候, interface
// 2. 当你需要定义, 配合ObservedV2和Trace, 就得class

interface GoodItem {
  id: number
  goods_name: string
  goods_price: number
  goods_img: string
  goods_count: number
}

@Entry
@ComponentV2
struct Demo03ListFor {
  list: GoodItem[] = [
    {
      "id": 1,
      "goods_name": "班俏BANQIAO超火ins潮卫衣女士2020秋季新款韩版宽松慵懒风薄款外套带帽上衣",
      "goods_img": "assets/1.webp",
      "goods_price": 108,
      "goods_count": 1,
    },
    {
      "id": 2,
      "goods_name": "嘉叶希连帽卫衣女春秋薄款2020新款宽松bf韩版字母印花中长款外套ins潮",
      "goods_img": "assets/2.webp",
      "goods_price": 129,
      "goods_count": 1,
    },
    {
      "id": 3,
      "goods_name": "思蜜怡2020休闲运动套装女春秋季新款时尚大码宽松长袖卫衣两件套",
      "goods_img": "assets/3.webp",
      "goods_price": 198,
      "goods_count": 1,
    },
    {
      "id": 4,
      "goods_name": "思蜜怡卫衣女加绒加厚2020秋冬装新款韩版宽松上衣连帽中长款外套",
      "goods_img": "assets/4.webp",
      "goods_price": 99,
      "goods_count": 1,
    },
    {
      "id": 5,
      "goods_name": "幂凝早秋季卫衣女春秋装韩版宽松中长款假两件上衣薄款ins盐系外套潮",
      "goods_img": "assets/5.webp",
      "goods_price": 156,
      "goods_count": 1,
    },
    {
      "id": 6,
      "goods_name": "ME&CITY女装冬季新款针织抽绳休闲连帽卫衣女",
      "goods_img": "assets/6.webp",
      "goods_price": 142.8,
      "goods_count": 1,
    },
    {
      "id": 7,
      "goods_name": "幂凝假两件女士卫衣秋冬女装2020年新款韩版宽松春秋季薄款ins潮外套",
      "goods_img": "assets/7.webp",
      "goods_price": 219,
      "goods_count": 2,
    },
    {
      "id": 8,
      "goods_name": "依魅人2020休闲运动衣套装女秋季新款秋季韩版宽松卫衣 时尚两件套",
      "goods_img": "assets/8.webp",
      "goods_price": 178,
      "goods_count": 1,
    },
    {
      "id": 9,
      "goods_name": "芷臻(zhizhen)加厚卫衣2020春秋季女长袖韩版宽松短款加绒春秋装连帽开衫外套冬",
      "goods_img": "assets/9.webp",
      "goods_price": 128,
      "goods_count": 1,
    },
    {
      "id": 10,
      "goods_name": "Semir森马卫衣女冬装2019新款可爱甜美大撞色小清新连帽薄绒女士套头衫",
      "goods_img": "assets/10.webp",
      "goods_price": 153,
      "goods_count": 1,
    }
  ]
  build() {
    Column() {
      Row() {
        Text('购物列表').fontSize(20).fontWeight(700)
      }

      List({ space: 20 }) {
        ForEach(this.list, (item: GoodItem) => {
          ListItem() {
            // 父组件的数据, 传递给子组件使用
            // 1. 父组件中, 通过添加对象属性的方式传值
            // 2. 子组件中, 通过配置属性接收
            GoodsCom({
              item: item
            })
          }
        })
      }
      .layoutWeight(1)
      .padding(20)
    }
    .height('100%')
  }
}

@ComponentV2
struct GoodsCom {
  @Param item: GoodItem = {} as GoodItem
  build() {
    // 单个结构
    Row({ space: 10 }) {
      // 左图 + 右列
      Image(this.item.goods_img)
        .width(120)
        .height(200)
        .borderRadius(10)
      Column() {
        Text(this.item.goods_name)
          .fontWeight(700)
        Text(`¥ ${this.item.goods_price}`)
          .fontColor(Color.Red)
          .fontWeight(700)
      }
      .alignItems(HorizontalAlign.Start) // 左对齐
      .justifyContent(FlexAlign.SpaceBetween) // 定高上下两端对齐
      .height(200)
      .layoutWeight(1)
    }
    .width('100%')
  }
}