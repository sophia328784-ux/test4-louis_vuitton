.class public Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

.field public final c:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;

.field public final d:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;

.field public final e:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;

.field public final f:Ljava/util/LinkedList;

.field public g:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;",
            "Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;",
            "Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->f:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->b:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->c:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;

    iput-object p3, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->d:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;

    iput-object p4, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->e:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->g:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const-string v0, "unset current activity"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set current activity to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->c:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;

    if-nez p1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;->b(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->g:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->d:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;

    invoke-interface {p2, p1}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;->a(Landroid/app/Activity;)Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->e:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;

    invoke-interface {p0, p1}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;->a(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->b:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->b:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;->a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->g:Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    :cond_0
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
    .locals 0

    iget-object p1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;->a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V

    :cond_0
    return-void
.end method
