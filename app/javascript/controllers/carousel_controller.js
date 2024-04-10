import Carousel from 'stimulus-carousel'

export default class extends Carousel {
  connect() {
    super.connect()

    // The swiper instance.
    this.swiper

    // Default options for every carousels.
    this.defaultOptions
  }

  // You can set default options in this getter.
  get defaultOptions() {
    return {
      loop: true,
      speed: 800,
      autoplay: {
        delay: 2500, 
        disableOnInteraction: false,
      },
    }
  }
}