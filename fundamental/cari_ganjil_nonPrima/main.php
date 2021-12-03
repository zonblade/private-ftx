<?php
function is_prime($number){
	$result = false;
	$arrcol = [];
	for($i=1;$i<=$number;$i++){
		$c = $number/$i;
		if(is_int($c)){
			$arrcol[] = $c;
		}
	}
	if(count($arrcol)==2){
		$result = true;
	}
	return $result;
}

$not_prime_ganjil = '';
for($x=1;$x<50;$x++){
	if(!is_prime($x)){
		$int = $x/2;
		if(!is_int($int)){
			$not_prime_ganjil .= $x.',';
		}
	}
}
echo rtrim($not_prime_ganjil,',');
