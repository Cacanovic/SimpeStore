<?php

namespace App;
class Cart
{
	//na pocetku postavljamo vrijednosti nule 
	//items prestavlja asocijativni niz
	public $items=null;	
	public $totalQty=0;
	public $totalPrice=0;

	public function __construct($oldCart){
		//u ovoj funkciji provjeravamo da li postoji vec korpa 
		if($oldCart){
			$this->items=$oldCart->items;
			$this->totalQty=$oldCart->totalQty;
			$this->totalPrice=$oldCart->totalPrice;
		} 
	}
	//dodavanje  proizvoda u korpu
	public function add($item, $id){
		//na pocetku kreiramo novi proizvod bez obzira dal on postoji ili ne 
		$storedItem=['qty'=>0, 'price'=>$item->price, 'item'=>$item];
		//u ifu provjeravamo da li vec postoji elemenata u korpi
		if($this->items){
			//ovdje provjeravamo da li proizvod koji hocemo da dodamo u korpu vec postoji
			if(array_key_exists($id,$this->items)){
				//ako postoji onda $storedItem dobija njegove vrijednosti
				$storedItem= $this->items[$id];
			}
		}
		//kolicinu povecavamo za 1
		$storedItem['qty']++;
		//cijenu za cijunu proizvoda
		$storedItem['price']=$item->price*$storedItem['qty'];
		//ovdje proizvod iz korpe dobija novu vrijednost tj. clanovi tog niza su promjenjeni
		//kolicina je povecana, cijena uvecana
		$this->items[$id]=$storedItem;
		//ukupna kolicina se povecava
		$this->totalQty++;
		//ukupna cijena se povecava
		$this->totalPrice+=$item->price;
	}

	public function reduceByOne($id){
		$this->items[$id]['qty']--;
		$this->items[$id]['price']-=$this->items[$id]['item']['price'];
		$this->totalQty--;
		$this->totalPrice-=$this->items[$id]['item']['price'];
		if($this->items[$id]['qty']<=0){
			//ako je kolicina manja od 0 uklanja se proizvod
			unset($this->items[$id]);
		}
	}

	public function removeItem($id){
		$this->totalQty-=$this->items[$id]['qty'];
		$this->totalPrice-=$this->items[$id]['price'];
		unset($this->items[$id]);
	}



}