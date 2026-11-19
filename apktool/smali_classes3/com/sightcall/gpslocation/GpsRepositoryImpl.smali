.class public final Lcom/sightcall/gpslocation/GpsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/gpslocation/GpsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u00060\nj\u0002`\u000b0\u00080\u0007X\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/GpsRepositoryImpl;",
        "Lcom/sightcall/gpslocation/GpsRepository;",
        "gpsDataSource",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        "<init>",
        "(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V",
        "locations",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/sightcall/pratik/Result;",
        "Landroid/location/Location;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "getLocations$annotations",
        "()V",
        "getLocations",
        "()Lkotlinx/coroutines/flow/Flow;",
        "hasGpsFeature",
        "",
        "getHasGpsFeature",
        "()Z",
        "hasPermissions",
        "getHasPermissions",
        "isGpsEnabled",
        "stopGPS",
        "",
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
.field private final gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

.field private final locations:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/sightcall/pratik/Result<",
            "Landroid/location/Location;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    new-instance p1, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;-><init>(Lcom/sightcall/gpslocation/GpsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->d(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->locations:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getGpsDataSource$p(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    return-object p0
.end method

.method public static synthetic getLocations$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getHasGpsFeature()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->hasGpsFeature()Z

    move-result p0

    return p0
.end method

.method public getHasPermissions()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->checkPermission()Z

    move-result p0

    return p0
.end method

.method public getLocations()Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/sightcall/pratik/Result<",
            "Landroid/location/Location;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->locations:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public isGpsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->isGPSEnabled()Z

    move-result p0

    return p0
.end method

.method public stopGPS()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->gpsDataSource:Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->stopGps()V

    return-void
.end method
