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
  .limit locals 3

  iconst_5
  invokestatic Main/dobro(I)I
  istore 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  invokevirtual java/io/PrintStream/println(I)V
  bipush 10
  bipush 20
  invokestatic Main/soma(II)I
  istore 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 2
  invokevirtual java/io/PrintStream/println(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iconst_3
  iconst_4
  invokestatic Main/soma(II)I
  invokestatic Main/dobro(I)I
  invokevirtual java/io/PrintStream/println(I)V

  return
.end method

; função dobro
.method public static dobro(I)I
  .limit stack 100
  .limit locals 1

  iload 0
  iconst_2
  imul
  ireturn

  iconst_0
  ireturn
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
