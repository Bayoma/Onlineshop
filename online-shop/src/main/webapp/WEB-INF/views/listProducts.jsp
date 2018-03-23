<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<!-- would be to display sidebar -->
		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>
		<!-- to display the actual products -->
		<div class="col-md-9">
			<!-- added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">
					<c:if test="${userClickAllProducts==true}">
						<script>
							window.categoryId='';
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>
						</ol>
					</c:if>
					<c:if test="${userClickCategoryProducts==true}">
					<script>
							window.categoryId='${category.id}';
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>
				</div>

			<div class="row">
				<div class="col-xs-12">
					<table id="productListTable" class="table table-striped table-borderd">
					<thead>
						<tr>
						<th>Name</th>
						<th>Brand</th>
						<th>UnitPrice</th>
						<th>Qty. Available</th>
						<th></th>
						<th></th>
						</tr>
					</thead>
					
					<tfooter>
						<tr>
						<th>Name</th>
						<th>Brand</th>
						<th>UnitPrice</th>
						<th>Qty. Available</th>
						<th></th>
						</tr>
					</tfooter>
					</table>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>