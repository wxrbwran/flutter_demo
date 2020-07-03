void main() {
  // for 循环
  int i;
  for (i = 1; i <= 10; i++) {
    print(i);
  }

  List list = [
    {
      "cate": '国内',
      "news": [
        {
          "title": '新闻2',
        },
        {
          "title": '新闻3',
        }
      ]
    },
    {
      "cate": '国际',
      "news": [
        {
          "title": '新闻22',
        },
        {
          "title": '新闻33',
        }
      ]
    }
  ];
  for (var item in list) {
    print(item['cate']);
    print('------------');
    for (var news in item['news']) {
      print(news['title']);
    }
  }

  // while / do while
}
