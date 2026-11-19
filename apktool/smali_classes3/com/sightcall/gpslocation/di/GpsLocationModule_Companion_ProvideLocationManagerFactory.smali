.class public final Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/location/LocationManager;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;

    invoke-direct {v0, p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    sget-object v0, Lcom/sightcall/gpslocation/di/GpsLocationModule;->Companion:Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;

    invoke-virtual {v0, p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;->provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;->provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;->get()Landroid/location/LocationManager;

    move-result-object p0

    return-object p0
.end method
