.class public final Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageSent;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$DisplayNameSet;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$HostConnected;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u000e\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0006H\u00d6\u0081\u0004R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;",
        "",
        "items",
        "",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
        "sentAt",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "getItems",
        "()Ljava/util/List;",
        "getSentAt",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Item",
        "BaseItem",
        "UserConnected",
        "HostConnected",
        "UserJoined",
        "UserLeft",
        "CallFailed",
        "ConsentAccepted",
        "ConsentDeclined",
        "DisplayNameSet",
        "ChatMessageSent",
        "ChatMessageReceived",
        "CallEnded",
        "GpsReceived",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final sentAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sentAt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    return-object p0
.end method

.method public final getSentAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->items:Ljava/util/List;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->sentAt:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attributes(items="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sentAt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
