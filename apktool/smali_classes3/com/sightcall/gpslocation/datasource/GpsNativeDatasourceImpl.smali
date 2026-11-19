.class public final Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;
.super Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/gpslocation/datasource/GpsDatasource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001aB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J4\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00100\u00122\u0016\u0010\u0014\u001a\u0012\u0012\u0008\u0012\u00060\u0015j\u0002`\u0016\u0012\u0004\u0012\u00020\u00100\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/location/LocationManager;Landroid/content/Context;)V",
        "getLocationManager",
        "()Landroid/location/LocationManager;",
        "getContext",
        "()Landroid/content/Context;",
        "locationListener",
        "Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;",
        "startGps",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Landroid/location/Location;",
        "failure",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "stopGps",
        "checkPermission",
        "",
        "MyLocationListener",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final locationListener:Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p1}, Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationManager:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

    invoke-direct {p1}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationListener:Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

    return-void
.end method


# virtual methods
.method public checkPermission()Z
    .locals 0

    invoke-super {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;->checkPermissions()Z

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public startGps(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationListener:Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

    invoke-virtual {v0, p1}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;->setCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p1

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    iget-object v7, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationListener:Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sightcall/gpslocation/NoProviderFoundException;

    invoke-direct {p0}, Lcom/sightcall/gpslocation/NoProviderFoundException;-><init>()V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopGps()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;->locationListener:Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
