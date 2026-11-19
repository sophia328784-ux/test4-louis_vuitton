.class public final synthetic Landroidx/camera/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;
.implements Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# instance fields
.field public final synthetic b:Landroidx/camera/view/PreviewView$1;

.field public final synthetic c:Landroidx/camera/core/impl/CameraInternal;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/d;->b:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/d;->c:Landroidx/camera/core/impl/CameraInternal;

    iput-object p3, p0, Landroidx/camera/view/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/d;->b:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/view/d;->c:Landroidx/camera/core/impl/CameraInternal;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/view/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/view/PreviewStreamStateObserver;

    iget-object v1, p0, Landroidx/camera/view/d;->b:Landroidx/camera/view/PreviewView$1;

    iget-object v1, v1, Landroidx/camera/view/PreviewView$1;->b:Landroidx/camera/view/PreviewView;

    iget-object v1, v1, Landroidx/camera/view/PreviewView;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    invoke-virtual {v0, v1}, Landroidx/camera/view/PreviewStreamStateObserver;->b(Landroidx/camera/view/PreviewView$StreamState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_0

    :goto_0
    iget-object v1, v0, Landroidx/camera/view/PreviewStreamStateObserver;->e:Landroidx/camera/core/impl/utils/futures/FutureChain;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, v0, Landroidx/camera/view/PreviewStreamStateObserver;->e:Landroidx/camera/core/impl/utils/futures/FutureChain;

    :cond_2
    iget-object p0, p0, Landroidx/camera/view/d;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->c()Landroidx/camera/core/impl/Observable;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable;->d(Landroidx/camera/core/impl/Observable$Observer;)V

    return-void
.end method

.method public f(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 7

    iget-object v0, p0, Landroidx/camera/view/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/view/d;->b:Landroidx/camera/view/PreviewView$1;

    iget-object v1, v1, Landroidx/camera/view/PreviewView$1;->b:Landroidx/camera/view/PreviewView;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "PreviewView"

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, p0, Landroidx/camera/view/d;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->g()I

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    iget-object v5, v1, Landroidx/camera/view/PreviewView;->e:Landroidx/camera/view/PreviewTransformation;

    iget-object v0, v0, Landroidx/camera/core/SurfaceRequest;->b:Landroid/util/Size;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v6, "PreviewTransform"

    invoke-static {v2, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->a()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v5, Landroidx/camera/view/PreviewTransformation;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->b()I

    move-result v2

    iput v2, v5, Landroidx/camera/view/PreviewTransformation;->c:I

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->d()I

    move-result v2

    iput v2, v5, Landroidx/camera/view/PreviewTransformation;->e:I

    iput-object v0, v5, Landroidx/camera/view/PreviewTransformation;->a:Landroid/util/Size;

    iput-boolean p0, v5, Landroidx/camera/view/PreviewTransformation;->f:Z

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->e()Z

    move-result p0

    iput-boolean p0, v5, Landroidx/camera/view/PreviewTransformation;->g:Z

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->c()Landroid/graphics/Matrix;

    move-result-object p0

    iput-object p0, v5, Landroidx/camera/view/PreviewTransformation;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->d()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    iget-object p0, v1, Landroidx/camera/view/PreviewView;->c:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz p0, :cond_1

    instance-of p0, p0, Landroidx/camera/view/SurfaceViewImplementation;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v3, v1, Landroidx/camera/view/PreviewView;->f:Z

    goto :goto_2

    :cond_2
    :goto_1
    iput-boolean v4, v1, Landroidx/camera/view/PreviewView;->f:Z

    :goto_2
    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->a()V

    return-void
.end method
