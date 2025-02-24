<script setup>
import { Link } from "@inertiajs/vue3";
</script>

<template>
    <footer class="footer-section">
        <div class="footer-top pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-sm-8">
                        <div class="footer-widget">
                            <div class="">
                                <Link
                                    :href="route('show.home')"
                                    class="text-start navbar-brand mx-4 mb-3"
                                >
                                    <h3 class="text-light">
                                        <i
                                            class="fa fa-car"
                                            style="margin-right: 5px"
                                        ></i
                                        >Car Rent
                                    </h3>
                                </Link>
                                <p>
                                    Experience the ease and convenience of
                                    renting a car with Novaride.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-lg-2 col-sm-4">
                        <div class="footer-widget widget-menu">
                            <h4 class="widget-title">our cars</h4>
                            <ul>
                                <li>
                                    <Link href="">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        SUV
                                    </Link>
                                </li>
                                <li>
                                    <Link href="#0">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Sedan
                                    </Link>
                                </li>
                                <li>
                                    <Link href="#0"
                                        ><i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Hatchback
                                    </Link>
                                </li>
                                <li>
                                    <Link href="#0">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Truck</Link
                                    >
                                </li>
                            </ul>
                        </div>
                    </div> -->

                    <div class="col-lg-3 col-sm-4">
                        <div class="footer-widget widget-menu">
                            <h4 class="widget-title">useful link</h4>
                            <ul>
                                <li>
                                    <Link :href="route('show.home')">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Home</Link
                                    >
                                </li>
                                <li>
                                    <Link :href="route('car.page')">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Reservation</Link
                                    >
                                </li>
                                <li>
                                    <Link :href="route('show.about')">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        About</Link
                                    >
                                </li>
                                <li>
                                    <Link :href="route('show.contact')">
                                        <i
                                            class="fa fa-chevron-right"
                                            aria-hidden="true"
                                        ></i>
                                        Contact</Link
                                    >
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-8">
                        <div class="footer-widget widget-address">
                            <h4 class="widget-title">contact with us</h4>
                            <ul>
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    <span
                                        >1234 Elm Street, Suite 567 Springfield,
                                        United States</span
                                    >
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <span>towhidhasan552@gmail.com </span>
                                </li>
                                <li>
                                    <i class="fa fa-phone-square"></i>
                                    <span>+8801750513317</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>

<style scoped></style>
