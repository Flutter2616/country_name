import 'package:country_name/information/details.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List name = [
    "🇮🇳 INDIA 🇮🇳",
    "🇬🇧 ENGLAND 🇬🇧",
    "🇺🇲 AMERICA 🇺🇲",
    "🇦🇺 AUSTRALIA 🇦🇺",
    "🇦🇪 DUBAI 🇦🇪",
    "🇷🇺 RUSSIA 🇷🇺",
    "🇯🇵 JAPAN 🇯🇵",
    "🇨🇳 CHINA 🇨🇳",
    "🇮🇷 IRAN 🇮🇷",
    "🇦🇫 AFGHANISTAN  🇦🇫",
    "🇹🇷 TURKEY 🇹🇷",
    "🇧🇩 BAGLADESH 🇧🇩",
    "🇿🇦 AFRICA 🇿🇦",
    "🇳🇿 NEW ZELAND 🇳🇿",
    "🇱🇰 SRI LANKA 🇱🇰",
    "🇳🇵 NEPAL 🇳🇵",
    "🇧🇹 BHUTAN 🇧🇹",
    "🇨🇦 CANADA 🇨🇦",
    "🇳🇴 NORVEY 🇳🇴",
  ];
  List data = [
    "India, officially the Republic of India (Hindi: Bhārat Gaṇarājya),[25] is a country in South Asia. It is the seventh-largest country by area, the second-most populous country, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand, Myanmar, and Indonesia.",
    "England is a country that is part of the United Kingdom.[4] It shares land borders with Wales to its west and Scotland to its north. The Irish Sea lies northwest and the Celtic Sea area of the Atlantic Ocean to the southwest. It is separated from continental Europe by the North Sea to the east and the English Channel to the south. The country covers five-eighths of the island of Great Britain, which lies in the North Atlantic, and includes over 100 smaller islands, such as the Isles of Scilly and the Isle of Wight.",
    "The United States of America (U.S.A. or USA), commonly known as the United States (U.S. or US) or America, is a country primarily located in North America. It consists of 50 states, a federal district, five major unincorporated territories, nine Minor Outlying Islands,[g] and 326 Indian reservations. The United States is also in free association with three Pacific Island sovereign states: the Federated States of Micronesia, the Marshall Islands, and the Republic of Palau. It is the world's third-largest country by both land and total area.[b] It shares land borders with Canada to its north and with Mexico to its south and has maritime borders with the Bahamas, Cuba, Russia, and other nations.[h] With a population of over 333 million,[i] it is the most populous country in the Americas and the third most populous in the world. The national capital of the United States is Washington, D.C. and its most populous city and principal financial center is New York City.",
    "Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands.[13] With an area of 7,617,930 square kilometres (2,941,300 sq mi),[14] Australia is the largest country by area in Oceania and the world's sixth-largest country. Australia is the oldest,[15] flattest,[16] and driest inhabited continent,[17][18] with the least fertile soils.[19][20] It is a megadiverse country, and its size gives it a wide variety of landscapes and climates, with deserts in the centre, tropical rainforests in the north-east, and mountain ranges in the south-east.",
    "Dubai (/duːˈbaɪ/, doo-BY; Arabic: دبي, romanized: Dubayy, IPA: [dʊˈbajj], Gulf Arabic pronunciation: [dəˈbaj]) is the most populous city in the United Arab Emirates (UAE) and the capital of the Emirate of Dubai, the most populated of the 7 emirates of the United Arab Emirates.[7][8][9] Established in the 18th century as a small fishing village, the city grew rapidly in the early 21st century with a focus on tourism and luxury,[10] having the second most five-star hotels in the world,[11] and the tallest building in the world, the Burj Khalifa, which is 828 metres (2,717 ft) tall.[12]",
    "Russia (Russian: Россия, Rossiya, [rɐˈsʲijə]), or the Russian Federation,[c] is a transcontinental country spanning Eastern Europe and Northern Asia. It is the largest country in the world, with its internationally recognised territory covering 17,098,246 square kilometres (6,601,670 sq mi), and encompassing one-eighth of Earth's inhabitable landmass. Russia extends across eleven time zones and shares land boundaries with fourteen countries.",
    "Japan (Japanese: 日本, Nippon or Nihon,[nb 1] and formally 日本国, Nihonkoku)[nb 2] is an island country in East Asia. It is situated in the northwest Pacific Ocean and is bordered on the west by the Sea of Japan, extending from the Sea of Okhotsk in the north toward the East China Sea, Philippine Sea, and Taiwan in the south. Japan is a part of the Ring of Fire, and spans an archipelago of 14,125 islands covering 377,975 square kilometers (145,937 sq mi); the five main islands are Hokkaido, Honshu, Shikoku, Kyushu, and Okinawa. Tokyo is the nation's capital and largest city, followed by Yokohama, Osaka, Nagoya, Sapporo, Fukuoka, Kobe, and Kyoto.",
    "China (Chinese: 中国; pinyin: Zhōngguó), officially the People's Republic of China (PRC),[k] is a country in East Asia. It is the world's most populous country, with a population exceeding 1.4 billion, slightly ahead of India. China spans the equivalent of five time zones and borders fourteen countries by land,[l] the most of any country in the world, tied with Russia. With an area of approximately 9.6 million square kilometres (3,700,000 sq mi), it is the world's third largest country by total land area.",
    "Iran,[a] officially the Islamic Republic of Iran[b] is a country located in Western Asia. It is bordered by Iraq and Turkey to the west, by Azerbaijan and Armenia to the northwest, by the Caspian Sea and Turkmenistan to the north, by Afghanistan and Pakistan to the east, and by the Gulf of Oman and the Persian Gulf to the south.",
    "Afghanistan,[c] officially the Islamic Emirate of Afghanistan,[d] is a landlocked country located at the crossroads of Central Asia and South Asia. Referred to as the Heart of Asia,[23] it is bordered by Pakistan to the east and south,[e] Iran to the west, Turkmenistan to the northwest, Uzbekistan to the north, Tajikistan to the northeast, and China to the northeast and east.",
    "One of the world's earliest permanently settled regions, present-day Turkey was home to important Neolithic sites like Göbekli Tepe, and was inhabited by ancient civilizations including the Hattians, Hittites, Anatolian peoples, Mycenaean Greeks, Persians and others.[11][12][13][14]",
    "Bangladesh, is a country in South Asia. It is the eighth-most populous country in the world, with a population exceeding 165 million people in an area of 148,460 square kilometres (57,320 sq mi).",
    "Africa is the world's second-largest and second-most populous continent, after Asia in both cases. At about 30.3 million km2 (11.7 million square miles) including adjacent islands, it covers 6% of Earth's total surface area and 20% of its land area.[7] With 1.4 billion people[1][2] as of 2021, it accounts for about 18% of the world's human population.",
    "New Zealand (Māori: Aotearoa [aɔˈtɛaɾɔa]) is an island country in the southwestern Pacific Ocean. It consists of two main landmasses—the North Island (Te Ika-a-Māui) and the South Island (Te Waipounamu)—and over 700 smaller islands. It is the sixth-largest island country by area, covering 268,021 square kilometres (103,500 sq mi)",
    "Sri Lanka, is an island country in South Asia. It lies in the Indian Ocean, southwest of the Bay of Bengal, and southeast of the Arabian Sea; it is separated from the Indian subcontinent by the Gulf of Mannar and the Palk Strait. Sri Lanka shares a maritime border with India and Maldives.",
    "Nepal (English: /nɪˈpɔːl/;[14] Nepali: नेपाल [nepal]), officially The Federal Democratic Republic of Nepal (सङ्घीय लोकतान्त्रिक गणतन्त्र नेपाल), is a landlocked country in South Asia. It is mainly situated in the Himalayas, but also includes parts of the Indo-Gangetic Plain, bordering the Tibet Autonomous Region of China to the north, and India in the south, east, and west, while it is narrowly separated from Bangladesh by the Siliguri Corridor, and from Bhutan by the Indian state of Sikkim.",
    "Kingdom of Bhutan (Dzongkha: འབྲུག་རྒྱལ་ཁབ་, romanized: Druk Gyal Khap),[14] is a landlocked country in South Asia. It is situated in the Eastern Himalayas, between China in the north and India in the south. A mountainous country, Bhutan is known locally as Druk Yul or Land of the Thunder Dragon.",
    "Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, covering over 9.98 million square kilometres (3.85 million square miles), making it the world's second-largest country by total area. Its southern and western border with the United States, stretching 8,891 kilometres (5,525 mi), is the world's longest binational land border.",
    "Norway, officially the Kingdom of Norway,[a] is a Nordic country in Northern Europe, the mainland territory of which comprises the western and northernmost portion of the Scandinavian Peninsula. The remote Arctic island of Jan Mayen and the archipelago of Svalbard also form part of Norway.",
  ];
  List img1 = [
    "assets/images/country_img/ind.png",
    "assets/images/country_img/end.jpg",
    "assets/images/country_img/america.jpg",
    "assets/images/country_img/aus.jpg",
    "assets/images/country_img/dubai.jpg",
    "assets/images/country_img/russia.jpg",
    "assets/images/country_img/japan.jpg",
    "assets/images/country_img/china.jpg",
    "assets/images/country_img/iran.jpg",
    "assets/images/country_img/afg.jpg",
    "assets/images/country_img/turkey.jpg",
    "assets/images/country_img/bagladesh.jpg",
    "assets/images/country_img/africa.jpg",
    "assets/images/country_img/new.jpg",
    "assets/images/country_img/srilanka.jpg",
    "assets/images/country_img/Nepal_header.jpg",
    "assets/images/country_img/bhutan.jpg",
    "assets/images/country_img/canada.jpg",
    "assets/images/country_img/norwey.jpg",
  ];
  List img2 = [
    "assets/images/president/ind.jpg",
    "assets/images/president/end.jpg",
    "assets/images/president/america.jpg",
    "assets/images/president/aus.jpg",
    "assets/images/president/dubai.jpg",
    "assets/images/president/russia.jpg",
    "assets/images/president/japan.jpg",
    "assets/images/president/china.jpg",
    "assets/images/president/iran.jpg",
    "assets/images/president/afg.jpg",
    "assets/images/president/turkey.jpg",
    "assets/images/president/bag.jpg",
    "assets/images/president/africa.jpg",
    "assets/images/president/new.jpg",
    "assets/images/president/srilanka.jpg",
    "assets/images/president/nepal.jpg",
    "assets/images/president/bhutan.jpg",
    "assets/images/president/canada.jpg",
    "assets/images/president/norwey.jpg",
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        leading: Center(
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
        ),
        title: Text(
          "🌍 COUNTRY 🌍",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              letterSpacing: 5),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: name
              .asMap()
              .entries
              .map((e) => InkWell(
                    onTap: () {
                      List data1=[name[e.key],data[e.key],img1[e.key],img2[e.key]];
                      Navigator.pushNamed(context, "detail",arguments: data1);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => Details(name[e.key],
                      //           data[e.key], img1[e.key], img2[e.key]),
                      //     ));

                    },
                    child: listbox(
                      name[e.key],
                      e.key % 2 == 0 ? Colors.amber : Colors.grey,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  Widget listbox(String name, Color c1) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: c1,
          ),
          child: Center(
            child: Text(
              "$name",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
