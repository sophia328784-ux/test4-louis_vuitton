.class public Landroidx/camera/core/impl/AdapterCameraInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field public final b:Landroidx/camera/core/impl/CameraInternal;

.field public final c:Landroidx/camera/core/impl/AdapterCameraInfo;

.field public final d:Landroidx/camera/core/impl/AdapterCameraControl;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    iput-object p2, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->c:Landroidx/camera/core/impl/AdapterCameraInfo;

    iget-object p2, p2, Landroidx/camera/core/impl/AdapterCameraInfo;->d:Landroidx/camera/core/impl/CameraConfig;

    new-instance v0, Landroidx/camera/core/impl/AdapterCameraControl;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->f()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->x()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/AdapterCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/impl/SessionProcessor;)V

    iput-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->d:Landroidx/camera/core/impl/AdapterCameraControl;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/camera/core/CameraControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->d:Landroidx/camera/core/impl/AdapterCameraControl;

    return-object p0
.end method

.method public final b()Landroidx/camera/core/CameraInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->c:Landroidx/camera/core/impl/AdapterCameraInfo;

    return-object p0
.end method

.method public final c()Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->c()Landroidx/camera/core/impl/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroidx/camera/core/UseCase;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->d(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final e(Landroidx/camera/core/UseCase;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->e(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final f()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->d:Landroidx/camera/core/impl/AdapterCameraControl;

    return-object p0
.end method

.method public final g()Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->g()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public final h(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->h(Z)V

    return-void
.end method

.method public final i(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->i(Ljava/util/Collection;)V

    return-void
.end method

.method public final j(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->j(Ljava/util/Collection;)V

    return-void
.end method

.method public final k()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->c:Landroidx/camera/core/impl/AdapterCameraInfo;

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->l()Z

    move-result p0

    return p0
.end method

.method public final m(Landroidx/camera/core/UseCase;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->m(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final n(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->n(Landroidx/camera/core/impl/CameraConfig;)V

    return-void
.end method

.method public final p()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result p0

    return p0
.end method

.method public final q(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->q(Z)V

    return-void
.end method

.method public final r(Landroidx/camera/core/UseCase;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->r(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
