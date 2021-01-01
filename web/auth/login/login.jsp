<%-- Document : login Created on : Dec 8, 2020, 5:04:25 PM Author : ChiHab --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>2SBPLUS</title>
        <!-- plugins:css -->
        <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/vendors/ti-icons/css/themify-icons.css"
            />
        <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/vendors/base/vendor.bundle.base.css"
            />
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
        <!-- endinject -->
        <link
            rel="shortcut icon"
            href="<%=request.getContextPath()%>/images/favicon.png"
            />
    </head>

    <body>
        <% String msgerr;
            request.getSession().invalidate();
            if (request.getAttribute("msgerr") != null) {
                msgerr
                    = request.getAttribute("msgerr").toString();
        } else {
            msgerr = "";
        }%>
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div
                    class="content-wrapper d-flex align-items-stretch auth auth-img-bg"
                    >
                    <div class="row flex-grow">
                        <div
                            class="col-lg-6 d-flex align-items-center justify-content-center"
                            >
                            <div class="auth-form-transparent text-left p-3">
                                <div class="brand-logo">
                                    <img
                                        src="<%=request.getContextPath()%>/images/logo.png"
                                        alt="logo"
                                        />
                                </div>
                                <h4>Bienvenue</h4>
                                <h6 class="font-weight-light">Connecter vous !</h6>
                                <form
                                    class="pt-3"
                                    action="<%=request.getContextPath()%>/connection"
                                    method="post"
                                    >
                                    <div class="form-group">
                                        <label for="exampleInputEmail">MAIL</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend bg-transparent">
                                                <span
                                                    class="input-group-text bg-transparent border-right-0"
                                                    >
                                                    <i class="ti-user text-primary"></i>
                                                </span>
                                            </div>
                                            <input
                                                type="mail"
                                                class="form-control form-control-lg border-left-0"
                                                id="exampleInputEmail"
                                                placeholder="Username"
                                                name="user"
                                                />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword">PASSWORD</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend bg-transparent">
                                                <span
                                                    class="input-group-text bg-transparent border-right-0"
                                                    >
                                                    <i class="ti-lock text-primary"></i>
                                                </span>
                                            </div>
                                            <input
                                                type="password"
                                                class="form-control form-control-lg border-left-0"
                                                id="exampleInputPassword"
                                                placeholder="Password"
                                                name="password"
                                                />
                                        </div>
                                    </div>
                                    <div class="my-3">
                                        <button
                                            class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                                            type="submit"
                                            >
                                            LOGIN
                                        </button>
                                    </div>
                                    <div class="text-center mt-4 font-weight-light">
                                        <p class="h5 text-danger"><%=msgerr%></p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 login-half-bg d-flex flex-row">
                            <p
                                class="text-white font-weight-medium text-center flex-grow align-self-end"
                                >
                                Copyright &copy; 2020 All rights reserved.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="../../vendors/base/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- inject:js -->
        <script src="../../js/off-canvas.js"></script>
        <script src="../../js/hoverable-collapse.js"></script>
        <script src="../../js/template.js"></script>
        <script src="../../js/todolist.js"></script>
        <!-- endinject -->
    </body>
</html>
