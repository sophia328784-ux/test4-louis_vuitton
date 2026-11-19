.class public final Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;",
        "",
        "requestId",
        "",
        "expirationTimeout",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "getRequestId",
        "()Ljava/lang/String;",
        "getExpirationTimeout",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Constant",
        "GpsLocation_release"
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
.field public static final Constant:Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;

.field public static final defaultTimeout:J = 0xea60L


# instance fields
.field private final expirationTimeout:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationTimeout"
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->Constant:Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->copy(Ljava/lang/String;Ljava/lang/Long;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    iget-object p1, p1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExpirationTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->requestId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->expirationTimeout:Ljava/lang/Long;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeoLocationRequest(requestId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expirationTimeout="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
