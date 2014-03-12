<?php


//$timestamp = mktime(0,0,0,3,10,1979);
$timestamp = time();
//$timestamp = mktime(0,0,0,1,1,2014);
$wochen = 52;

echo "<table border='1'>";

echo "<tr>";
echo "<td>(Jahr)</td>";
$spalten = 0;
$mjahr = 0;
for($k = 0; $k < $wochen +1; $k++){
	$nday4 = $timestamp + ($k * 7  - date('w',$timestamp) ) * (24 *60 *60);
	$jahr = date('Y', $nday4);
	if($mjahr == 0){
		$mjahr = $jahr;
	}
	
	
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
$mmonat = 0;
for($k = 0; $k < $wochen +1; $k++){
		$nday5 = $timestamp + ($k * 7  - date('w',$timestamp) ) * (24 *60 *60);
		$monat = date('m', $nday5);
		if($mmonat == 0){
			$mmonat = $monat;
		}
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
	

	for($j = 0; $j < $wochen; $j++){
		$nday2 = $timestamp + ($j * 7 + $i - date('w',$timestamp) ) * (24 *60 *60);
		if((date('Y',time()) == date('Y',$nday2)) && (date('m',time()) == date('m',$nday2)) && (date('d',time()) == date('d',$nday2))){
			echo "<td bgcolor='red'>".date('d', $nday2)."</td>";
		}else{
			if(date('m', $nday2)%2 == 0){
				echo "<td bgcolor='gray'>".date('d', $nday2)."</td>";
			}else{
				echo "<td bgcolor='lightgray'>".date('d', $nday2)."</td>";
			}
		}
	}
	echo "</tr>";
} 

?>