.class public final Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/modules/SerializersModuleCollector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;",
        "Lkotlinx/serialization/modules/SerializersModuleCollector;",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "configuration",
        "<init>",
        "(Lkotlinx/serialization/json/JsonConfiguration;)V",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lkotlinx/serialization/json/JsonConfiguration;->j:Ljava/lang/String;

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->a:Ljava/lang/String;

    iget-boolean v0, p1, Lkotlinx/serialization/json/JsonConfiguration;->i:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->b:Z

    iget-object p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->q:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V
    .locals 4

    invoke-interface {p3}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p3

    instance-of v0, p3, Lkotlinx/serialization/descriptors/PolymorphicKind;

    const-string v1, "Serializer for "

    if-nez v0, :cond_5

    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->a:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->c:Z

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$LIST;->a:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$MAP;->a:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, p3, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v3, :cond_4

    instance-of v3, p3, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez v3, :cond_4

    :goto_0
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p0, " has property \'"

    const-string p1, "\' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    const-string p3, "Polymorphic serializer for "

    invoke-static {p2, p0, v1, p1, p3}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p2}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p0

    const-string p1, " of kind "

    const-string p2, " cannot be serialized polymorphically with class discriminator."

    invoke-static {p0, p1, p3, p2, v1}, Lbm;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-interface {p2}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p0

    const-string p1, " can\'t be registered as a subclass for polymorphic serialization because its kind "

    const-string p2, " is not concrete. To work with multiple hierarchies, register it as a base class."

    invoke-static {p0, p1, p3, p2, v1}, Lbm;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    return-void
.end method

.method public final d(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    return-void
.end method

.method public final e(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
