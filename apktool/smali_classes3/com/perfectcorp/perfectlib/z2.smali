.class public final synthetic Lcom/perfectcorp/perfectlib/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ZLcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/z2;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/z2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/z2;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/z2;->e:Z

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/z2;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/perfectlib/v1;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/z2;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/z2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/z2;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/perfectcorp/perfectlib/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/z2;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/perfectcorp/perfectlib/c2;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/z2;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0
.end method
