.class public final synthetic Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchPayload"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v4, v1

    move-object v5, v2

    move-object v6, v5

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_0

    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;

    invoke-interface {p1, p0, v0, v7, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lb21;->l(I)V

    return-object v2

    :cond_1
    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

    invoke-interface {p1, p0, v1, v7, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;-><init>(ILcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object p0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;

    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 2

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$$serializer;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method
