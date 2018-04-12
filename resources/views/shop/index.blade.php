@extends('layouts.master')
@section('title')
	Online Store
@endsection


@section('content')

<div class="container-fluid">
	<div class="col-md-4">
		<h1>Kategorije</h1>
		<div class="checkbox">
		  <label><input type="checkbox" value="">Kacige</label>
		</div>
		<div class="checkbox">
		  <label><input type="checkbox" value="">Rukavice</label>
		</div>
		<div class="checkbox">
		  <label><input type="checkbox" value="">Stitnici</label>
		</div>
		<div class="checkbox">
		  <label><input type="checkbox" value="">Jakne</label>
		</div>
	</div>
	<div class="col-md-4">
		<h1>Neka dodatna pretrazivanje</h1>
	</div>
	<div class="col-md-4">
		<h3>Cijena : <span id="spanOutput"></span></h3>		
		<div id="slider"></div>
	</div>
</div>



	@foreach($products->chunk(3) as $productChunk)
	
		<div class="row">

		@foreach($productChunk as $product)

		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <img src="{{$product->imagePath}}" class="image-responsive">
		      <div class="caption">
		        <h3 class="product-title">{{$product->title}}</h3>
		       <div class="clearfix">
		       <div class="pull-left price">{{$product->price}}</div>
		         	<a href="{{ route('product.addToCart',['id'=>$product->id]) }}" class="btn btn-success pull-right" role="button">Add to Cart</a>
		       </div>
		      </div>
		    </div>
		  </div>

		@endforeach

		</div>

	@endforeach
@endsection