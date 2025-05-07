import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/category/category.dart';
import '../../domain/product/product.dart';
import '../../utils/log_utils.dart';
import 'explore_state.dart';

class ExploreStateNotifier extends StateNotifier<ExploreState> {
  ExploreStateNotifier() : super(ExploreState.initial()) {
    _logUtils.log("init");
    loadInitialData();
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "ExploreStateNotifier",
    printLog: true,
  );

  void searchQueryChanged(String query) {
    state = state.copyWith(searchQuery: query);
  }

  Future<void> loadInitialData() async {
    state = state.copyWith(isLoading: true);
    

    final categories = [
      const Category(id: '1', name: 'Vegetables', imageUrl: 'https://media.istockphoto.com/id/1203599923/photo/food-background-with-assortment-of-fresh-organic-vegetables.jpg?s=612x612&w=0&k=20&c=DZy1JMfUBkllwiq1Fm_LXtxA4DMDnExuF40jD8u9Z0Q='),
      const Category(id: '2', name: 'Fruits', imageUrl: 'https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?s=612x612&w=0&k=20&c=bz2zksjSPikOYm9I-mG-f8SAQWVpFsR4M_u4K9soLQ0='),
      const Category(id: '3', name: 'Meat', imageUrl: 'https://t3.ftcdn.net/jpg/02/26/53/80/360_F_226538033_C42p96JDNwkSdQs86Agxd1TtaVJsyJ71.jpg'),
      const Category(id: '4', name: 'Seafood', imageUrl: 'https://media.istockphoto.com/id/1156027693/photo/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs.jpg?s=612x612&w=0&k=20&c=FnY31V37yG5Ip4ejRttubUHBS8PPTaZfHHukDsEDjc0='),
      const Category(id: '5', name: 'Dairy', imageUrl: 'https://t4.ftcdn.net/jpg/01/45/60/21/360_F_145602173_05uVexifBuCvWIKvsHGWNuIpPtp5ShkI.jpg'),
      const Category(id: '6', name: 'Bakery', imageUrl: 'https://img.freepik.com/free-photo/sweet-pastry-assortment-top-view_23-2148516578.jpg?semt=ais_hybrid&w=740'),
    ];
    
    final popularProducts = [
      const Product(
        name: 'Fresh Organic Tomatoes',
        price: 5.99,
        imageUrl: 'https://images.pexels.com/photos/1327838/pexels-photo-1327838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        isDiscount: true,
        discountPrice: 3.99,
        discountPercentage: 33,
      ),
      const Product(
        name: 'Premium Beef Steak',
        price: 25.99,
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHo27Xsw_pHnNK3aQNf81FMHSTUZ-WFZwtUQ&s',
        isDiscount: false,
        discountPrice: 25.99,
        discountPercentage: 0,
      ),
      const Product(
        name: 'Fresh Atlantic Salmon',
        price: 18.99,
        imageUrl: 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2022/06/Air-Fryer-Salmon-main.jpg',
        isDiscount: true,
        discountPrice: 15.99,
        discountPercentage: 15,
      ),
      const Product(
        name: 'Fresh Organic Avocados',
        price: 6.99,
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrlt_JVCpaRETC2o5XX3T6IEZmi8zzh8r9w&s',
        isDiscount: false,
        discountPrice: 6.99,
        discountPercentage: 0,
      ),
    ];
    
    state = state.copyWith(
      isLoading: false,
      categories: KtList.from(categories),
      popularProducts: KtList.from(popularProducts),
    );
  }
}