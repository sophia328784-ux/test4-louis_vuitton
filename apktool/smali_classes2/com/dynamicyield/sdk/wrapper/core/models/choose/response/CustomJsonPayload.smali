.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
        "type",
        "",
        "data",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Ljava/lang/String;)V",
        "Companion",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/CustomJsonPayloadSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;-><init>()V

    return-void
.end method
