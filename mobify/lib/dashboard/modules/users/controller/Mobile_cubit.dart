import 'package:bloc/bloc.dart';
import 'package:mobile_app/dashboard/modules/users/controller/Mobile_state.dart';
import 'package:mobile_app/dashboard/modules/users/model/Entity_model/Product_model.dart';
import 'package:mobile_app/Database/repo/local_db_data.dart';

class ProductCubit extends Cubit<ProductState> {
  static final ProductCubit instance = ProductCubit._internal();
  final DatabaseRepo dbRepo = DatabaseRepo();
  List<ProductModel> products = [];
  final String imagePath = 'assets/phone-image/iphone14.jpg';

  ProductCubit._internal() : super(ProductStateLoading()) {
    init();
  }

  factory ProductCubit() {
    return instance;
  }

  Future<void> init() async {
    emit(ProductStateLoading());
    await dbRepo.initDB();
    products = await dbRepo.fetchProducts();

    List<ProductModel> productsList = [];

    // for (int i = 0; i < products.length; i++) {
    //   if (products[i].availabilityState == 1) {
    //     productsList.add(products[i]);
    //   }
    // }

    await dbRepo.insertProduct(
      storageCapacity: 256,
      price: 40000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple',
      model: 'Iphone 14 Pro',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/iphone12black.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 0,
      brand: 'MacBook',
      model: 'Air M1 2020',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/M1_202.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'One Plus',
      model: 'Never Settle',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/OnePlus.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Pexil',
      model: 'Pexil 8 Black ',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/pixel8Black.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'MacBook',
      model: 'Air M1 2022',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/M1.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Pexil 8',
      model: 'Pexil 8 Pro Cover',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/Pexil8Goldcover.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 0,
      brand: 'Red Magic',
      model: 'Red Magic Gaming',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/redMagicGaming.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'MacBook',
      model: 'Air M2 2022',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/M2.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung Galaxy',
      model: 'Z Fold',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsungZfold.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Redmi',
      model: 'Note 10 S',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/RedmiBlack.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'MacBook',
      model: 'Air M2 2023',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/M2_2023.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Anker',
      model: 'Air Soundcore 01',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/AnkerAir.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung',
      model: 'Galaxy A 54',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsungA54.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 55000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Lenovo',
      model: 'Legion 5',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/legion5.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung',
      model: 'Galaxy A 24',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsungA24.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Microsoft',
      model: 'Headset',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/headset1.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 60000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Lenovo',
      model: 'LOQ Series',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/lenovoLOQ.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung',
      model: 'Z Flip 4',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsungZflip4.jpg",
      screenSize: 6.0,
      discount: 0,
    );

    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Smart Pen',
      model: 'Jonroom',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/smartpen.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 55000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'HP',
      model: 'Victus Series',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/victusGaming.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple',
      model: 'Iphone 14 Gold',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: imagePath,
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 35000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'LENOVO',
      model: 'Ideapad Gaming 3',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/lenovoIdeapad 3.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Air Pods',
      model: 'Air Gaming Class',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/headsetpubg.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Lenovo',
      model: 'THinkpad 3',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/thinkpad.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple',
      model: 'Iphone 6',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/iphone 6.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung',
      model: 'Galaxy Red Pen',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsung pen (1).jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'DELL G Series',
      model: 'G 15',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/G14.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 22000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung Galaxy',
      model: ' S 22 Ultra',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsung s 22 ultra.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'JBL',
      model: ' Sportive Headset',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/JBLred.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'DELL',
      model: 'Inspiron 3521',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/inspiron3521.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'JBL',
      model: ' Computer Headset',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/JBLblack.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple Watch',
      model: 'Sportive Watch',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/orangeSamrt.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 165000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'ASUS TUF Series',
      model: 'TUF Gaming 3',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/ASUS_TUF.webp",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 200,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Ipad',
      model: 'Silicon Cover',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/ipadcover.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Anker Headset',
      model: 'Bluetooth Headset',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/AnkerBluetooth.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Gaming Headset',
      model: 'Wired PC Headset',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/GamingHeadset.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Oraimo Headset',
      model: 'Bluetoooth Headphone',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/oraimo Bluetooth.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Value Smart',
      model: 'Smart Watch',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/valueSmart.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 2000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple Watch',
      model: 'Sportive Watch',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/sportSmartOrange.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 23000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Samsung Galaxy',
      model: ' S 23 Gold',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/samsung s 23.jpg",
      screenSize: 6.0,
      discount: 0,
    );

    await dbRepo.insertProduct(
      storageCapacity: 64,
      price: 17000,
      ramCapacity: 6,
      year: 2024,
      quantity: 1,
      availabilityState: 1,
      brand: 'Apple',
      model: 'Ipad X',
      color: 'Black',
      processor: 'processor',
      cameraResolution: 'cameraResolution',
      os: 'os',
      image: "assets/phone-image/Tablet.jpg",
      screenSize: 6.0,
      discount: 0,
    );
    await dbRepo.insertProduct(
        storageCapacity: 64,
        price: 14000,
        ramCapacity: 6,
        year: 2024,
        quantity: 1,
        availabilityState: 1,
        brand: 'Apple',
        model: 'iPad 7',
        color: 'Black',
        processor: 'processor',
        cameraResolution: 'cameraResolution',
        os: 'os',
        image: "assets/phone-image/Ipad.jpg",
        screenSize: 6.0,
        discount: 0);

    products = await dbRepo.fetchProducts();

    if (products.isEmpty) {
      emit(ProductStateEmpty());
    } else {
      emit(ProductStateLoaded());
    }
  }

  Future<void> addToCart(int id, int state) async {
    await dbRepo.updateCart(id, state);
    products = await dbRepo.fetchProducts();
    emit(ProductStateLoaded());
  }

  Future<void> addToFavourite(int id, int state) async {
    await dbRepo.updateFavorite(id, state);
    products = await dbRepo.fetchProducts();
    emit(ProductStateLoaded());
  }
}
