.class final Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/capabilities/di/CapabilitiesComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilitiesComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;
    }
.end annotation


# instance fields
.field private final capabilitiesComponentImpl:Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;

.field contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field provideCapabilitiesRepositories$capabilities_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;->capabilitiesComponentImpl:Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;->initialize(Lcom/sightcall/core/di/SightCallComponent;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 1

    new-instance v0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;

    invoke-direct {v0, p1}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;-><init>(Lcom/sightcall/core/di/SightCallComponent;)V

    iput-object v0, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;->create()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;->create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/capabilities/di/CapabilitiesModule_Companion_ProvideCapabilitiesRepositories$capabilities_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;->provideCapabilitiesRepositories$capabilities_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;->provideCapabilitiesRepositories$capabilities_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/capabilities/CapabilitiesRepository;

    return-object p0
.end method
