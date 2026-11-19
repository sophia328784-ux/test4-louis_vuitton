.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

.field public static final b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;

    const-string v0, "DecisionType"

    sget-object v1, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->a:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->CUSTOM_JSON:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->RECS_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "RECS_DECISION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->QSR_PRODUCT_RECS:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "QSR_PRODUCT_RECS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->SORTING_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->SEARCH:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->ASSISTANT:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
