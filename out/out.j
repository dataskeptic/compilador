.class public Main
.super java/lang/Object

; construtor padrão
.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

; método main
.method public static main([Ljava/lang/String;)V
  .limit stack 100
  .limit locals 20

  bipush 25
  istore 1
  ldc "Lemuel"
  astore 2
  iconst_1
  istore 3
  bipush 3
  newarray int
  dup
  bipush 0
  iconst_1
  iastore
  dup
  bipush 1
  iconst_2
  iastore
  dup
  bipush 2
  iconst_3
  iastore
  astore 4
  new java/util/HashMap
  dup
  invokespecial java/util/HashMap/<init>()V
  dup
  ldc "nome"
  ldc "Ana"
  invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  pop
  dup
  ldc "idade"
  bipush 30
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  pop
  astore 5
  aconst_null
  astore 6
  aconst_null
  astore 7
  iconst_5
  iconst_3
  iadd
  iconst_2
  imul
  istore 8
  iload 8
  bipush 10
  if_icmpgt GT_TRUE0
  iconst_0
  goto GT_END1
GT_TRUE0:
  iconst_1
GT_END1:
  iconst_1
  iand
  istore 9
  iconst_0
  ifeq NOT_ZERO2
  iconst_0
  goto NOT_END3
NOT_ZERO2:
  iconst_1
NOT_END3:
  istore 10
  bipush 10
  iconst_3
  irem
  istore 11
  iconst_0
  istore 12
  iconst_3
  istore 13
  iload 12
  bipush 10
  if_icmpge ELSE4
  iload 12
  iconst_2
  imul
  istore 14
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 14
  invokevirtual java/io/PrintStream/println(I)V
ELSE4:
  iconst_3
  bipush 7
  invokestatic Main/soma(II)I
  istore 15
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 15
  invokevirtual java/io/PrintStream/println(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Teste"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ldc "123"
  invokevirtual java/lang/String/length()I
  istore 16
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iconst_0
  invokevirtual java/io/PrintStream/println(I)V
  iconst_0
  istore 17
WHILE6:
  iload 17
  iconst_5
  if_icmpge ENDWHILE7
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 17
  invokevirtual java/io/PrintStream/println(I)V
  iload 17
  iconst_1
  iadd
  istore 17
  goto WHILE6
ENDWHILE7:
  iconst_0
  istore 18
FOR8:
  iload 18
  iconst_3
  if_icmpge ENDFOR9
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 18
  invokevirtual java/io/PrintStream/println(I)V
  iload 18
  iconst_1
  iadd
  istore 18
  goto FOR8
ENDFOR9:
  iload 17
  iconst_5
  if_icmpne ELSE10
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Fim da contagem"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  goto ENDIF11
ELSE10:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Contagem incompleta"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
ENDIF11:
  bipush 3
  newarray int
  dup
  bipush 0
  iconst_1
  iastore
  dup
  bipush 1
  ldc "texto"
  invokevirtual java/lang/String/length()I
  iastore
  dup
  bipush 2
  iconst_1
  iastore
  astore 19
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload 4
  iconst_0
  iaload
  invokevirtual java/io/PrintStream/println(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload 4
  iconst_2
  iaload
  invokevirtual java/io/PrintStream/println(I)V

  return
.end method

; função soma
.method public static soma(II)I
  .limit stack 100
  .limit locals 2

  iload 0
  iload 1
  iadd
  ireturn

  iconst_0
  ireturn
.end method
