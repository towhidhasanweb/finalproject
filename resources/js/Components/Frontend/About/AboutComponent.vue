<script setup>
import { Link } from "@inertiajs/vue3";
import { route } from "../../../../../vendor/tightenco/ziggy/src/js";
</script>

<template>
    <!-- inner-apge-banner start -->
    <section
        class="inner-page-banner bg_img overlay-3"
        style="
            background-image: url('https://images.unsplash.com/photo-1613214149922-f1809c99b414?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
        "
    >
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="page-title">about comapny</h2>
                    <ol class="page-list">
                        <li>
                            <Link :href="route('show.home')"
                                ><i class="fa fa-home"></i> Home</Link
                            >
                        </li>
                        <li>About us</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- inner-apge-banner end -->

    <!-- company-char-section start -->
    <section class="company-char-section pt-120 pb-120">
        <div class="container">
            <div class="row mb-50">
                <div class="col-lg-6">
                    <div class="company-char-content">
                        <h2 class="title title--border text-capitalize">
                            Your trusted partner in reliable car rental
                        </h2>
                        <p>
                            Aqestic Optio Amet A Ququam Saepe Aliquid Voluate
                            Dicta Fuga Dolor Saerror Sed Earum A Magni Soluta
                            Quam Minus Dolor Dolor
                        </p>

                        <p>
                            Pellentesque turpis et nonummy eu nulla. Quis
                            gravida ultrices nam sed vel ut, vehicula adipiscing
                            quam. Nibh vestibulutempormagna maecenas vehicula
                            donec ligula.Quisque cras molestie dictum, aliquam
                            litora. Tempus amet pellentesque vitae.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="company-char-thumb">
                        <img
                            src="https://img.freepik.com/free-photo/young-couple-talking-sales-person-car-showroom_1303-15117.jpg?t=st=1740370011~exp=1740373611~hmac=bdc86d2677fbd861755bb050bf565af45ce5db8ca47308d48862c57199be7642&w=1060"
                            alt="image"
                        />
                    </div>
                </div>
            </div>
            <div class="row mb-none-30">
                <div class="col-lg-4 col-sm-6">
                    <div class="text-item">
                        <h3 class="title">
                            Pioneering excellence in car rental services
                        </h3>
                        <p>
                            We aim to continually innovate and integrate the
                            latest technology into our services. From easy
                            online bookings to advanced vehicle tracking
                            systems, our goal is to make the car rental process
                            seamless and efficient for our customers.
                        </p>
                    </div>
                </div>
                <!-- text-item end -->
                <div class="col-lg-4 col-sm-6">
                    <div class="text-item">
                        <h3 class="title">Provided Best Services</h3>
                        <p>
                            Volutpat vestibulum ac nulla. Quisque craslestie
                            dictum, aliquam litora. Tempus amet pelltesque vitae
                            ante, consectetuer consequat sed vestilum fringilla
                            dictumenim
                        </p>
                    </div>
                </div>
                <!-- text-item end -->
                <div class="col-lg-4 col-sm-6">
                    <div class="text-item">
                        <h3 class="title">Our Mission</h3>
                        <p>
                            Volutpat vestibulum ac nulla. Quisque craslestie
                            dictum, aliquam litora. Tempus amet pelltesque vitae
                            ante, consectetuer consequat sed vestilum fringilla
                            dictumenim
                        </p>
                    </div>
                </div>
                <!-- text-item end -->
            </div>
        </div>
    </section>
    <!-- company-char-section end -->

    <!-- call-action-section start -->
    <section class="call-action-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="call-action-img text-lg-left text-center">
                        <img
                            src="https://st2.depositphotos.com/1003989/5622/i/450/depositphotos_56222085-stock-photo-call-center-operator.jpg"
                            alt="image"
                        />
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="call-cation-content">
                        <h3 class="top-title">Call Us for Suport</h3>
                        <span class="call-number">+444-555-666</span>
                        <p>
                            Pellentesque turpis et nonummy eu nulla. Quis
                            gravida ultrices nam sed vel ut, ve adiping quam.
                            Nibh vestibulum tempor, magna maecenas, vehicula
                            donec ut nonummy crascipit. Amet aliquam ut elit
                            semper urna metus, pede.
                        </p>
                        <Link :href="route('show.contact')" class="cmn-btn"
                            >contact us</Link
                        >
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- call-action-section end -->
</template>

<style scoped></style>
