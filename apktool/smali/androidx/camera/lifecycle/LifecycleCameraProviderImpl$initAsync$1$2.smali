.class public final Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback;",
        "Ljava/lang/Void;",
        "camera-lifecycle_release"
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
.field public final synthetic a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

.field public final synthetic b:Landroidx/camera/core/CameraX;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    iput-object p2, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->b:Landroidx/camera/core/CameraX;

    iput-object p3, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    new-instance p1, Landroidx/camera/lifecycle/a;

    invoke-direct {p1, p0}, Landroidx/camera/lifecycle/a;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/lifecycle/a;->run()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lw21;

    const/4 v3, 0x6

    invoke-direct {v2, p1, v0, v3}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    const-string v1, "Unable to post to main thread"

    invoke-static {v1, p1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e:Landroidx/camera/core/CameraX;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/CameraX;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->b:Landroidx/camera/core/impl/utils/futures/FutureChain;

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e:Landroidx/camera/core/CameraX;

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->f:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Timeout to wait main thread execution"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/camera/core/impl/utils/InterruptedRuntimeException;

    invoke-direct {p1, p0}, Landroidx/camera/core/impl/utils/InterruptedRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->b:Landroidx/camera/core/CameraX;

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    iput-object p1, v0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e:Landroidx/camera/core/CameraX;

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;->c:Landroid/content/Context;

    invoke-static {p0}, Landroidx/camera/core/impl/utils/ContextUtil;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->f:Landroid/content/Context;

    return-void
.end method
