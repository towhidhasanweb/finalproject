<script setup>
import { Link } from "@inertiajs/vue3";
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
                    <h2 class="page-title">Get in touch</h2>
                    <ol class="page-list">
                        <li>
                            <Link :href="route('show.home')"
                                ><i class="fa fa-home"></i> Home</Link
                            >
                        </li>
                        <li>contact</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- inner-apge-banner end -->

    <!-- contact-section start -->
    <section class="contact-section pt-120 pb-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact-item text-center">
                        <div class="icon"><i class="fa fa-home"></i></div>
                        <div class="content">
                            <h4 class="title">office address</h4>
                            <p>
                                1234 Elm Street, Suite 567 Springfield, United
                                States
                            </p>
                        </div>
                    </div>
                </div>
                <!-- contact-item end -->
                <div class="col-lg-4">
                    <div class="contact-item text-center">
                        <div class="icon"><i class="fa fa-phone"></i></div>
                        <div class="content">
                            <h4 class="title">Phone Number</h4>
                            <p>+8801750513317</p>
                        </div>
                    </div>
                </div>
                <!-- contact-item end -->
                <div class="col-lg-4">
                    <div class="contact-item text-center">
                        <div class="icon"><i class="fa fa-envelope"></i></div>
                        <div class="content">
                            <h4 class="title">Email Address</h4>
                            <p>towhidhasan552@gmail.com</p>
                        </div>
                    </div>
                </div>
                <!-- contact-item end -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-form-area">
                        <h3 class="title">Messages us</h3>
                        <form class="contact-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="frm-group">
                                        <input
                                            type="text"
                                            name="contact_name"
                                            id="contact_name"
                                            placeholder="Name*"
                                        />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="frm-group">
                                        <input
                                            type="email"
                                            name="contact_email"
                                            id="contact_email"
                                            placeholder="Email*"
                                        />
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="frm-group">
                                        <textarea
                                            placeholder="Write your comment"
                                        ></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="frm-group">
                                        <input
                                            type="submit"
                                            name="contact_submit"
                                            id="contact_submit"
                                            value="Send"
                                        />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- contact-section end -->
</template>

<style scoped></style>
