.class final Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentMultipartyComponentImpl"
.end annotation


# instance fields
.field private final agentMultipartyComponentImpl:Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;

.field agentMultipartyComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
            ">;"
        }
    .end annotation
.end field

.field provideAgentMultipartyCoordinator$multiparty_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->agentMultipartyComponentImpl:Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->initialize(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->agentMultipartyComponentImpl:Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->agentMultipartyComponentProvider:Ldagger/internal/Provider;

    invoke-static {p1, v0}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;->create(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent_Module_ProvideAgentMultipartyCoordinator$multiparty_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->provideAgentMultipartyCoordinator$multiparty_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getCoordinator()Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;->provideAgentMultipartyCoordinator$multiparty_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    return-object p0
.end method
