.class public final Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 -2\u00020\u0001:\u0001-B]\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\t\u0010$\u001a\u00020\u0008H\u00c6\u0003Jj\u0010%\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010&J\u0014\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010*\u001a\u00020+H\u00d6\u0081\u0004J\n\u0010,\u001a\u00020\u0008H\u00d6\u0081\u0004R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0011R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0015\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;",
        "",
        "longitude",
        "",
        "latitude",
        "accuracy",
        "altitude",
        "altitudeAccuracy",
        "",
        "timestamp",
        "",
        "requestId",
        "Ljava/util/UUID;",
        "status",
        "<init>",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)V",
        "getLongitude",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getLatitude",
        "getAccuracy",
        "getAltitude",
        "getAltitudeAccuracy",
        "()Ljava/lang/String;",
        "getTimestamp",
        "()J",
        "getRequestId",
        "()Ljava/util/UUID;",
        "getStatus",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;


# instance fields
.field private final accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accuracy"
    .end annotation
.end field

.field private final altitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "altitude"
    .end annotation
.end field

.field private final altitudeAccuracy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "altitudeAccuracy"
    .end annotation
.end field

.field private final latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private final longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private final requestId:Ljava/util/UUID;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private final timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->Companion:Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    .line 32
    iput-object p2, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    .line 33
    iput-object p3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    .line 34
    iput-object p4, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    .line 35
    iput-object p5, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    .line 36
    iput-wide p6, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    .line 37
    iput-object p8, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    .line 38
    iput-object p9, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p10, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    invoke-direct/range {p0 .. p9}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-wide p6, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p8, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    :cond_6
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_7

    iget-object p9, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    :cond_7
    move-object p10, p8

    move-object p11, p9

    move-wide p8, p6

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    return-object p0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    return-wide v0
.end method

.method public final component7()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;
    .locals 0

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    invoke-direct/range {p0 .. p9}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    iget-wide v5, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    iget-object v3, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAccuracy()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    return-object p0
.end method

.method public final getAltitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getAltitudeAccuracy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    return-object p0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getRequestId()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-wide v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    invoke-static {v0, v2, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->longitude:Ljava/lang/Double;

    iget-object v1, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->latitude:Ljava/lang/Double;

    iget-object v2, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->accuracy:Ljava/lang/Double;

    iget-object v3, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitude:Ljava/lang/Double;

    iget-object v4, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->altitudeAccuracy:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->timestamp:J

    iget-object v7, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->requestId:Ljava/util/UUID;

    iget-object p0, p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->status:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GeolocationResponse(longitude="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", latitude="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", accuracy="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", altitude="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", altitudeAccuracy="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
