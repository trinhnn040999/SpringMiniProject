<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en"  >
<head>
    <title>Edit Product</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--    // Sử dụng DNS Prefetch-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <div class="table-title mb-4">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Update Product</h1>
                </div>
                 <div class="col-sm-6 mt-3 text-right">
                <a href="/SpringManagerProduct1" class="btn btn-primary"><i class="fa fa-list" aria-hidden="true"></i> <span>Product list</span></a>
            </div>
            </div>
        </div>
        
        <form:form id="frmCreateCustomer" action="/SpringManagerProduct1/edit-product" method="post" modelAttribute="product" >
            <fieldset class="row g-3">
             <div class="col-md-6 mt-2">
                    <label class="form-label">Product ID</label>
                     <form:input type="text" readonly="true"  class="form-control"  path="id" value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Product Name</label>
                    <form:input type="text" class="form-control" id="fullName" name="fullName"  path="name" value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Quantity</label>
                   <form:input type="number" class="form-control" path="quantity"  value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Price</label>
                   <form:input type="number" class="form-control" path="price"   value=""/>
                </div>
                <div class="col-md-12 mt-3">
                    <button type="submit"  class="btn btn-outline-primary">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        Save Changes
                    </button>
                </div>
            </fieldset>
        </form:form>
    </div>
    <div class="footer">

    </div>

</body>
</html>
