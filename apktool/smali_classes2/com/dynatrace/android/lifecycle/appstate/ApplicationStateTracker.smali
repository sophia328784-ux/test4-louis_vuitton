.class public Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Ljava/util/LinkedHashSet;

.field public final c:Ljava/util/HashSet;

.field public final d:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->b:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->d:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->d:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->d:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->e:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "app returns to foreground"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateListener;

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateListener;->onForeground()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->e:Z

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->d:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->e:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "app goes into background"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateListener;

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateListener;->onBackground()V

    goto :goto_0

    :cond_1
    return-void
.end method
