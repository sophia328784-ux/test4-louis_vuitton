.class public final Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideAgentMultipartyCoordinator",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;",
        "component",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;",
        "provideAgentMultipartyCoordinator$multiparty_release",
        "provideCoordinator",
        "Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;",
        "coordinator",
        "provideCoordinator$multiparty_release",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAgentMultipartyCoordinator$multiparty_release(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/features/agent/multiparty/AgentMultipartyScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;-><init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;)V

    return-object p0
.end method

.method public final provideCoordinator$multiparty_release(Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinatorImpl;)Lcom/sightcall/features/agent/multiparty/AgentMultipartyCoordinator;
    .locals 0
    .annotation runtime Lcom/sightcall/features/agent/multiparty/AgentMultipartyScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method
