.class public final Landroidx/savedstate/serialization/SavedStateDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/savedstate/serialization/SavedStateDecoder;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
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

.field public d:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    const-string p1, ""

    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->a:Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;

    invoke-static {p0}, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;->b:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    invoke-virtual {v0, p0}, Landroidx/savedstate/serialization/serializers/ParcelableSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Landroid/os/Parcelable;

    move-result-object v0

    goto/16 :goto_4

    :cond_1
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->c:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroidx/savedstate/serialization/serializers/DefaultJavaSerializableSerializer;->b:Landroidx/savedstate/serialization/serializers/DefaultJavaSerializableSerializer;

    invoke-virtual {v0, p0}, Landroidx/savedstate/serialization/serializers/JavaSerializableSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Ljava/io/Serializable;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->d:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Landroidx/savedstate/serialization/serializers/IBinderSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Landroid/os/IBinder;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->i:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->j:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->k:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->l:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    :cond_5
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->e:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Landroidx/savedstate/serialization/serializers/ParcelableArraySerializer;->f(Lkotlinx/serialization/encoding/Decoder;)[Landroid/os/Parcelable;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/serialization/EmptyArrayDecoder;->a:Landroidx/savedstate/serialization/EmptyArrayDecoder;

    invoke-interface {p1, v1}, Lkotlinx/serialization/DeserializationStrategy;->b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    array-length v3, v0

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->f:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Landroidx/savedstate/serialization/serializers/ParcelableArraySerializer;->f(Lkotlinx/serialization/encoding/Decoder;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_4

    :cond_7
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->g:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->h:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->m:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->n:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->o:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    :goto_0
    sget-object v0, Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;->a:Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;

    invoke-virtual {v0, p0}, Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_4

    :cond_b
    :goto_1
    sget-object v0, Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;->a:Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;

    invoke-virtual {v0, p0}, Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    :cond_c
    :goto_2
    sget-object v0, Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;->a:Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;

    invoke-virtual {v0, p0}, Landroidx/savedstate/serialization/serializers/CharSequenceListSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    :cond_d
    :goto_3
    invoke-static {p0}, Landroidx/savedstate/serialization/serializers/CharSequenceArraySerializer;->f(Lkotlinx/serialization/encoding/Decoder;)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->a:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_10
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Landroidx/savedstate/SavedStateReader;->m(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->c:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    :cond_12
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_13
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->d:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    if-eqz p1, :cond_14

    return-object p1

    :cond_14
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_15
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->e:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    :cond_16
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_17
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->f:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    :cond_18
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_19
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->g:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Landroidx/savedstate/SavedStateReader;->h(Ljava/lang/String;Landroid/os/Bundle;)[I

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->h:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_1b

    return-object p1

    :cond_1b
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v2

    :cond_1c
    sget-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->i:Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Landroidx/savedstate/SavedStateReader;->l(Ljava/lang/String;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final E()B
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->g(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public final a()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->a:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/savedstate/SavedStateReader;->j(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroidx/savedstate/serialization/SavedStateDecoder;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->b:Landroidx/savedstate/serialization/SavedStateConfiguration;

    invoke-direct {v0, p1, p0}, Landroidx/savedstate/serialization/SavedStateDecoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    return-object v0
.end method

.method public final e(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateReader;->g(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->g(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->i(Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$LIST;->a:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->a:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v0

    :goto_1
    iget v2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    invoke-interface {p1, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/savedstate/SavedStateReader;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    goto :goto_1

    :cond_2
    iput-object v2, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    iget p1, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->d:I

    return p1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final p()S
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->g(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public final q()F
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->f(Ljava/lang/String;Landroid/os/Bundle;)F

    move-result p0

    return p0
.end method

.method public final s()D
    .locals 2

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->e(Ljava/lang/String;Landroid/os/Bundle;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->d(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final v()C
    .locals 3

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v1

    if-nez v1, :cond_1

    const v2, 0xffff

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->k(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/savedstate/SavedStateReader;->n(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
