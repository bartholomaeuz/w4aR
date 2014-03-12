<?php
$nday = time() + ( 24 * 60 * 60);    
echo 'Now:       '. date('d') ."\n";    
echo 'Next Day: '. date('d', $nday) ."\n";
?>