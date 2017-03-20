<#include "header.ftl">

<body>
<#include "navbar.ftl">


  <div class="text-center">
    <h1>You are about to delete: ${product}</h1>
  </div>

<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Product code: ${product.code}</h2>
<h2>Product Name: ${product.name}</h2>

<form  method="post" action="/delete">
<input type="hidden" name="code" class="form-control" id="product_code" value="${product.code}">
    <button type="submit" class="btn btn-default">
      Delete
    </button>
</form>



<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View product list
      </a>
    </button>
</div>

<a href="/list">Cancel</a>

  </div>
  <div class="col-md-4"></div>

</div>

</body>
  

