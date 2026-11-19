.class public final Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;


# direct methods
.method private constructor <init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->module:Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;

    iput-object p2, p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->componentProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
            ">;)",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;-><init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideAgentMultipartyCoordinator$multiparty_release(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;->provideAgentMultipartyCoordinator$multiparty_release(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->module:Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;

    iget-object p0, p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->componentProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;

    invoke-static {v0, p0}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->provideAgentMultipartyCoordinator$multiparty_release(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->get()Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method
