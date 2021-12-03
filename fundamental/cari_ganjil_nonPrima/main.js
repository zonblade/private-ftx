const primeGanjilCheck = (angka) => {
		var find = 0;
		var result = false;
		for (var x = 0; x <= angka; x++) {
			var isInt = angka/x;
			if (Number.isInteger(isInt)) {
				find += 1;
			}
		}
		if (find > 2 || find < 2) { result = true; }
		return result;
	}
	const findPrimeGanjilList = () =>{
		var hasil = '';
		for(var x = 0;x<50;x++){
			if(primeGanjilCheck(x)){
				if(!Number.isInteger(x/2)){
					hasil = `${hasil},${x}`
				}
			}
		}
		hasil = hasil.substring(1);
		return hasil;
	}
  console.log(findPrimeGanjilList())
