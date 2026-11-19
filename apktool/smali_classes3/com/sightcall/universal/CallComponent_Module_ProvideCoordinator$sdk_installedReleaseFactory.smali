.class public final Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/universal/CallCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final coordinatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/universal/CallComponent$Module;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iput-object p2, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->coordinatorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;)",
            "Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;-><init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideCoordinator$sdk_installedRelease(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/universal/CallCoordinatorImpl;)Lcom/sightcall/universal/CallCoordinator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/CallComponent$Module;->provideCoordinator$sdk_installedRelease(Lcom/sightcall/universal/CallCoordinatorImpl;)Lcom/sightcall/universal/CallCoordinator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/CallCoordinator;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iget-object p0, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->coordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-static {v0, p0}, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->provideCoordinator$sdk_installedRelease(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/universal/CallCoordinatorImpl;)Lcom/sightcall/universal/CallCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/universal/CallComponent_Module_ProvideCoordinator$sdk_installedReleaseFactory;->get()Lcom/sightcall/universal/CallCoordinator;

    move-result-object p0

    return-object p0
.end method
