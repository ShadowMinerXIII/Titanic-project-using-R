> install.packages("C:/Users/13005235/Desktop/pastecs")
Installing package into ‘C:/Users/13005235/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
Warning message:
package ‘C:/Users/13005235/Desktop/pastecs’ is not available (for R version 3.5.1) 
> install.packages("pastecs")
Installing package into ‘C:/Users/13005235/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
trying URL 'https://www.stats.bris.ac.uk/R/bin/windows/contrib/3.5/pastecs_1.3.21.zip'
Content type 'application/zip' length 478616 bytes (467 KB)
downloaded 467 KB

package ‘pastecs’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\13005235\AppData\Local\Temp\RtmpGGGWXC\downloaded_packages
> install.packages("psych")
Installing package into ‘C:/Users/13005235/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
trying URL 'https://www.stats.bris.ac.uk/R/bin/windows/contrib/3.5/psych_1.8.4.zip'
Content type 'application/zip' length 5740934 bytes (5.5 MB)
downloaded 5.5 MB

package ‘psych’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\13005235\AppData\Local\Temp\RtmpGGGWXC\downloaded_packages
> library(psych)

Attaching package: ‘psych’

The following objects are masked from ‘package:ggplot2’:

    %+%, alpha

> describe(data$day1)
   vars   n mean   sd median trimmed mad  min  max range skew kurtosis   se
X1    1 810 1.77 0.69   1.79    1.77 0.7 0.02 3.69  3.67    0    -0.42 0.02
> describe(data$day2)
   vars   n mean   sd median trimmed  mad min  max range skew kurtosis   se
X1    1 264 0.96 0.72   0.79    0.87 0.61   0 3.44  3.44 1.08     0.76 0.04
> describe(data$day3)
   vars   n mean   sd median trimmed  mad  min  max range skew kurtosis   se
X1    1 123 0.98 0.71   0.76     0.9 0.61 0.02 3.41  3.39 1.01     0.59 0.06
> library(pastecs)
> stat_describe(data$day1.basic=FASLE,norm=TRUE)
Error: unexpected '=' in "stat_describe(data$day1.basic="
> stat_describe(data$day1,basic=FASLE,norm=TRUE)
Error in stat_describe(data$day1, basic = FASLE, norm = TRUE) : 
  could not find function "stat_describe"
> stat.describe(data$day1,basic=FASLE,norm=TRUE)
Error in stat.describe(data$day1, basic = FASLE, norm = TRUE) : 
  could not find function "stat.describe"
> stat.desc(data$day1,basic=FASLE,norm=TRUE)
Error in stat.desc(data$day1, basic = FASLE, norm = TRUE) : 
  object 'FASLE' not found
> stat.desc(data$day1, basic=FALSE,norm=TRUE)
      median         mean      SE.mean CI.mean.0.95          var      std.dev     coef.var 
  1.79000000   1.77113580   0.02436847   0.04783289   0.48099624   0.69353892   0.39157862 
    skewness     skew.2SE     kurtosis     kurt.2SE   normtest.W   normtest.p 
 -0.00442835  -0.02577395  -0.42159405  -1.22838457   0.99591522   0.03198482 
> stat.desc(data$day2, basic=FALSE,norm=TRUE)
      median         mean      SE.mean CI.mean.0.95          var      std.dev     coef.var 
7.900000e-01 9.609091e-01 4.436095e-02 8.734781e-02 5.195239e-01 7.207801e-01 7.501022e-01 
    skewness     skew.2SE     kurtosis     kurt.2SE   normtest.W   normtest.p 
1.082811e+00 3.611574e+00 7.554615e-01 1.264508e+00 9.083191e-01 1.281630e-11 
> round(stat.desc(data(,c["day1","day2","day3"]),basic=FALSE,norm=TRUE,digits="3")
+ round(stat.desc(data(,c["day1","day2","day3"]),basic=FALSE,norm=TRUE),digits="3")
Error: unexpected symbol in:
"round(stat.desc(data(,c["day1","day2","day3"]),basic=FALSE,norm=TRUE,digits="3")
round"
> round(stat.desc(data(,c["day1","day2","day3"]),basic=FALSE,norm=TRUE),digits="3")
Error in round(stat.desc(data(, c["day1", "day2", "day3"]), basic = FALSE,  : 
  non-numeric argument to mathematical function
In addition: Warning messages:
1: In data(, c["day1", "day2", "day3"]) : data set ‘’ not found
2: In data(, c["day1", "day2", "day3"]) :
  data set ‘c["day1", "day2", "day3"]’ not found
> round(stat.desc(data[,c("day1","day2","day3"]),basic=FALSE,norm=TRUE),digits="3")
Error: unexpected ']' in "round(stat.desc(data[,c("day1","day2","day3"]"
> round(stat.desc(data[,c("day1","day2","day3")},basic=FALSE,norm=TRUE),digits="3")
Error: unexpected '}' in "round(stat.desc(data[,c("day1","day2","day3")}"
> round(stat.desc(data[,c("day1","day2","day3")],basic=FALSE,norm=TRUE),digits="3")
Error in FUN(X[[i]], ...) : non-numeric argument to mathematical function
> round(stat.desc(data[,c("day1","day2","day3")],basic=FALSE,norm=TRUE),digits=3)
               day1  day2  day3
median        1.790 0.790 0.760
mean          1.771 0.961 0.977
SE.mean       0.024 0.044 0.064
CI.mean.0.95  0.048 0.087 0.127
var           0.481 0.520 0.504
std.dev       0.694 0.721 0.710
coef.var      0.392 0.750 0.727
skewness     -0.004 1.083 1.008
skew.2SE     -0.026 3.612 2.309
kurtosis     -0.422 0.755 0.595
kurt.2SE     -1.228 1.265 0.686
normtest.W    0.996 0.908 0.908
normtest.p    0.032 0.000 0.000
> rexam<-read.delim("C:/Users/13005235/Desktop/RExam.dat",header = TRUE)
> rexam
    exam computer lectures numeracy uni
1     18       54     75.0        7   0
2     30       47      8.5        1   0
3     40       58     69.5        6   0
4     30       37     67.0        6   0
5     40       53     44.5        2   0
6     15       48     76.5        8   0
7     36       49     70.0        3   0
8     40       49     18.5        7   0
9     63       45     43.5        4   0
10    31       62    100.0        6   0
11    22       67     48.0        3   0
12    47       62     10.5        3   0
13    38       38     57.5        1   0
14    34       37     61.5        8   0
15    54       54     54.0        4   0
16    35       48     71.0        5   0
17    33       48     14.0        9   0
18    38       42     55.5        3   0
19    29       57     72.5        2   0
20    36       55     38.0        4   0
21    59       41     40.0        1   0
22    31       42     85.5        4   0
23    34       48     52.0        4   0
24    28       44      8.0        3   0
25    50       42     62.5        6   0
26    59       42     70.5        3   0
27    33       40     98.0        4   0
28    57       52     34.5        2   0
29    25       56     62.5        3   0
30    53       54     91.5        2   0
31    65       52     97.5        7   0
32    47       55     31.5        2   0
33    28       61     80.5        7   0
34    43       56     66.5        4   0
35    47       52     57.5        2   0
36    60       49     67.0        4   0
37    45       43     48.5        4   0
38    22       51     61.0        4   0
39    39       49     76.0        3   0
40    43       56     30.5        2   0
41    66       41     45.0        2   0
42    36       67     21.5        4   0
43    26       35     72.5        5   0
44    58       49     66.0        8   0
45    53       62     90.5        6   0
46    37       66     48.5        4   0
47    48       48     62.0        3   0
48    32       46     49.0        1   0
49    42       46     60.0        5   0
50    34       58     21.0        5   0
51    56       30     84.5        7   1
52    76       48     51.0        8   1
53    72       54     58.5        5   1
54    77       44     42.0        6   1
55    77       54     65.5        9   1
56    66       58     56.0        7   1
57    62       59     71.5        2   1
58    86       54     48.5        5   1
59    97       35     84.5        5   1
60    72       56     47.5        2   1
61    69       53     54.0        3   1
62    87       56     70.5        6   1
63    88       65     73.0        5   1
64    72       50     79.0       12   1
65    75       39     82.5        8   1
66    74       40     74.5        3   1
67    68       50     85.0        2   1
68    81       57     69.5       10   1
69    77       39     42.0        7   1
70    71       41     43.0        8   1
71    60       48     46.5        6   1
72    74       46     36.5        8   1
73    80       54     72.5        4   1
74    68       55     62.0        4   1
75    64       27     81.5        5   1
76    94       57    100.0       13   1
77    65       73     27.0       14   1
78    72       54     59.5        2   1
79    75       54     75.0        3   1
80    92       50     34.0        2   1
81    89       56     78.0        4   1
82    83       57     80.5        5   1
83    80       54     84.0        2   1
84    95       55     37.5        4   1
85    99       54     57.0        3   1
86    80       52     66.0        8   1
87    81       67     59.0       10   1
88    75       44     68.5        5   1
89    78       57     88.5        3   1
90    65       54     55.0        8   1
91    80       51     86.0        5   1
92    86       55     68.5       10   1
93    73       51     64.0        7   1
94    81       45     12.5        1   1
95    69       59     52.5        7   1
96    60       43     37.0        5   1
97    69       57     46.0        2   1
98    71       50     97.5        2   1
99    82       50     70.5        4   1
100   58       47     78.0        3   1
> rexam$uni<-factor(rexam$uni, level=c(0:1),labels=c("DunceTown UNI2),"LHU"))
Error: unexpected symbol in "rexam$uni<-factor(rexam$uni, level=c(0:1),labels=c("DunceTown UNI2),"LHU"
> rexam$uni<-factor(rexam$uni, level=c(0:1),labels=c("DunceTown UNI2"),"LHU"))
Error: unexpected ')' in "rexam$uni<-factor(rexam$uni, level=c(0:1),labels=c("DunceTown UNI2"),"LHU"))"
> rexam$uni<-factor(rexam$uni, level=c(0:1),labels=c("DunceTown UNI2"),"LHU")
> rexam
    exam computer lectures numeracy             uni
1     18       54     75.0        7 DunceTown UNI21
2     30       47      8.5        1 DunceTown UNI21
3     40       58     69.5        6 DunceTown UNI21
4     30       37     67.0        6 DunceTown UNI21
5     40       53     44.5        2 DunceTown UNI21
6     15       48     76.5        8 DunceTown UNI21
7     36       49     70.0        3 DunceTown UNI21
8     40       49     18.5        7 DunceTown UNI21
9     63       45     43.5        4 DunceTown UNI21
10    31       62    100.0        6 DunceTown UNI21
11    22       67     48.0        3 DunceTown UNI21
12    47       62     10.5        3 DunceTown UNI21
13    38       38     57.5        1 DunceTown UNI21
14    34       37     61.5        8 DunceTown UNI21
15    54       54     54.0        4 DunceTown UNI21
16    35       48     71.0        5 DunceTown UNI21
17    33       48     14.0        9 DunceTown UNI21
18    38       42     55.5        3 DunceTown UNI21
19    29       57     72.5        2 DunceTown UNI21
20    36       55     38.0        4 DunceTown UNI21
21    59       41     40.0        1 DunceTown UNI21
22    31       42     85.5        4 DunceTown UNI21
23    34       48     52.0        4 DunceTown UNI21
24    28       44      8.0        3 DunceTown UNI21
25    50       42     62.5        6 DunceTown UNI21
26    59       42     70.5        3 DunceTown UNI21
27    33       40     98.0        4 DunceTown UNI21
28    57       52     34.5        2 DunceTown UNI21
29    25       56     62.5        3 DunceTown UNI21
30    53       54     91.5        2 DunceTown UNI21
31    65       52     97.5        7 DunceTown UNI21
32    47       55     31.5        2 DunceTown UNI21
33    28       61     80.5        7 DunceTown UNI21
34    43       56     66.5        4 DunceTown UNI21
35    47       52     57.5        2 DunceTown UNI21
36    60       49     67.0        4 DunceTown UNI21
37    45       43     48.5        4 DunceTown UNI21
38    22       51     61.0        4 DunceTown UNI21
39    39       49     76.0        3 DunceTown UNI21
40    43       56     30.5        2 DunceTown UNI21
41    66       41     45.0        2 DunceTown UNI21
42    36       67     21.5        4 DunceTown UNI21
43    26       35     72.5        5 DunceTown UNI21
44    58       49     66.0        8 DunceTown UNI21
45    53       62     90.5        6 DunceTown UNI21
46    37       66     48.5        4 DunceTown UNI21
47    48       48     62.0        3 DunceTown UNI21
48    32       46     49.0        1 DunceTown UNI21
49    42       46     60.0        5 DunceTown UNI21
50    34       58     21.0        5 DunceTown UNI21
51    56       30     84.5        7 DunceTown UNI22
52    76       48     51.0        8 DunceTown UNI22
53    72       54     58.5        5 DunceTown UNI22
54    77       44     42.0        6 DunceTown UNI22
55    77       54     65.5        9 DunceTown UNI22
56    66       58     56.0        7 DunceTown UNI22
57    62       59     71.5        2 DunceTown UNI22
58    86       54     48.5        5 DunceTown UNI22
59    97       35     84.5        5 DunceTown UNI22
60    72       56     47.5        2 DunceTown UNI22
61    69       53     54.0        3 DunceTown UNI22
62    87       56     70.5        6 DunceTown UNI22
63    88       65     73.0        5 DunceTown UNI22
64    72       50     79.0       12 DunceTown UNI22
65    75       39     82.5        8 DunceTown UNI22
66    74       40     74.5        3 DunceTown UNI22
67    68       50     85.0        2 DunceTown UNI22
68    81       57     69.5       10 DunceTown UNI22
69    77       39     42.0        7 DunceTown UNI22
70    71       41     43.0        8 DunceTown UNI22
71    60       48     46.5        6 DunceTown UNI22
72    74       46     36.5        8 DunceTown UNI22
73    80       54     72.5        4 DunceTown UNI22
74    68       55     62.0        4 DunceTown UNI22
75    64       27     81.5        5 DunceTown UNI22
76    94       57    100.0       13 DunceTown UNI22
77    65       73     27.0       14 DunceTown UNI22
78    72       54     59.5        2 DunceTown UNI22
79    75       54     75.0        3 DunceTown UNI22
80    92       50     34.0        2 DunceTown UNI22
81    89       56     78.0        4 DunceTown UNI22
82    83       57     80.5        5 DunceTown UNI22
83    80       54     84.0        2 DunceTown UNI22
84    95       55     37.5        4 DunceTown UNI22
85    99       54     57.0        3 DunceTown UNI22
86    80       52     66.0        8 DunceTown UNI22
87    81       67     59.0       10 DunceTown UNI22
88    75       44     68.5        5 DunceTown UNI22
89    78       57     88.5        3 DunceTown UNI22
90    65       54     55.0        8 DunceTown UNI22
91    80       51     86.0        5 DunceTown UNI22
92    86       55     68.5       10 DunceTown UNI22
93    73       51     64.0        7 DunceTown UNI22
94    81       45     12.5        1 DunceTown UNI22
95    69       59     52.5        7 DunceTown UNI22
96    60       43     37.0        5 DunceTown UNI22
97    69       57     46.0        2 DunceTown UNI22
98    71       50     97.5        2 DunceTown UNI22
99    82       50     70.5        4 DunceTown UNI22
100   58       47     78.0        3 DunceTown UNI22
> stat.desc(rexam, basic=FALSE,norm=TRUE)
                      exam   computer     lectures     numeracy uni
median        60.000000000 51.5000000  62.00000000 4.000000e+00  NA
mean          58.100000000 50.7100000  59.76500000 4.850000e+00  NA
SE.mean        2.131557026  0.8260035   2.16847774 2.705681e-01  NA
CI.mean.0.95   4.229471584  1.6389702   4.30273029 5.368657e-01  NA
var          454.353535354 68.2281818 470.22957071 7.320707e+00  NA
std.dev       21.315570256  8.2600352  21.68477740 2.705681e+00  NA
coef.var       0.366877285  0.1628877   0.36283406 5.578723e-01  NA
skewness      -0.103804261 -0.1690671  -0.40984494 9.327151e-01  NA
skew.2SE      -0.215022696 -0.3502098  -0.84896287 1.932049e+00  NA
kurtosis      -1.147658459  0.2208250  -0.28463568 7.634927e-01  NA
kurt.2SE      -1.199648507  0.2308286  -0.29752995 7.980797e-01  NA
normtest.W     0.961309486  0.9870552   0.97697914 9.243869e-01  NA
normtest.p     0.004991062  0.4413485   0.07712449 2.424008e-05  NA
> round(stat,rexam, basic=FALSE,norm=TRUE), digit=3
Error: unexpected ',' in "round(stat,rexam, basic=FALSE,norm=TRUE),"
> round(stat.desc(rexam, basic=FALSE,norm=TRUE), digit=3)
Error in Math.data.frame(list(exam = c(60, 58.1, 2.13155702563533, 4.22947158353875,  : 
  non-numeric variable(s) in data frame: uni
> by(rexam$exam,rexam$uni,stat.desc,basic=FALSE,norm=TRUE)
rexam$uni: DunceTown UNI21
      median         mean      SE.mean CI.mean.0.95          var      std.dev     coef.var 
  38.0000000   40.1800000    1.7803210    3.5776890  158.4771429   12.5887705    0.3133094 
    skewness     skew.2SE     kurtosis     kurt.2SE   normtest.W   normtest.p 
   0.2906760    0.4317816   -0.7230849   -0.5462122    0.9721662    0.2828984 
-------------------------------------------------------------------------- 
rexam$uni: DunceTown UNI22
      median         mean      SE.mean CI.mean.0.95          var      std.dev     coef.var 
  75.0000000   76.0200000    1.4432079    2.9002348  104.1424490   10.2050208    0.1342413 
    skewness     skew.2SE     kurtosis     kurt.2SE   normtest.W   normtest.p 
   0.2559866    0.3802527   -0.4609644   -0.3482086    0.9837115    0.7151182 
> DunceTown<-subset(rexam, rexam$uni=="DunceTown uni")
> DunceTown
[1] exam     computer lectures numeracy uni     
<0 rows> (or 0-length row.names)
> DunceTown<-subset(rexam, rexam$uni==("DunceTown uni"))
> DunceTown