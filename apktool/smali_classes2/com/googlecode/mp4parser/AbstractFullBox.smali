.class public abstract Lcom/googlecode/mp4parser/AbstractFullBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/FullBox;


# static fields
.field public static final synthetic m:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic n:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "AbstractFullBox.java"

    const-class v2, Lcom/googlecode/mp4parser/AbstractFullBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "version"

    const-string v5, "void"

    const-string v1, "setVersion"

    const-string v2, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v3, "int"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/AbstractFullBox;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "flags"

    const-string v5, "void"

    const-string v1, "setFlags"

    const-string v2, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v3, "int"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/AbstractFullBox;->n:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->l(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->o(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final k()I
    .locals 1

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->i()V

    :cond_0
    iget p0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->k:I

    return p0
.end method

.method public final l(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->j(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->k:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->g(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    return-void
.end method

.method public final m(I)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lcom/googlecode/mp4parser/AbstractFullBox;->n:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {v0}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    return-void
.end method

.method public final n()V
    .locals 3

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/googlecode/mp4parser/AbstractFullBox;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {v0}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput v1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->k:I

    return-void
.end method

.method public final o(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->k:I

    invoke-static {v0, p1}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    iget p0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    invoke-static {p0, p1}, Lcom/coremedia/iso/IsoTypeWriter;->e(ILjava/nio/ByteBuffer;)V

    return-void
.end method
