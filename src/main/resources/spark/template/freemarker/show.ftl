<#include "header.ftl">

<body>
<#include "navbar.ftl">

<div class="text-center">
<h1>You have added new product ${product}</h1>
</div>


<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Product code: ${product.code}</h2>
<h2>Product Name: ${product.name}</h2>

<div class="btn-group" role="group" aria-label="...">
  
  	<button type="button" class="btn btn-default">
  		<a href="/">
  			Back to Homepage
  		</a>
  	</button>
</div>

<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View products list
      </a>
    </button>
</div>


  </div>
  <div class="col-md-4"></div>

</div>

</body>
