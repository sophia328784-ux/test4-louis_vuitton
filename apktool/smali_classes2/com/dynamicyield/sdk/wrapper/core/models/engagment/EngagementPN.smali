.class public final Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;
.super Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B/\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;",
        "trackingData",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;)V",
        "",
        "seen0",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;",
        "type",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lew;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lew;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p4, :cond_1

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;->PN_CLICK:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    .line 35
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;->PN_CLICK:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngagementPN(trackingData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
