.class public abstract Lcoil3/RealImageLoader_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;
    .locals 3

    iget-object p0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    instance-of v0, p0, Lcoil3/target/ViewTarget;

    if-eqz v0, :cond_2

    check-cast p0, Lcoil3/target/ViewTarget;

    invoke-interface {p0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->c:Lcoil3/request/ViewTargetDisposable;

    if-eqz v0, :cond_0

    sget-object v1, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcoil3/request/ViewTargetRequestManager;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcoil3/request/ViewTargetRequestManager;->f:Z

    iput-object p1, v0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->d:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Lcoil3/request/ViewTargetRequestManager;->d:Lkotlinx/coroutines/Job;

    new-instance v0, Lcoil3/request/ViewTargetDisposable;

    iget-object v1, p0, Lcoil3/request/ViewTargetRequestManager;->b:Landroid/view/View;

    invoke-direct {v0, v1, p1}, Lcoil3/request/ViewTargetDisposable;-><init>(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V

    iput-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->c:Lcoil3/request/ViewTargetDisposable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    new-instance p0, Lcoil3/request/OneShotDisposable;

    invoke-direct {p0, p1}, Lcoil3/request/OneShotDisposable;-><init>(Lkotlinx/coroutines/Deferred;)V

    return-object p0
.end method
