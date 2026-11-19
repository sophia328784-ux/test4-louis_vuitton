.class public final Landroidx/savedstate/serialization/SavedStateEncoder;
.super Lkotlinx/serialization/encoding/AbstractEncoder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/savedstate/serialization/SavedStateEncoder;",
        "Lkotlinx/serialization/encoding/AbstractEncoder;",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "savedState",
        "Landroidx/savedstate/serialization/SavedStateConfiguration;",
        "configuration",
        "<init>",
        "(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V",
        "savedstate"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Landroidx/savedstate/serialization/SavedStateConfiguration;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractEncoder;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    const-string p1, ""

    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    return-void
.end method

.method public static H(Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlinx/serialization/descriptors/SerialDescriptor;Landroid/os/Bundle;)V
    .locals 2

    iget p0, p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->b:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "type"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->a:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateWriter;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Landroidx/savedstate/SavedStateWriter;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final F(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    iget p1, p1, Landroidx/savedstate/serialization/SavedStateConfiguration;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "type"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Landroidx/savedstate/SavedStateReader;->k(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SavedStateEncoder for "

    const-string v0, " has property \'"

    invoke-static {p2, p1, v0}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    const-string p2, "\' that conflicts with the class discriminator. You can rename a property with @SerialName annotation."

    invoke-static {p0, p2, p1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->a:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    if-eqz v0, :cond_0

    invoke-static {v2, p1, v1}, Landroidx/savedstate/serialization/SavedStateEncoder;->H(Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlinx/serialization/descriptors/SerialDescriptor;Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlin/Pair;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Landroidx/savedstate/SavedStateWriter;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v2, p1, v0}, Landroidx/savedstate/serialization/SavedStateEncoder;->H(Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlinx/serialization/descriptors/SerialDescriptor;Landroid/os/Bundle;)V

    new-instance p0, Landroidx/savedstate/serialization/SavedStateEncoder;

    invoke-direct {p0, v0, v2}, Landroidx/savedstate/serialization/SavedStateEncoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    return-object p0
.end method

.method public final d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->a:Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p0, p2}, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;->b:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroidx/savedstate/serialization/serializers/ParcelableSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Landroid/os/Parcelable;)V

    return-void

    :cond_1
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->c:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Landroidx/savedstate/serialization/serializers/DefaultJavaSerializableSerializer;->b:Landroidx/savedstate/serialization/serializers/DefaultJavaSerializableSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p1, p0, p2}, Landroidx/savedstate/serialization/serializers/JavaSerializableSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Ljava/io/Serializable;)V

    return-void

    :cond_2
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->d:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Landroidx/savedstate/serialization/serializers/IBinderSerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/savedstate/serialization/serializers/IBinderSerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/savedstate/serialization/serializers/BuiltInSerializerKt;->b(Ljava/lang/String;Lkotlinx/serialization/encoding/Encoder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_4
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->i:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->j:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6

    :cond_5
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->k:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->l:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_5

    :cond_6
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->e:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->f:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->g:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->h:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_2

    :cond_8
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->m:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->n:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->o:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->a:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Landroidx/savedstate/SavedStateWriterKt;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_a
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, v2}, Landroidx/savedstate/SavedStateWriter;->e(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :cond_b
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->c:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void

    :cond_c
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->d:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [C

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-void

    :cond_d
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->e:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [D

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void

    :cond_e
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->f:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_f
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->g:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    :cond_10
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->h:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_11
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->i:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/SerializationStrategy;->c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void

    :cond_13
    :goto_1
    sget-object p1, Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;->a:Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p1, p0, p2}, Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;->g(Lkotlinx/serialization/encoding/Encoder;Landroid/util/SparseArray;)V

    return-void

    :cond_14
    :goto_2
    sget-object p1, Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;->a:Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Ljava/util/List;)V

    return-void

    :cond_15
    :goto_3
    sget-object p1, Landroidx/savedstate/serialization/serializers/ParcelableArraySerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_4

    :cond_16
    sget-object p1, Landroidx/savedstate/serialization/serializers/ParcelableArraySerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/savedstate/serialization/serializers/BuiltInSerializerKt;->b(Ljava/lang/String;Lkotlinx/serialization/encoding/Encoder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    :goto_4
    return-void

    :cond_17
    :goto_5
    sget-object p1, Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;->a:Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Ljava/util/List;)V

    return-void

    :cond_18
    :goto_6
    sget-object p1, Landroidx/savedstate/serialization/serializers/CharSequenceArraySerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_19
    sget-object p1, Landroidx/savedstate/serialization/serializers/CharSequenceArraySerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/savedstate/serialization/serializers/BuiltInSerializerKt;->b(Ljava/lang/String;Lkotlinx/serialization/encoding/Encoder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public final e(D)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public final g(B)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroidx/savedstate/SavedStateWriter;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Landroidx/savedstate/SavedStateWriter;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final n(J)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    iget-boolean p0, p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->c:Z

    return p0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q(S)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroidx/savedstate/SavedStateWriter;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final v(F)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public final w(C)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public final z(I)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateEncoder;->c:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroidx/savedstate/SavedStateWriter;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
