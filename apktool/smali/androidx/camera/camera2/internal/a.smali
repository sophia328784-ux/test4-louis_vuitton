.class public final synthetic Landroidx/camera/camera2/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/List;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/a;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/a;->c:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/a;->d:I

    iput p4, p0, Landroidx/camera/camera2/internal/a;->e:I

    iput p5, p0, Landroidx/camera/camera2/internal/a;->f:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Landroidx/camera/camera2/internal/a;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->o:Landroidx/camera/camera2/internal/Camera2CapturePipeline;

    iget v0, p0, Landroidx/camera/camera2/internal/a;->d:I

    iget v1, p0, Landroidx/camera/camera2/internal/a;->e:I

    iget v2, p0, Landroidx/camera/camera2/internal/a;->f:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->a(III)Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->a(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/internal/o;

    iget-object p0, p0, Landroidx/camera/camera2/internal/a;->c:Ljava/util/List;

    invoke-direct {v2, p1, p0, v1}, Landroidx/camera/camera2/internal/o;-><init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Ljava/util/List;I)V

    iget-object p0, p1, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/internal/m;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/camera/camera2/internal/m;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
