.class public final Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/gpslocation/GpsRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final gpsDataSourceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
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
            "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;->gpsDataSourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
            ">;)",
            "Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;

    invoke-direct {v0, p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)Lcom/sightcall/gpslocation/GpsRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl;-><init>(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/gpslocation/GpsRepositoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;->gpsDataSourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    invoke-static {p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;->newInstance(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl_Factory;->get()Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
