require "debug"

data = DATA.readlines.map(&:chomp).map(&:to_i)
data << 0

result = data.sort.each_cons(2).each_with_object([]) do |(a, b), array|
  array << b - a
end

one = result.count(1)
three = result.count(3) + 1

puts one * three
__END__
165
78
151
15
138
97
152
64
4
111
7
90
91
156
73
113
93
135
100
70
119
54
80
170
139
33
123
92
86
57
39
173
22
106
166
142
53
96
158
63
51
81
46
36
126
59
98
2
16
141
120
35
140
99
121
122
58
1
60
47
10
87
103
42
132
17
75
12
29
112
3
145
131
18
153
74
161
174
68
34
21
24
85
164
52
69
65
45
109
148
11
23
129
84
167
27
28
116
110
79
48
32
157
130
