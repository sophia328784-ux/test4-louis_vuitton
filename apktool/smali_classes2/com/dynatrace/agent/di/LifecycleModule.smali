.class public final Lcom/dynatrace/agent/di/LifecycleModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dynatrace/agent/di/LifecycleModule;",
        "",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Landroid/app/Application;",
        "application",
        "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
        "rumStartupEventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "navigationTracker",
        "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;",
        "currentViewTracker",
        "Lcom/dynatrace/agent/lifecycle/VisibilityManager;",
        "visibilityManager",
        "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;",
        "orientationChangeHandler",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/useraction/UserActionController;)V",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:Landroid/app/Application;

.field public final c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

.field public final d:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final e:Lcom/dynatrace/agent/view/NavigationTracker;

.field public final f:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

.field public final g:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

.field public final h:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

.field public final i:Lcom/dynatrace/agent/useraction/UserActionController;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/di/LifecycleModule;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/di/LifecycleModule;->b:Landroid/app/Application;

    iput-object p3, p0, Lcom/dynatrace/agent/di/LifecycleModule;->c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iput-object p4, p0, Lcom/dynatrace/agent/di/LifecycleModule;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p5, p0, Lcom/dynatrace/agent/di/LifecycleModule;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iput-object p6, p0, Lcom/dynatrace/agent/di/LifecycleModule;->f:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    iput-object p7, p0, Lcom/dynatrace/agent/di/LifecycleModule;->g:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    iput-object p8, p0, Lcom/dynatrace/agent/di/LifecycleModule;->h:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    iput-object p9, p0, Lcom/dynatrace/agent/di/LifecycleModule;->i:Lcom/dynatrace/agent/useraction/UserActionController;

    return-void
.end method
