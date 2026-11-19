.class public final Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "BookingFormStepDto"

    invoke-static {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->h()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/serialization/json/JsonNull;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    const-string v2, ""

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-nez v1, :cond_3

    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :cond_3
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingStepType;->Companion:Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/data/dto/booking/BookingStepType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    invoke-virtual {v6}, Lcom/vuitton/android/data/dto/booking/BookingStepType;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    check-cast v4, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    if-nez v4, :cond_6

    sget-object v4, Lcom/vuitton/android/data/dto/booking/BookingStepType;->UNKNOWN:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    :cond_6
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_8
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    goto :goto_4

    :cond_a
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    goto :goto_4

    :cond_b
    sget-object v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    :goto_4
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    if-eqz v4, :cond_d

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    instance-of v6, v4, Lkotlinx/serialization/json/JsonNull;

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_d
    :goto_5
    move-object v4, v0

    :goto_6
    if-nez v4, :cond_e

    move-object v4, v2

    :cond_e
    const-string v6, "title"

    invoke-virtual {p0, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/JsonElement;

    if-eqz v6, :cond_10

    invoke-static {v6}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v6

    instance-of v7, v6, Lkotlinx/serialization/json/JsonNull;

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_10
    :goto_7
    move-object v6, v0

    :goto_8
    if-nez v6, :cond_11

    move-object v6, v2

    :cond_11
    const-string v2, "subtitle"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_13

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    instance-of v7, v2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v7, :cond_12

    move-object v2, v0

    goto :goto_9

    :cond_12
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v7, v2

    goto :goto_a

    :cond_13
    move-object v7, v0

    :goto_a
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_15

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    instance-of v8, v2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v8, :cond_14

    move-object v2, v0

    goto :goto_b

    :cond_14
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v2

    :goto_b
    move-object v8, v2

    goto :goto_c

    :cond_15
    move-object v8, v0

    :goto_c
    const-string v2, "disclaimer"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_16

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->A()Lkotlinx/serialization/json/Json;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto$Companion;

    invoke-virtual {v10}, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-static {v9, v2, v10}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->a(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;

    move-object v9, v2

    goto :goto_d

    :cond_16
    move-object v9, v0

    :goto_d
    const-string v2, "mandatory"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    const/4 v10, 0x0

    if-eqz v2, :cond_17

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/StringOpsKt;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_e

    :cond_17
    move v2, v10

    :goto_e
    const-string v11, "updateFormAfterEditing"

    invoke-virtual {p0, v11}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/json/JsonElement;

    if-eqz v11, :cond_18

    invoke-static {v11}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v11

    invoke-virtual {v11}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlinx/serialization/json/internal/StringOpsKt;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_18
    move v11, v10

    const-string v10, "disruptedStepsAfterEditing"

    invoke-virtual {p0, v10}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    if-eqz p0, :cond_19

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->A()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v10, v12}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0, p0, v10}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->a(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_19
    if-nez v0, :cond_1a

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1a
    move-object v12, v0

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->A()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v3}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->a(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;

    new-instance v3, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;

    move v10, v2

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;ZZLjava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;)V

    return-object v3

    :cond_1b
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Serialization not implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
