.class public final Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;",
        "Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;",
        "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;",
        "oneAgentUserInteractionManager",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V",
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
.field public final a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;->a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;->a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

    invoke-interface {p0, p1, p2}, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;->a:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;->b(Landroid/view/View;)V

    return-void
.end method
