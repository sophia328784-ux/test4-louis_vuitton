.class public final Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/gpslocation/di/GpsLocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000cJ\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;",
        "",
        "<init>",
        "()V",
        "provideGpsLocationDataSource",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        "context",
        "Landroid/content/Context;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "holder",
        "Lcom/sightcall/gpslocation/di/Holder;",
        "provideGpsLocationDataSource$GpsLocation_release",
        "provideGmsLocationManager",
        "provideLocationManager",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideGmsLocationManager(Landroid/content/Context;)Lcom/sightcall/gpslocation/di/Holder;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/gpslocation/di/Holder;

    sget v0, Lcom/google/android/gms/location/LocationServices;->a:I

    new-instance v0, Lcom/google/android/gms/internal/location/zzcg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/location/zzcg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sightcall/gpslocation/di/Holder;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    return-object p0
.end method

.method public final provideGpsLocationDataSource$GpsLocation_release(Landroid/content/Context;Landroid/location/LocationManager;Lcom/sightcall/gpslocation/di/Holder;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/common/GoogleApiAvailability;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;

    invoke-virtual {p3}, Lcom/sightcall/gpslocation/di/Holder;->getFusedLocationManager()Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;

    invoke-direct {p0, p2, p1}, Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;-><init>(Landroid/location/LocationManager;Landroid/content/Context;)V

    return-object p0
.end method

.method public final provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "location"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method
