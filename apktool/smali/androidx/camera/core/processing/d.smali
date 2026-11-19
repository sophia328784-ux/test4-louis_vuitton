.class public final synthetic Landroidx/camera/core/processing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic c:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

.field public final synthetic f:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/d;->b:Landroidx/camera/core/processing/SurfaceEdge;

    iput-object p2, p0, Landroidx/camera/core/processing/d;->c:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    iput p3, p0, Landroidx/camera/core/processing/d;->d:I

    iput-object p4, p0, Landroidx/camera/core/processing/d;->e:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    iput-object p5, p0, Landroidx/camera/core/processing/d;->f:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    iget-object v0, p0, Landroidx/camera/core/processing/d;->c:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    move-object v2, p1

    check-cast v2, Landroid/view/Surface;

    iget-object p1, p0, Landroidx/camera/core/processing/d;->b:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->d()V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroidx/camera/core/processing/SurfaceOutputImpl;

    iget-object p1, p1, Landroidx/camera/core/processing/SurfaceEdge;->g:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v4

    iget v3, p0, Landroidx/camera/core/processing/d;->d:I

    iget-object v5, p0, Landroidx/camera/core/processing/d;->e:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    iget-object v6, p0, Landroidx/camera/core/processing/d;->f:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/processing/SurfaceOutputImpl;-><init>(Landroid/view/Surface;ILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    new-instance p0, Landroidx/camera/core/processing/c;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/camera/core/processing/c;-><init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v1, Landroidx/camera/core/processing/SurfaceOutputImpl;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, p0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->r:Landroidx/camera/core/processing/SurfaceOutputImpl;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p0, "Consumer can only be linked once."

    invoke-static {p0, p1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->r:Landroidx/camera/core/processing/SurfaceOutputImpl;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
