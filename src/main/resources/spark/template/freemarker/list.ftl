
<#include "header.ftl">


<body>
<#include "navbar.ftl">

<br>
<br>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  	
	<table class="table table-striped">
		<thead>
			<tr>
			<th>Product Code</th>
			<th>Name</th>
			</tr>
		</thead>
		<tbody>
	 		<#list inventory as product>
				<tr>
					<td>${product.code}</td>
					<td>${product.name}</td>
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/show/${product.code}">Show</a>	
  							</button>
						</div>
					</td>
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/delete/${product.code}">Delete</a>	
  							</button>
					</td>
				</tr>

			</#list>
		</tbody>	
	</table>
		<a href="/add">Add new product</a>

  </div>

  <div class="col-md-2"></div>
</div>

</body>
