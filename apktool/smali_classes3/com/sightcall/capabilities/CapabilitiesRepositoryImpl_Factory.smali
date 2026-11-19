.class public final Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final isInstantAppProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final rtccDatasourceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->isInstantAppProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->rtccDatasourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
            ">;)",
            "Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;-><init>(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->isInstantAppProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->rtccDatasourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

    invoke-static {v0, p0}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->newInstance(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl_Factory;->get()Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
