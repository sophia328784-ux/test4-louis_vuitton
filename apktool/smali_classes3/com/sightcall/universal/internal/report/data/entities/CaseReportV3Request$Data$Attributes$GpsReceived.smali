.class public final Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;
.super Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpsReceived"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003Jr\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010%J\u0014\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0083\u0004J\n\u0010*\u001a\u00020+H\u00d6\u0081\u0004J\n\u0010,\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0014R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0017\u0010\u0014R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0018\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\u00a8\u0006-"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
        "name",
        "",
        "userRole",
        "performedAt",
        "gpsLatitude",
        "",
        "gpsLongitude",
        "gpsAccuracy",
        "gpsAltitude",
        "gpsAltitudeAccuracy",
        "gpsPerformedAt",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getUserRole",
        "getPerformedAt",
        "getGpsLatitude",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getGpsLongitude",
        "getGpsAccuracy",
        "getGpsAltitude",
        "getGpsAltitudeAccuracy",
        "getGpsPerformedAt",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final gpsAccuracy:Ljava/lang/Double;

.field private final gpsAltitude:Ljava/lang/Double;

.field private final gpsAltitudeAccuracy:Ljava/lang/String;

.field private final gpsLatitude:Ljava/lang/Double;

.field private final gpsLongitude:Ljava/lang/Double;

.field private final gpsPerformedAt:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final performedAt:Ljava/lang/String;

.field private final userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p9}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    iput-object p5, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    iput-object p6, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    iput-object p7, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    iput-object p8, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    iput-object p9, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component6()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    return-object p0
.end method

.method public final component7()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    invoke-direct/range {p0 .. p9}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getGpsAccuracy()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    return-object p0
.end method

.method public final getGpsAltitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getGpsAltitudeAccuracy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    return-object p0
.end method

.method public final getGpsLatitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getGpsLongitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getGpsPerformedAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPerformedAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    return-object p0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->userRole:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->performedAt:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLatitude:Ljava/lang/Double;

    iget-object v4, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsLongitude:Ljava/lang/Double;

    iget-object v5, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAccuracy:Ljava/lang/Double;

    iget-object v6, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitude:Ljava/lang/Double;

    iget-object v7, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsAltitudeAccuracy:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;->gpsPerformedAt:Ljava/lang/String;

    const-string v8, ", userRole="

    const-string v9, ", performedAt="

    const-string v10, "GpsReceived(name="

    invoke-static {v10, v0, v8, v1, v9}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsAltitudeAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsPerformedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
