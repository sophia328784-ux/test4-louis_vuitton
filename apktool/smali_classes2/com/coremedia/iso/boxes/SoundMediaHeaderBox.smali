.class public Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "SourceFile"


# static fields
.field public static final synthetic p:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic q:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public o:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "SoundMediaHeaderBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, ""

    const-string v5, "float"

    const-string v1, "getBalance"

    const-string v2, "com.coremedia.iso.boxes.SoundMediaHeaderBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, ""

    const-string v5, "java.lang.String"

    const-string v1, "toString"

    const-string v2, "com.coremedia.iso.boxes.SoundMediaHeaderBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "smhd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->l(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->e(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->o:F

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->o(Ljava/nio/ByteBuffer;)V

    iget p0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->o:F

    float-to-double v0, p0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->c(Ljava/nio/ByteBuffer;D)V

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/coremedia/iso/IsoTypeWriter;->d(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final f()J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->b(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->a()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->b(Lorg/aspectj/lang/JoinPoint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundMediaHeaderBox[balance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->b(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget p0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->o:F

    const-string v1, "]"

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
