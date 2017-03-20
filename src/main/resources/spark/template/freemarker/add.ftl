
<#include "header.ftl">

<body>

<#include "navbar.ftl">

<div class="container">
  


<div class="row jumbotron">
  <div class="text-center">
    
  </div>


<div class="col-md-4">
<h1>Add product</h1>

<form method = "post" action="/add">
    <div class="form-group">
      <label for="exampleInputCode">Product Code</label>
      <input type="code" name="code" class="form-control" id="product_code" placeholder="item code">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Product Name</label>
      <input type="name" name="name" class="form-control" id="product_name" placeholder="item name">
    </div>
   
    <button type="submit" class="btn btn-default">
      Submit
    </button>
  </form>

    <a href="/"> Back to Homepage </a>


</div>



  <div class="col-md-4">
    <img src="3.jpg">
  </div>
</div>
</div>

</body>
