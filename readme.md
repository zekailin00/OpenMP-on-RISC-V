## OpenMP running on X86

```
$ g++ -fopenmp main.cpp -o bin
$ ./bin 
Hello World... from thread = 10
Hello World... from thread = 9
Hello World... from thread = 22
Hello World... from thread = 3
Hello World... from thread = 13
Hello World... from thread = 14
Hello World... from thread = 19
Hello World... from thread = 18
Hello World... from thread = 4
Hello World... from thread = 5
Hello World... from thread = 0
Hello World... from thread = 6
Hello World... from thread = 1
Hello World... from thread = 8
Hello World... from thread = 7
Hello World... from thread = 2
Hello World... from thread = 17
Hello World... from thread = 23
Hello World... from thread = 21
Hello World... from thread = 11
Hello World... from thread = 16
Hello World... from thread = 15
Hello World... from thread = 20
Hello World... from thread = 12
Hello
```

## Dump file RISC-V binary

```
0001235a <main>:
   1235a:	1141                	add	sp,sp,-16
   1235c:	c606                	sw	ra,12(sp)
   1235e:	c422                	sw	s0,8(sp)
   12360:	0800                	add	s0,sp,16
   12362:	4681                	li	a3,0
   12364:	4601                	li	a2,0
   12366:	4581                	li	a1,0
   12368:	67c9                	lui	a5,0x12
   1236a:	38a78513          	add	a0,a5,906 # 1238a <main._omp_fn.0>
   1236e:	612080ef          	jal	1a980 <GOMP_parallel>
   12372:	000747b7          	lui	a5,0x74
   12376:	5b478513          	add	a0,a5,1460 # 745b4 <_IO_stdin_used+0x4>
   1237a:	790280ef          	jal	3ab0a <_IO_puts>
   1237e:	4781                	li	a5,0
   12380:	853e                	mv	a0,a5
   12382:	40b2                	lw	ra,12(sp)
   12384:	4422                	lw	s0,8(sp)
   12386:	0141                	add	sp,sp,16
   12388:	8082                	ret

```