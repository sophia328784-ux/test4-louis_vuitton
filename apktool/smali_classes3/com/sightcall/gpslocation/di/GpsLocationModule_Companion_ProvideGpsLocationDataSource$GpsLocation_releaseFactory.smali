.class public final Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final holderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/di/Holder;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/location/LocationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/location/LocationManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/di/Holder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->locationManagerProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->holderProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/location/LocationManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/di/Holder;",
            ">;)",
            "Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideGpsLocationDataSource$GpsLocation_release(Landroid/content/Context;Landroid/location/LocationManager;Lcom/sightcall/gpslocation/di/Holder;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;
    .locals 1

    sget-object v0, Lcom/sightcall/gpslocation/di/GpsLocationModule;->Companion:Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;->provideGpsLocationDataSource$GpsLocation_release(Landroid/content/Context;Landroid/location/LocationManager;Lcom/sightcall/gpslocation/di/Holder;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/gpslocation/datasource/GpsDatasource;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->locationManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->holderProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/gpslocation/di/Holder;

    invoke-static {v0, v1, p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->provideGpsLocationDataSource$GpsLocation_release(Landroid/content/Context;Landroid/location/LocationManager;Lcom/sightcall/gpslocation/di/Holder;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->get()Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    return-object p0
.end method
