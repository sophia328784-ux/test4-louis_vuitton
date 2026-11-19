.class public final Lcoil3/request/ViewTargetRequestDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/RequestDelegate;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil3/request/ViewTargetRequestDelegate;",
        "Lcoil3/request/RequestDelegate;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/request/ImageRequest;",
        "initialRequest",
        "Lcoil3/target/ViewTarget;",
        "target",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Lkotlinx/coroutines/Job;",
        "job",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lcoil3/ImageLoader;

.field public final c:Lcoil3/request/ImageRequest;

.field public final d:Lcoil3/target/ViewTarget;

.field public final e:Landroidx/lifecycle/Lifecycle;

.field public final f:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/ImageLoader;",
            "Lcoil3/request/ImageRequest;",
            "Lcoil3/target/ViewTarget<",
            "*>;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlinx/coroutines/Job;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/request/ViewTargetRequestDelegate;->b:Lcoil3/ImageLoader;

    iput-object p2, p0, Lcoil3/request/ViewTargetRequestDelegate;->c:Lcoil3/request/ImageRequest;

    iput-object p3, p0, Lcoil3/request/ViewTargetRequestDelegate;->d:Lcoil3/target/ViewTarget;

    iput-object p4, p0, Lcoil3/request/ViewTargetRequestDelegate;->e:Landroidx/lifecycle/Lifecycle;

    iput-object p5, p0, Lcoil3/request/ViewTargetRequestDelegate;->f:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->f:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->d:Lcoil3/target/ViewTarget;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleObserver;

    iget-object v2, p0, Lcoil3/request/ViewTargetRequestDelegate;->e:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcoil3/request/ViewTargetRequestDelegate;->e:Landroidx/lifecycle/Lifecycle;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-static {p0, p1}, Lcoil3/util/LifecyclesKt;->a(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->d:Lcoil3/target/ViewTarget;

    invoke-interface {v0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    move-result-object v0

    iget-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcoil3/request/ViewTargetRequestDelegate;->a()V

    :cond_1
    iput-object p0, v0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "\'ViewTarget.view\' must be attached to a window."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    iget-object p0, p0, Lcoil3/request/ViewTargetRequestDelegate;->d:Lcoil3/target/ViewTarget;

    invoke-interface {p0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->d:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->b:Lkotlinx/coroutines/GlobalScope;

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->r()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v2, Lcoil3/request/ViewTargetRequestManager$dispose$1;

    invoke-direct {v2, p0, v0}, Lcoil3/request/ViewTargetRequestManager$dispose$1;-><init>(Lcoil3/request/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {p1, v1, v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->d:Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->c:Lcoil3/request/ViewTargetDisposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->e:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iget-object v1, p0, Lcoil3/request/ViewTargetRequestDelegate;->d:Lcoil3/target/ViewTarget;

    instance-of v2, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    invoke-interface {v1}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    move-result-object v0

    iget-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcoil3/request/ViewTargetRequestDelegate;->a()V

    :cond_2
    iput-object p0, v0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    return-void
.end method
