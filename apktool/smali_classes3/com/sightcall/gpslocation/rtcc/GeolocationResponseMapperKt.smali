.class public final Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u001a\u0018\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\n"
    }
    d2 = {
        "toGeolocationResponse",
        "",
        "Landroid/location/Location;",
        "gpsLocationStatus",
        "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;",
        "date",
        "",
        "requestId",
        "locationResponseStatus",
        "geolocationStatus",
        "GpsLocation_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    move-object v9, p1

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x1f

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v1, p0, p1, p1, v0}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson$default(Ljava/lang/Object;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toGeolocationResponse(Landroid/location/Location;Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;JLjava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, p0

    :goto_0
    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    const/4 v7, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v13}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, p1, v0, v0, p0}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson$default(Ljava/lang/Object;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
