.class public final Lcom/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/compose/userinteraction/ComposeEventObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1",
        "Lcom/dynatrace/agent/compose/userinteraction/ComposeEventObserver;",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1;->a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1;->a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->a:Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->i:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    return-void
.end method
