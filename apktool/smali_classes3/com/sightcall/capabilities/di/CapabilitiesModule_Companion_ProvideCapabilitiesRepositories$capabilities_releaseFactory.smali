.class public final Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/capabilities/CapabilitiesRepository;",
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
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->rtccDatasourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
            ">;)",
            "Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideCapabilitiesRepositories$capabilities_release(Landroid/content/Context;Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepository;
    .locals 1

    sget-object v0, Lcom/sightcall/capabilities/di/CapabilitiesModule;->Companion:Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;->provideCapabilitiesRepositories$capabilities_release(Landroid/content/Context;Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/capabilities/CapabilitiesRepository;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->rtccDatasourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

    invoke-static {v0, p0}, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->provideCapabilitiesRepositories$capabilities_release(Landroid/content/Context;Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->get()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    return-object p0
.end method
