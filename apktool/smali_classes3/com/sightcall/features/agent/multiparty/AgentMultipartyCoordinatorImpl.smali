.class public final Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;
.super Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
        ">;",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;",
        "component",
        "<init>",
        "(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)V",
        "onStart",
        "",
        "onRelease",
        "multiparty_release"
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
.method public constructor <init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)V
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
