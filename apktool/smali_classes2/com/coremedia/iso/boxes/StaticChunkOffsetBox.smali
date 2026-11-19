.class public Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
.super Lcom/coremedia/iso/boxes/ChunkOffsetBox;
.source "SourceFile"


# static fields
.field public static final synthetic q:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic r:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public p:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "StaticChunkOffsetBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, ""

    const-string v5, "[J"

    const-string v1, "getChunkOffsets"

    const-string v2, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "chunkOffsets"

    const-string v5, "void"

    const-string v1, "setChunkOffsets"

    const-string v2, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v3, "[J"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "stco"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->l(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->o(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    array-length v0, v0

    int-to-long v0, v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-wide v2, p0, v1

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    iget-object p0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    return-wide v0
.end method

.method public final p()[J
    .locals 1

    sget-object v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->b(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {v0}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object p0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    return-object p0
.end method
