import Carousel from 'stimulus-carousel'

export default class extends Carousel {
  connect() {
    super.connect()

    // The swiper instance.
    this.swiper
  }
 
}