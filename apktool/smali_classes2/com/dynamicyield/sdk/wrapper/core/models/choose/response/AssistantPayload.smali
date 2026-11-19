.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
        "type",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;",
        "data",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$Companion;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-ne v0, p4, :cond_0

    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;

    return-void
.end method
