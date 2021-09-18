import 'package:d_ecom/model/home_slider_banner.dart';
import 'package:get/get.dart';

class HomeSliderBannerController extends GetxController {
  var homeSliderBanner = List<HomeSliderBanner>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchSliderBanners();
  }

  void fetchSliderBanners() async {
    var sliderBannerResult = [
      HomeSliderBanner(
        imgUrl:
        'https://www.bigbasket.com/media/uploads/banner_images/hp_bcd_m_monsoonsnacks_460.jpg',
      ),
      HomeSliderBanner(
        imgUrl:
        'https://www.bigbasket.com/media/uploads/banner_images/hp_bcd_m_curd_460.jpg',
      ),
      HomeSliderBanner(
        imgUrl:
        'https://www.bigbasket.com/media/uploads/banner_images/hp_f_v_m_freshestharvest_110921_460.jpg',
      ),
      HomeSliderBanner(
        imgUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=s…09/rsz_1daawat_rozana_super_1-6.jpg?613e441e78725',
      ),
      HomeSliderBanner(
        imgUrl: 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/36232310/original/ef53041b145428db9b1e9362510d8f211de9d3c1/need-banner-hero-image-for-your-company.jpg',
      ),
    ];
    homeSliderBanner.value = sliderBannerResult;
  }
}