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

  bipush 3
  newarray int
  dup
  bipush 0
  bipush 10
  iastore
  dup
  bipush 1
  bipush 20
  iastore
  dup
  bipush 2
  bipush 30
  iastore
  astore 1
  bipush 100
  istore 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload 1
  iload 2
  iaload
  invokevirtual java/io/PrintStream/println(I)V

  return
.end method
