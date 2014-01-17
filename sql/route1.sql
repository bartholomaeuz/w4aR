 SELECT p.seq, p.id1 AS node, p.id2 AS edge, p.cost,st_astext(w.the_geom) FROM pgr_dijkstra('
                SELECT gid AS id,
                         source::integer,
                         target::integer,
                         length::double precision AS cost
                        FROM ways',
                294, 91, false, false) p,ways w where p.id2 = w.gid;
 seq | node | edge |        cost         |                                                                                                                          st_astext

-----+------+------+---------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------
   0 |  294 |  602 |   0.023076221077697 | LINESTRING(15.3043823 47.4500883,15.3041121 47.4499899)
   1 |  173 |  193 |   0.157810875397762 | LINESTRING(15.3043823 47.4500883,15.3045523 47.449849,15.3047934 47.4494253,15.3051964 47.4487802)
   2 |  174 |  194 |  0.0104611607031503 | LINESTRING(15.3051964 47.4487802,15.3052554 47.448695)
   3 |  175 |  195 |  0.0701251042647173 | LINESTRING(15.3052554 47.448695,15.3056759 47.4481321)
   4 |  145 |  739 |   0.061582650430279 | LINESTRING(15.3056759 47.4481321,15.3063276 47.4484675)
   5 |  376 |  450 |  0.0201227845959467 | LINESTRING(15.3063276 47.4484675,15.306568 47.448547)
   6 |   69 |   76 |   0.250771372271878 | LINESTRING(15.306568 47.448547,15.307362 47.4488913,15.3093448 47.449796)
   7 |   70 |   77 |  0.0632806403341804 | LINESTRING(15.3093448 47.449796,15.309962 47.4499796,15.3101249 47.4500095)
   8 |   71 |   78 | 0.00874861388318685 | LINESTRING(15.3101249 47.4500095,15.3102363 47.4500322)
   9 |   72 |   79 |   0.021609938959341 | LINESTRING(15.3102363 47.4500322,15.3105188 47.4500679)
  10 |   73 |   80 |  0.0988018994780433 | LINESTRING(15.3105188 47.4500679,15.3118134 47.4502199)
  11 |   74 |  572 |  0.0123871757878894 | LINESTRING(15.3118134 47.4502199,15.3119758 47.4502386)
  12 |  457 |  573 |  0.0435701025516017 | LINESTRING(15.3119758 47.4502386,15.3125447 47.450313)
  13 |  458 | 1444 |   0.107629939061189 | LINESTRING(15.3125447 47.450313,15.3132485 47.450388,15.313951 47.4504934)
  14 |  499 | 1445 |   0.176012055882698 | LINESTRING(15.313951 47.4504934,15.3162901 47.4505538)
  15 |  942 | 1446 |  0.0622601039812754 | LINESTRING(15.3162901 47.4505538,15.3171175 47.4505752)
  16 |  495 | 1447 |   0.204754900508072 | LINESTRING(15.3171175 47.4505752,15.3184616 47.4505992,15.3198364 47.450677)
  17 |  191 | 1448 |  0.0042065826191156 | LINESTRING(15.3198364 47.450677,15.3198923 47.4506785)
  18 |  894 | 1449 |   0.287713368575357 | LINESTRING(15.3198923 47.4506785,15.3206487 47.4506726,15.3210459 47.4506195,15.3217392 47.4504854,15.3220157 47.4504892,15.3222828 47.4505325,15.3225549 47.4506063,15.3227891 47.450719,15.32296
15 47.4508446,15.3232066 47.4511138,15.3235403 47.4514593)
  19 |  943 | 1451 |  0.0298689227073473 | LINESTRING(15.3235403 47.4514593,15.3236924 47.4515528,15.3238453 47.4516314)
  20 |  726 | 1458 |  0.0456285942892496 | LINESTRING(15.3238453 47.4516314,15.3240662 47.4517184,15.3243847 47.4518194)
  21 |  728 | 1459 |   0.242316433127398 | LINESTRING(15.3243847 47.4518194,15.3248171 47.451942,15.3257865 47.4521745,15.3274767 47.4524337)
  22 |  845 | 1460 |  0.0326426178373508 | LINESTRING(15.3274767 47.4524337,15.3278986 47.4525029)
  23 |  370 |  441 |  0.0419881925661958 | LINESTRING(15.3278986 47.4525029,15.3284105 47.4526538)
  24 |  371 |  719 |  0.0312348200095895 | LINESTRING(15.3284105 47.4526538,15.3287585 47.4528072)
  25 |  545 |  720 |   0.094957261425543 | LINESTRING(15.3287585 47.4528072,15.3288112 47.4528352,15.3291726 47.4530719,15.3294179 47.4533162,15.3295706 47.4534612)
(26 Zeilen)