.class public Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
.super Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
.source "SourceFile"


# static fields
.field public static final synthetic v:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic w:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic x:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic y:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "ESDescriptorBox.java"

    const-class v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, ""

    const-string v5, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"

    const-string v1, "getEsDescriptor"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->v:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "esDescriptor"

    const-string v5, "void"

    const-string v1, "setEsDescriptor"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->w:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, "o"

    const-string v5, "boolean"

    const-string v1, "equals"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v3, "java.lang.Object"

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->x:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v4, ""

    const-string v5, "int"

    const-string v1, "hashCode"

    const-string v2, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->e(Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->y:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "esds"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->x:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {v0}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->y:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->b(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {v0}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object p0, p0, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
