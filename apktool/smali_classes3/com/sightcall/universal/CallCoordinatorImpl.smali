.class public final Lcom/sightcall/universal/CallCoordinatorImpl;
.super Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/CallCoordinator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
        "Lcom/sightcall/universal/CallComponent;",
        ">;",
        "Lcom/sightcall/universal/CallCoordinator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/universal/CallCoordinatorImpl;",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "Lcom/sightcall/universal/CallComponent;",
        "Lcom/sightcall/universal/CallCoordinator;",
        "callComponent",
        "<init>",
        "(Lcom/sightcall/universal/CallComponent;)V",
        "onStart",
        "",
        "onRelease",
        "openAgentMultiparty",
        "container",
        "Landroid/view/ViewGroup;",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/CallComponent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public openAgentMultiparty(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent;->builder()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Builder;->build()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;->getCoordinator()Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->attachCoordinator(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    return-void
.end method
