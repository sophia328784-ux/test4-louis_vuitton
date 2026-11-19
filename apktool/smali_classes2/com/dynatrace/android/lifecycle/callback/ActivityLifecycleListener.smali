.class public Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Lcom/dynatrace/android/lifecycle/LifecycleController;

.field public final c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/lifecycle/LifecycleController;Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/android/lifecycle/LifecycleController;",
            "Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/LifecycleController;->b(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/LifecycleController;->b(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {p2, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    sget-object p2, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_CREATE:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/lifecycle/LifecycleController;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;Lcom/dynatrace/android/lifecycle/event/ActivityEventType;)V

    return-void
.end method

.method public final onActivityPreResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    sget-object v0, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_RESUME:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1, v0}, Lcom/dynatrace/android/lifecycle/LifecycleController;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;Lcom/dynatrace/android/lifecycle/event/ActivityEventType;)V

    return-void
.end method

.method public final onActivityPreStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    sget-object v0, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_START:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1, v0}, Lcom/dynatrace/android/lifecycle/LifecycleController;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;Lcom/dynatrace/android/lifecycle/event/ActivityEventType;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->c:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;->b:Lcom/dynatrace/android/lifecycle/LifecycleController;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/LifecycleController;->b(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    return-void
.end method
