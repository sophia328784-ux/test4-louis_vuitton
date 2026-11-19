.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v2, Lkm;

    invoke-direct {v2, v0}, Lkm;-><init>(I)V

    const-string v0, "Choice"

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;

    iput-object p0, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsData;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    iget v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->f:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsData;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsSlot;

    iget v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingData;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsSlot;

    iget v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    iget v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    iget v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    instance-of v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget;

    iget-object v2, v2, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    iget v4, v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->a:Ljava/lang/Integer;

    goto :goto_5

    :cond_7
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->NO_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, -0x1

    const-string v5, ""

    move-object v10, v2

    move-object v2, v3

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move v14, v4

    move-object v12, v5

    const/16 p0, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v5, v11

    :goto_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    if-eq v6, v4, :cond_8

    iget-object v4, v0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    move-object/from16 v16, v10

    goto/16 :goto_3

    :sswitch_0
    move-object/from16 v16, v10

    const-string v10, "variations"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer$WhenMappings;->a:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object p0

    :pswitch_0
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    move-object/from16 v10, p0

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/List;

    :goto_1
    move-object/from16 v10, v16

    :goto_2
    const/4 v4, -0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v10, p0

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    goto :goto_1

    :pswitch_2
    move-object/from16 v10, p0

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    goto :goto_1

    :pswitch_3
    move-object/from16 v10, p0

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    goto :goto_1

    :pswitch_4
    move-object/from16 v10, p0

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation$Companion;

    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v2

    invoke-interface {v1, v0, v6, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :pswitch_5
    move-object/from16 v10, p0

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation$Companion;

    invoke-virtual {v3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v3

    invoke-interface {v1, v0, v6, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_1

    :pswitch_6
    move-object/from16 v10, p0

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v4

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    :goto_3
    move-object/from16 v10, v16

    :goto_4
    const/16 p0, 0x0

    goto :goto_2

    :sswitch_1
    move-object/from16 v16, v10

    const-string v10, "type"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object v10

    goto :goto_4

    :sswitch_2
    move-object/from16 v16, v10

    const-string v10, "name"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :sswitch_3
    move-object/from16 v16, v10

    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v14

    goto :goto_3

    :sswitch_4
    move-object/from16 v16, v10

    const-string v10, "groups"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->e(Lkotlin/jvm/internal/StringCompanionObject;)V

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    new-instance v10, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v10, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x0

    invoke-interface {v1, v0, v6, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/util/List;

    move-object/from16 p0, v4

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v16, v10

    const-string v10, "decisionId"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_5
    goto :goto_3

    :cond_5
    sget-object v4, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v10, 0x0

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    instance-of v6, v4, Lkotlinx/serialization/json/JsonNull;

    if-eqz v6, :cond_6

    :goto_6
    const/4 v10, 0x0

    goto :goto_7

    :cond_6
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    instance-of v6, v4, Lkotlinx/serialization/json/JsonNull;

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v10

    :goto_7
    move-object v13, v10

    goto/16 :goto_3

    :cond_8
    move-object/from16 v16, v10

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer$WhenMappings;->a:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    const/4 v10, 0x0

    return-object v10

    :pswitch_7
    invoke-static {v13, v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;

    move-object v11, v9

    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_8
    move-object v9, v12

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v8}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;

    move-object v11, v8

    move v8, v14

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_9
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    move-object v11, v7

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_a
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_b
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;

    move-object v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_c
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;

    move-object v11, v2

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_d
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;

    move-object v11, v3

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    :pswitch_e
    move-object v9, v12

    move v8, v14

    move-object v12, v15

    move-object/from16 v10, v16

    invoke-static {v13, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->f(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice;

    invoke-direct/range {v7 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b944de9 -> :sswitch_5
        -0x49c2262c -> :sswitch_4
        0xd1b -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x6896a0c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "This class ChoiceSerializer can\'t be deserialize"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
