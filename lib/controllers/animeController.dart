import 'package:get/get.dart';
import 'package:shopping/models/product.dart';

class AnimeController extends GetxController {
  var products_1 = <Product>[].obs;
  var products_2 = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult_1 = [
      Product(
          id: 1,
          price: 40,
          productDescription:
              "The story follows a spy who has to build a family to execute a mission, not realizing that the girl he adopts as his daughter is a telepath, and the woman he agrees to be in a marriage with is a skilled assassin.",
          productImages: "assets/product_1/product_1_1.jpg",
          productName: "SPY x FAMILY"),
      Product(
          id: 2,
          price: 50,
          productDescription:
              "It is set in a world where humanity is forced to live in cities surrounded by three enormous walls that protect them from gigantic man-eating humanoids referred to as Titans",
          productImages: "assets/product_1/product_1_2.jpg",
          productName: "Attack On Titan"),
      Product(
          id: 3,
          price: 60,
          productDescription:
              "It follows Tsunayoshi Sawada, a young boy who discovers that he is next in line to become boss of the Vongola family, a powerful Mafia organization",
          productImages: "assets/product_1/product_1_3.jpg",
          productName: "REBORN"),
      Product(
          id: 4,
          price: 70,
          productDescription:
              "It tells the story of Saitama, a superhero who, because he can defeat any opponent with a single punch, grows bored from a lack of challenge.",
          productImages: "assets/product_1/product_1_4.jpg",
          productName: "One Punch Man"),
    ];
    products_1.value = productResult_1;
    var productResult_2 = [
      Product(
          id: 1,
          price: 40,
          productDescription:
              " all living beings emanate an energy called Cursed Energy, which arises from negative emotions that naturally flow throughout the body. Normal people cannot control this flow in their bodies.",
          productImages: "assets/product_2/product_2_1.jpg",
          productName: "Jujutsu Kaisen"),
      Product(
          id: 2,
          price: 50,
          productDescription:
              "The Rising of the Shield Hero follows Naofumi Iwatani, a 20 year-old university student who was whisked away to a fantasy game-like realm of monsters and magic after discovering a book about Four Heroes. Iwatani is chosen as one of these four and given the mantle of the Shield Hero.",
          productImages: "assets/product_2/product_2_2.jpg",
          productName: "The Rising Of The Shield Hero"),
      Product(
          id: 3,
          price: 60,
          productDescription:
              "The series follows Hajime Nagumo, who is transported to another world with the rest of his class to fight in a war against the demon race. After he is betrayed and left to die by one of his classmates, Hajime begins a journey to improve himself and find a way to return home.",
          productImages: "assets/product_2/product_2_3.jpg",
          productName: "Arifureta Shokugyou De Sekai Saikyou"),
      Product(
          id: 4,
          price: 70,
          productDescription:
              "Naruto is a ninja-in-training whose wild antics amuse his teammates. But he's completely serious about one thing: becoming the world's greatest ninja! As the battle against the Tailed Beast-targeting Akatsuki rages on, the heroic sibling battle between Sasuke and Itachi eventually concludes.",
          productImages: "assets/product_2/product_2_4.jpg",
          productName: "Naruto"),
    ];
    products_2.value = productResult_2;
    var all_product = new List.from(products_1)..addAll(products_2);
  }
}
