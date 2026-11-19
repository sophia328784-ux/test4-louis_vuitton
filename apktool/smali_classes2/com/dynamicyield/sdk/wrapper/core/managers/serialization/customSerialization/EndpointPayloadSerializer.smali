.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v1, Liv;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Liv;-><init>(I)V

    const-string v2, "EndpointPayload"

    invoke-static {v2, v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "This class can\'t be deserialize"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_2
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_3
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method
