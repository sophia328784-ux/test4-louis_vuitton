.class public final Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;
.super Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB!\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B?\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;",
        "",
        "",
        "variations",
        "",
        "slotId",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "seen0",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;",
        "type",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lnw0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnw0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lnw0;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lnw0;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p5, :cond_2

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    :goto_0
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->SLOT_CLICK:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    return-void

    :cond_1
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    return-void

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    .line 46
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->SLOT_CLICK:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotClickEngagement(variations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->b:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
