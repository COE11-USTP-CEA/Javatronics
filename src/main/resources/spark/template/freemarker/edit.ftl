
<#include "header.ftl">

<div class="container">
  


<div class="row jumbotron">
  <div class="text-center">
    <h1>Add product</h1>
  </div>

  <div class="col-md-4"></div>
  <div class="col-md-4">
    

  <form method = "post" action="/add">
    <div class="form-group">
      <label for="exampleInputCode">Product Code</label>
      <input type="code" name="code" class="form-control" id="product_code" placeholder="product code">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Product Name</label>
      <input type="name" name="name" class="form-control" id="product_name" placeholder="product name">
    </div>
   
    <button type="submit" class="btn btn-default">
      Submit
    </button>
  </form>

  <a href="/"> Back to Homepage </a>

  
</div>
</div>
</div>
