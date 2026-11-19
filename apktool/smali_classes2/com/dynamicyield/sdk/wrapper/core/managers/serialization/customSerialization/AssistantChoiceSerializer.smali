.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/AssistantChoiceSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/AssistantChoiceSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;",
        "<init>",
        "()V",
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


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v1, Lu5;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lu5;-><init>(I)V

    const-string v2, "AssistantChoice"

    invoke-static {v2, v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/AssistantChoiceSerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/AssistantChoiceSerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->NO_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x0

    move-object v8, v0

    move-object v9, v1

    move v6, v2

    move-object v7, v3

    move-object v10, v4

    move-object v11, v10

    :goto_0
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v1

    if-eq v1, v2, :cond_8

    iget-object v3, v0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "variations"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation$Companion;

    invoke-virtual {v3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v3

    invoke-interface {p1, v0, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    goto :goto_0

    :sswitch_1
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object v8

    goto :goto_0

    :sswitch_2
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v6

    goto :goto_0

    :sswitch_4
    const-string v5, "groups"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->e(Lkotlin/jvm/internal/StringCompanionObject;)V

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v5, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, v0, v1, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    goto :goto_0

    :sswitch_5
    const-string v5, "decisionId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {p1, v0, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    instance-of v1, v0, Lkotlinx/serialization/json/JsonNull;

    if-eqz v1, :cond_6

    move-object v11, v4

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/JsonNull;

    if-eqz v1, :cond_7

    move-object v0, v4

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v11, v0

    goto/16 :goto_0

    :cond_8
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/AssistantChoiceSerializer;->a:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object p0, v9

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;

    iput-object v11, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    iget v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_2

    :cond_b
    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;

    invoke-direct/range {v5 .. v11}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x6b944de9 -> :sswitch_5
        -0x49c2262c -> :sswitch_4
        0xd1b -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x6896a0c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AssistantChoice does not support serialization"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
