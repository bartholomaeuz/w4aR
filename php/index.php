<?php
$today = getdate();
print_r($today);
$z = 0;
$wochen = 52;

echo "<table border='1'>";

echo "<tr>";
echo "<td>(Jahr)</td>";
$spalten = 0;
$mjahr = date('Y', time());
for($k = 0; $k < $wochen +1; $k++){
		$nday4 = time() + ($k * 7  - $today[wday] ) * (24 *60 *60);
		$jahr = date('Y', $nday4);
		if($mjahr == $jahr){
			$spalten++;
		} 
		else{
			echo "<td colspan=".$spalten." bgcolor='lightblue'>".$mjahr."</td>";
			$spalten = 1;
			$mjahr = date('Y', $nday4);
		}  
		
}
echo "<td colspan=".$spalten." bgcolor='lightblue'>".$jahr."</td>";
echo "</tr>";

echo "<tr>";
echo "<td>(Monat)</td>";
$spalten = 0;
$mmonat = date('m', time());
for($k = 0; $k < $wochen +1; $k++){
		$nday5 = time() + ($k * 7  - $today[wday] ) * (24 *60 *60);
		$monat = date('m', $nday5);
		if($mmonat == $monat){
			$spalten++;
		} 
		else{
			echo "<td colspan=".$spalten." bgcolor='lightblue'>".$mmonat."</td>";
			$spalten = 1;
			$mmonat = date('m', $nday5);
		}  
		
}
echo "<td colspan=".$spalten." bgcolor='lightblue'>".$monat."</td>";
echo "</tr>";




for($i = 0; $i < 7; $i++){
	echo "<tr>";
	switch ($i) {
    case 0:
        echo "<td>Sonntag</td>";
        break;
    case 1:
        echo "<td>Montag</td>";
        break;
    case 2:
        echo "<td>Dienstag</td>";
        break;
	case 3:
        echo "<td>Mittwoch</td>";
        break;
    case 4:
        echo "<td>Donnerstag</td>";
        break;
    case 5:
        echo "<td>Freitag</td>";
        break;
	case 6:
        echo "<td>Samstag</td>";
        break;
	}
	
	
	/*
	//if($z == 0){
		if($i == $today[wday]){
			echo "<td>X</td>";
			$z=1;
		}else{
			echo "<td>&nbsp;&nbsp;</td>";
//	}else{
		//$tag =  mktime(0, 0, 0, date("m")  , date("d")+$z, date("Y"));
		//echo "<td>".$z."</td>";
	//}  */
	
	
	
	
	if($z > 0){		
		$nday = time() + ($z * 24 *60 *60);
		if(date('m', $nday2)%2 == 0){
			echo "<td bgcolor='gray'>".date('d', $nday)."</td>";
		}else{
			echo "<td bgcolor='lightgray'>".date('d', $nday)."</td>";
		}
		$z++;	
	}else{
		if($i == $today[wday]){
			echo "<td bgcolor='red'>".$today[mday]."</td>";
			$z++;
		}else{
			echo "<td>&nbsp;&nbsp;</td>";
		}
	
	}
	for($j = 0; $j < $wochen; $j++){
		$nday2 = time() + ($j * 7 + $i + 7 - $today[wday] ) * (24 *60 *60);
		if(date('m', $nday2)%2 == 0){
			echo "<td bgcolor='gray'>".date('d', $nday2)."</td>";
		}else{
			echo "<td bgcolor='lightgray'>".date('d', $nday2)."</td>";
		}
	}
	echo "</tr>";
} 

?>