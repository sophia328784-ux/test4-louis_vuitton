.class public final Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;
.super Lcom/dynatrace/agent/lifecycle/callback/BaseActivityLifecycleCallbacks;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;",
        "Lcom/dynatrace/agent/lifecycle/callback/BaseActivityLifecycleCallbacks;",
        "Lcom/dynatrace/agent/lifecycle/AppStartupManager;",
        "appStartupManager",
        "Lcom/dynatrace/agent/lifecycle/VisibilityManager;",
        "visibilityManager",
        "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;",
        "orientationChangeHandler",
        "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;",
        "currentViewTracker",
        "<init>",
        "(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;)V",
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
.field public final b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

.field public final c:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

.field public final d:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

.field public final e:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/dynatrace/agent/lifecycle/callback/BaseActivityLifecycleCallbacks;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    iput-object p3, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->d:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    iput-object p4, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->e:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->e:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    iget-boolean v1, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    invoke-interface {v0}, Lcom/dynatrace/agent/view/ViewContextManagerApi;->b()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stop view can\'t be executed, sessionInfo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/lifecycle/VisibilityManager;->b(I)V

    return-void
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityPreResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityPreStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->e:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-boolean v3, v1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    invoke-interface {v0, v2}, Lcom/dynatrace/agent/view/ViewContextManagerApi;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "start view can\'t be executed, sessionInfo: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->d:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;->a(I)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/lifecycle/VisibilityManager;->a(I)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    invoke-interface {p0, v0, p1}, Lcom/dynatrace/agent/lifecycle/VisibilityManager;->d(IZ)V

    return-void
.end method
