<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <style>
        .card{
            cursor:pointer;
            transition: linear 0.5s;
        }
        .card:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .card-body{
            text-transform: capitalize;
        }
    </style>

    <!-- About Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-4">
                    <div class="section-title mb-4">
                        <h5 class="position-relative d-inline-block text-primary text-uppercase">Blog Spot</h5>

                    </div>
                    <div class="row g-3">
                        <div class="col-lg-12 wow zoomIn" data-wow-delay="0.3s">
                            <!-- first 4 Post -->
                            <c:forEach items="" var="p">
                                <!-- Post id to redirect -->
                                <div onclick="window.location.href = ''" class="card mb-3">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <!-- Post img -->
                                            <img src="" class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <!-- Category name and author -->
                                                <p class="card-text">${p.category.nameCategory}&emsp;&squf;&emsp;${p.author.nameAuthor}</p>
                                                <!-- Post title -->
                                                <h5 class="card-title">${p.postTitle}</h5>
                                                <!-- Post date -->
                                                <p class="card-text">Posted <fmt:formatDate type = "date" value ="${p.postDate}"/></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- blog content -->
                        </div>




                    </div>
                    <a href="post" class="btn btn-primary py-3 px-5 mt-4 wow zoomIn" data-wow-delay="0.6s">View all post</a>
                </div>
                <div class="col-lg-8" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-auto h-100 rounded wow zoomIn" data-wow-delay="0.9s" src="frontend/assert/img/manhinh.jpg" style="object-fit: cover;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5 mb-5">
                <div class="col-lg-5 service-item wow zoomIn" data-wow-delay="0.3s" style="min-height: 400px;">
                    <!-- Brand 1 -->
                    <div class="position-relative h-100  overflow-hidden zoomIn">
                        <!-- id -->
                        <a href="">
                            <div style="height:440px;" class="rounded-top overflow-hidden">
                                <!-- img -->
                                <img class="position-absolute w-100 h-100" src="" style="object-fit: cover;">
                            </div>
                            <div class="position-relative bg-light rounded-bottom text-center p-4">
                                <!-- name -->
                                <h5 class="m-0"></h5>
                            </div>

                        </a>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="section-title mb-5">

                        <h5 class="position-relative d-inline-block text-primary text-uppercase">Our Services</h5>
                        <h1 class="display-5 mb-0">We Offer The Best Quality Dental Services</h1>
                    </div>
                    <div class="row g-5">
                        <!-- Brand 2 -->
                        <div class=" col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                            <!-- id-->
                            <a href="">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <!-- img -->
                                    <img class="img-fluid" src="" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <!-- name -->
                                    <h5 class="m-0"></h5>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.9s">
                            <!-- Brand 3 -->
                            <!-- id -->
                            <a href="">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    
                                    <img class="img-fluid" src="" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    
                                    <h5 class="m-0"></h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-7">
                    <div class="row g-5">
                        
                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.3s">
                            <!-- Brand 4 -->
                            <!-- id -->
                            <a href="">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    
                                    <img class="img-fluid" src="" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    
                                    <h5 class="m-0"></h5>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                            <!-- Brand 5 -->
                            <!-- id -->
                            <a href="">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <!-- img -->
                                    <img class="img-fluid" src="" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <!-- name -->
                                    <h5 class="m-0"></h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 service-item wow zoomIn" data-wow-delay="0.9s">
                    <div style="background-image: url('https://source.unsplash.com/random')" class="position-relative bg-primary rounded h-100 d-flex flex-column align-items-center justify-content-center text-center p-4">
                        <h3 style='text-shadow: 2px 2px 8px black;' class="text-white mb-3">Explore more</h3>

                        <a href="service" class="zoom-in text-white mb-0 btn btn-primary">Go to the service page</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

    <jsp:include page="../component/bottom.jsp"></jsp:include>