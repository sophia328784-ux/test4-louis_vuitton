.class public final Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;",
        "",
        "Lcom/dynatrace/agent/lifecycle/AppStartupManager;",
        "appStartupManager",
        "Lcom/dynatrace/agent/lifecycle/VisibilityManager;",
        "visibilityManager",
        "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;",
        "orientationChangeHandler",
        "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;",
        "currentViewTracker",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Landroid/app/Application;)V",
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
.field public final a:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

.field public final b:Landroid/app/Application;

.field public c:Z

.field public final d:Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;

.field public final e:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Landroid/app/Application;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->a:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    iput-object p5, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->b:Landroid/app/Application;

    new-instance p5, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;-><init>(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;)V

    iput-object p5, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->d:Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;

    new-instance p1, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;

    invoke-direct {p1, p3}, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;-><init>(Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;)V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->e:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;

    return-void
.end method
