.class public Lcom/batch/android/j1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/j1/d$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "ForegroundActivityLifecycleListener"

.field private static final g:I = 0x2bc


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/os/Handler;

.field private d:Lcom/batch/android/j1/d$a;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/j1/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lf31;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lf31;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/batch/android/j1/d;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/j1/d;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/batch/android/j1/d;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/j1/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/j1/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/batch/android/j1/d;->d:Lcom/batch/android/j1/d$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/batch/android/j1/d$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/d$a;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/batch/android/j1/d;->d:Lcom/batch/android/j1/d$a;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/batch/android/j1/d;->c:Landroid/os/Handler;

    return-void
.end method

.method public a()Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    const-string v3, "ForegroundActivityLifecycleListener"

    const-string v4, "Batch\'s Activity resume counter is < 0. Something went wrong at some point with the activity lifecycles."

    invoke-static {v3, v4}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gez v0, :cond_1

    iget-object v3, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    if-eqz v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p1, p0, Lcom/batch/android/j1/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/batch/android/j1/d;->e:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/batch/android/j1/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/batch/android/j1/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/batch/android/j1/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/batch/android/j1/d;->d:Lcom/batch/android/j1/d$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/batch/android/j1/d$a;->a()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
