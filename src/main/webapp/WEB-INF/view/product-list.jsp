<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html lang="en" >
<head>
    <title>Product management</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="dns-prefetch" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div class="table-title">
        <div class="row mb-3">
            <div class="col-sm-5">
                <h1>List of products</h1>
            </div>
            <div class="col-sm-7 text-right mt-3">
                <a href="/SpringManagerProduct1/create" class="btn btn-primary"><i class="fa fa-plus-square-o"  aria-hidden="true"></i> <span>Add New Product</span></a>
            </div>
        </div>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th  class="text-center">#</th>
            <th  class="text-center">Product Name</th>
            <th  class="text-center">Price</th>
            <th  class="text-center">Quantity</th>
            <th colspan="2"  class="text-center">Action</th>
        </tr>
        </thead>
        <tbody>
       
        
       <c:forEach items="${products}" var="pd">
        <tr >
            <td class="text-center" >${pd.id}</td>
            <td class="text-center" >${pd.name}</td>
            <td  class="text-center" >${pd.price}</td>
            <td  class=" text-center" >${pd.quantity}</td>
            <td class="text-center">
                <a class="btn btn-outline-secondary" title="Edit" data-toggle="tooltip"  href="/SpringManagerProduct1/edit-product/${pd.id}">
                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </a>
            </td>
            <td class="text-center">
                <a class="btn btn-outline-danger" title="Delete" data-toggle="tooltip" href="/SpringManagerProduct1/delete-product/${pd.id}">
                    <i class="fa fa-ban" aria-hidden="true"></i>
                </a>
            </td>
             </tr>
</c:forEach>
            
       
        </tbody>
    </table>
</div>



</body>
</html>