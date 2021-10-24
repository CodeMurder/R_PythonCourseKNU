
### 1.Створить вектор v із 100 елементів командою v <- rnorm(100). Для цього вектору виведіть: 10-й елемент; елементи з 10-го по 20-й включно; 10 елементів починаючи з 20-го; елементи більше 0.

    > v <- rnorm(100)
    > v
      [1] -1.71136511 -0.61008703 -0.43938562 -0.80693766 -0.96566690  1.04541649  0.71301858 -1.45288166  0.65222827
     [10]  0.27628652 -0.99940010 -0.71740673 -0.57183769  0.80967964 -0.06018714 -0.93059037  2.54326473  0.91368318
     [19]  1.19764379  1.47802923 -0.47387616 -0.05156340 -1.27266789  0.18160538  0.36362717 -0.45445770  0.10494519
     [28]  0.30902664  0.19055559 -0.57807682 -0.83227686 -0.77331591  1.39312603 -0.65483871  1.61508973  0.17108532
     [37]  1.29412842 -1.89206492 -1.17339523 -0.58574344  0.82528802 -0.54807512  1.26809733  0.18748046 -0.10189938
     [46]  0.39324599 -0.59930583 -0.44135247  1.20456292  0.06035110 -0.07611740 -0.52679998 -0.30035144  0.69285561
     [55]  0.38526712  0.30246396  0.95133029 -1.25884568  0.03166315  0.10099080  0.86424687 -0.27121869 -0.74977671
     [64]  0.32375849  0.81261967 -0.01102948 -0.64273637  0.46395970  1.43984533  1.55717762  1.11856380  0.89387998
     [73] -1.94914319  0.80570842  0.35296966  0.11328470  0.84892106 -0.97019678  1.88020800 -0.39914743 -0.23158884
     [82]  0.40265043  0.04476089 -0.19432224  1.11633709 -1.24047798 -0.53090947  1.57307534  0.17098129  0.48375546
     [91] -1.14808155 -0.90444523  0.75405612  0.25529284 -0.43511876  1.34939620 -0.31209771 -0.05493090 -2.30740956
    [100]  0.03260899
    > v[10]
    [1] 0.2762865
    > v[10:20]
     [1]  0.27628652 -0.99940010 -0.71740673 -0.57183769  0.80967964 -0.06018714 -0.93059037  2.54326473  0.91368318
    [10]  1.19764379  1.47802923
    > v[20:29]
     [1]  1.4780292 -0.4738762 -0.0515634 -1.2726679  0.1816054  0.3636272 -0.4544577  0.1049452  0.3090266  0.1905556
    > v[v>0]
     [1] 1.04541649 0.71301858 0.65222827 0.27628652 0.80967964 2.54326473 0.91368318 1.19764379 1.47802923 0.18160538
    [11] 0.36362717 0.10494519 0.30902664 0.19055559 1.39312603 1.61508973 0.17108532 1.29412842 0.82528802 1.26809733
    [21] 0.18748046 0.39324599 1.20456292 0.06035110 0.69285561 0.38526712 0.30246396 0.95133029 0.03166315 0.10099080
    [31] 0.86424687 0.32375849 0.81261967 0.46395970 1.43984533 1.55717762 1.11856380 0.89387998 0.80570842 0.35296966
    [41] 0.11328470 0.84892106 1.88020800 0.40265043 0.04476089 1.11633709 1.57307534 0.17098129 0.48375546 0.75405612
    [51] 0.25529284 1.34939620 0.03260899


### 2. Створити фрейм (data frame) y командою y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE)). Для цього data frame виведіть: останні 10 строк; строки з 10 по 20 включно; 10-й елемент стовпця b; повністю стовпець cc, при цьому використайте ім’я стовпця.

    > y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE))
    > y
                    a   b cc
    1    0.3400992908   1  t
    2   -0.1254694753   2  j
    3   -2.6986631075   3  l
    4    0.4222482699   4  q
    5    0.7805095687   5  m
    6   -0.6799286190   6  n
    7   -1.5403760921   7  k
    8   -0.8282812633   8  d
    9    0.5029446328   9  j
    10   0.3176181959  10  p
    11   0.1180185177  11  a
    12  -0.9649930880  12  r
    13   1.7752090710  13  t
    14  -1.4450938384  14  i
    15  -0.2771057621  15  f
    16   0.6363822294  16  z
    17  -0.2613371825  17  t
    18   1.1342633897  18  t
    19  -0.7065768992  19  e
    20   0.8583712731  20  x
    21   0.7785405632  21  j
    22   0.2479713210  22  l
    23   1.9247297315  23  l
    24  -0.4341172746  24  w
    25   0.1551330560  25  p
    26  -1.6838111562  26  d
    27  -0.9458282861  27  d
    28   1.7700399621  28  x
    29   1.4908256334  29  v
    30   0.3727995376  30  r
    31   0.3369397922  31  h
    32   2.1019923248  32  p
    33   1.9837556472  33  w
    34  -0.5103647632  34  s
    35  -2.0434216837  35  z
    36   0.3610933142  36  l
    37  -0.0088143391  37  f
    38  -0.8294561310  38  o
    39   0.8874179073  39  c
    40  -0.4107054227  40  a
    41  -0.3328437531  41  c
    42  -0.7520782092  42  i
    43  -0.4446159071  43  q
    44   0.0219975946  44  k
    45   0.3524275093  45  p
    46   0.1145987795  46  k
    47   1.4384644522  47  n
    48   1.0070358414  48  f
    49  -0.6728919602  49  j
    50  -0.8587130367  50  t
    51   0.7497866346  51  n
    52   1.0527935283  52  h
    53  -0.0522699390  53  k
    54  -0.4069464291  54  y
    55   0.2867227345  55  b
    56   0.6851630542  56  l
    57   0.0856683779  57  i
    58   0.3584292947  58  j
    59  -0.0271229597  59  b
    60  -0.1071959376  60  e
    61  -0.4017799798  61  r
    62   0.9746367666  62  g
    63  -0.2037167710  63  t
    64  -0.1206531481  64  s
    65  -0.9554089150  65  e
    66   0.0004266899  66  w
    67   1.4377414609  67  g
    68  -1.1064544081  68  i
    69   0.9563439267  69  f
    70   2.4611874645  70  u
    71  -0.0454709975  71  w
    72   1.1076149735  72  f
    73  -0.4200224283  73  a
    74   1.0810755037  74  g
    75  -0.9785377569  75  u
    76  -0.2209327153  76  w
    77   1.4933919445  77  s
    78   0.2494394677  78  d
    79  -0.8989036227  79  s
    80   0.6169130967  80  z
    81  -1.3250085614  81  l
    82   0.9007116443  82  o
    83  -0.2659118344  83  r
    84  -0.2135846372  84  p
    85  -0.6862810545  85  v
    86   0.9032719718  86  k
    87   0.0594374606  87  f
    88  -1.5587286360  88  y
    89   0.8921039686  89  i
    90   0.2953300731  90  e
    91  -1.5607236451  91  u
    92   0.4363215605  92  b
    93  -0.1524037991  93  a
    94  -0.7755129712  94  v
    95   0.3753561192  95  h
    96   0.5464689888  96  l
    97  -1.1863287124  97  e
    98  -0.8289924081  98  g
    99  -1.3743713068  99  c
    100 -0.0734272197 100  h
    > tail(y,10)
                  a   b cc
    91  -1.56072365  91  u
    92   0.43632156  92  b
    93  -0.15240380  93  a
    94  -0.77551297  94  v
    95   0.37535612  95  h
    96   0.54646899  96  l
    97  -1.18632871  97  e
    98  -0.82899241  98  g
    99  -1.37437131  99  c
    100 -0.07342722 100  h
    > y[10:20,]
                a  b cc
    10  0.3176182 10  p
    11  0.1180185 11  a
    12 -0.9649931 12  r
    13  1.7752091 13  t
    14 -1.4450938 14  i
    15 -0.2771058 15  f
    16  0.6363822 16  z
    17 -0.2613372 17  t
    18  1.1342634 18  t
    19 -0.7065769 19  e
    20  0.8583713 20  x
    > y[10,"b"]
    [1] 10
    > data.frame(y$cc)
        y.cc
    1      t
    2      j
    3      l
    4      q
    5      m
    6      n
    7      k
    8      d
    9      j
    10     p
    11     a
    12     r
    13     t
    14     i
    15     f
    16     z
    17     t
    18     t
    19     e
    20     x
    21     j
    22     l
    23     l
    24     w
    25     p
    26     d
    27     d
    28     x
    29     v
    30     r
    31     h
    32     p
    33     w
    34     s
    35     z
    36     l
    37     f
    38     o
    39     c
    40     a
    41     c
    42     i
    43     q
    44     k
    45     p
    46     k
    47     n
    48     f
    49     j
    50     t
    51     n
    52     h
    53     k
    54     y
    55     b
    56     l
    57     i
    58     j
    59     b
    60     e
    61     r
    62     g
    63     t
    64     s
    65     e
    66     w
    67     g
    68     i
    69     f
    70     u
    71     w
    72     f
    73     a
    74     g
    75     u
    76     w
    77     s
    78     d
    79     s
    80     z
    81     l
    82     o
    83     r
    84     p
    85     v
    86     k
    87     f
    88     y
    89     i
    90     e
    91     u
    92     b
    93     a
    94     v
    95     h
    96     l
    97     e
    98     g
    99     c
    100    h

### 3. Створити вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. Для цього вектору: виведіть всі елементи, які не NA; підрахуйте середнє значення всіх елементів цього вектору без NA значень та з NA значеннями.

    > z <- c(1, 2, 3, NA, 4, NA, 5, NA)
    > z_without_NA <- z[!is.na(z)]
    > z_without_NA
    [1] 1 2 3 4 5
    > mean(as.numeric(z_without_NA))
    [1] 3
    > mean(z)
    [1] NA