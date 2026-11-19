.class public final Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;
.super Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/gpslocation/datasource/GpsDatasource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ4\u0010\u0015\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00160\u00182\u0016\u0010\u001a\u001a\u0012\u0012\u0008\u0012\u00060\u001bj\u0002`\u001c\u0012\u0004\u0012\u00020\u00160\u0018H\u0017J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;",
        "context",
        "Landroid/content/Context;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "fusedLocationManager",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "<init>",
        "(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/android/gms/location/FusedLocationProviderClient;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getLocationManager",
        "()Landroid/location/LocationManager;",
        "locationCallback",
        "Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;",
        "locationRequest",
        "Lcom/google/android/gms/location/LocationRequest;",
        "locationSettingsRequest",
        "Lcom/google/android/gms/location/LocationSettingsRequest;",
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
        "MyLocationCallback",
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

.field private final fusedLocationManager:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final locationCallback:Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private final locationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationManager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->fusedLocationManager:Lcom/google/android/gms/location/FusedLocationProviderClient;

    new-instance p1, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

    invoke-direct {p1, p0}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;-><init>(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;)V

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationCallback:Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

    new-instance p1, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 p2, 0x64

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    new-instance p2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    iget-object p3, p2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    new-instance p1, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-boolean p2, p2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/ArrayList;ZZ)V

    iput-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->startGps$lambda$0(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Landroid/location/Location;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->startGps$lambda$0$0(Lkotlin/jvm/functions/Function1;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->startGps$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lgv;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->startGps$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lk0;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->startGps$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method private static final startGps$lambda$0(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;
    .locals 2

    iget-object p2, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->fusedLocationManager:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->c()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lk0;

    const/16 v1, 0xf

    invoke-direct {v0, p1, v1}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance p1, Lfw;

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->fusedLocationManager:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object p2, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationCallback:Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {p1, p2, p0, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startGps$lambda$0$0(Lkotlin/jvm/functions/Function1;Landroid/location/Location;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final startGps$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final startGps$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final startGps$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {v0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    instance-of v0, p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public startGps(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3
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

    iget-object v0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationCallback:Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

    invoke-virtual {v0, p1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;->setCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/gms/location/LocationServices;->a:I

    new-instance v1, Lcom/google/android/gms/internal/location/zzdb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/location/zzdb;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/location/zzdb;->j(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lgv;

    const/16 v2, 0x13

    invoke-direct {v1, p0, p1, v2}, Lgv;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    new-instance p0, Lfw;

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p0, Llr;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Llr;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public stopGps()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->fusedLocationManager:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object p0, p0, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->locationCallback:Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;

    invoke-interface {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->b(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
