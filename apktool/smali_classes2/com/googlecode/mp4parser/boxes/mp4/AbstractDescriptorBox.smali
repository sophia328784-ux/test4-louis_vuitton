.class public Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final p:Ljava/util/logging/Logger;

.field public static final synthetic q:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic r:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic s:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic t:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic u:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public o:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "AbstractDescriptorBox.java"

    const-class v6, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    invoke-direct {v0, v1, v6}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, ""

    const-string v5, "java.nio.ByteBuffer"

    const-string v1, "getData"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, ""

    const-string v5, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"

    const-string v1, "getDescriptor"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, ""

    const-string v5, "java.lang.String"

    const-string v1, "getDescriptorAsString"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->s:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "descriptor"

    const-string v5, "void"

    const-string v1, "setDescriptor"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->t:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "data"

    const-string v5, "void"

    const-string v1, "setData"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox"

    const-string v3, "java.nio.ByteBuffer"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->u:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->p:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    const-string v0, "Error parsing ObjectDescriptor"

    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->p:Ljava/util/logging/Logger;

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->l(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    const/4 p1, -0x1

    invoke-static {p1, p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->o(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final f()J
    .locals 2

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    int-to-long v0, p0

    return-wide v0
.end method
