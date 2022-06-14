<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <title>Suspension of customers</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="table-title mb-4">
        <div class="row">
            <div class="col-sm-6">
                <h1>Delete Product</h1>
            </div>
            <div class="col-sm-6 mt-3 text-right">
                <a href="/SpringManagerProduct1" class="btn btn-primary"><i class="fa fa-list" aria-hidden="true"></i> <span>Product list</span></a>
            </div>
        </div>
    </div>
    <form:form id="frmCreateCustomer" action="/SpringManagerProduct1/delete-product" method="post" modelAttribute="product" >
            <fieldset class="row g-3">
             <div class="col-md-6 mt-2">
                    <label class="form-label">Product ID</label>
                     <form:input type="text" readonly="true"  class="form-control"  path="id" value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Product Name</label>
                    <form:input type="text" readonly="true" class="form-control"   path="name" value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Quantity</label>
                   <form:input type="number" readonly="true" class="form-control" path="quantity"  value=""/>
                </div>
                <div class="col-md-6 mt-2">
                    <label class="form-label">Price</label>
                   <form:input type="number" readonly="true" class="form-control" path="price"   value=""/>
                </div>
                <div class="col-md-12 mt-3">
                    <button type="submit"  class="btn btn-outline-danger">
                        <i class="fa fa-plus" readonly="true" aria-hidden="true"></i>
                        Delete
                    </button>
                </div>
            </fieldset>
        </form:form>
</div>
<div class="footer">
    <div id="message-alert">
       
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 <script type="text/javascript">
   
 </script>

</body>
</html>
