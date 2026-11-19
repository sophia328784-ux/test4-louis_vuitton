.class public abstract Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0005\u0003\u0004\u0005\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;",
        "",
        "Companion",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EngagementSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
