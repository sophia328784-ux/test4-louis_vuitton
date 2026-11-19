.class Landroidx/camera/core/streamsharing/VirtualCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field public final b:Landroidx/camera/core/impl/CameraInternal;

.field public final c:Landroidx/camera/core/streamsharing/VirtualCameraControl;

.field public final d:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

.field public final e:Landroidx/camera/core/UseCase$StateChangeCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/UseCase$StateChangeCallback;Landroidx/camera/core/streamsharing/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->b:Landroidx/camera/core/impl/CameraInternal;

    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->e:Landroidx/camera/core/UseCase$StateChangeCallback;

    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraControl;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->f()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Landroidx/camera/core/streamsharing/VirtualCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/streamsharing/a;)V

    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->c:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->d:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->b:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->c()Landroidx/camera/core/impl/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->e:Landroidx/camera/core/UseCase$StateChangeCallback;

    check-cast p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->d(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final e(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->e:Landroidx/camera/core/UseCase$StateChangeCallback;

    check-cast p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->e(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final f()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->c:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    return-object p0
.end method

.method public final i(Ljava/util/Collection;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation not supported by VirtualCamera."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/util/Collection;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation not supported by VirtualCamera."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->d:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    return-object p0
.end method

.method public final m(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->e:Landroidx/camera/core/UseCase$StateChangeCallback;

    check-cast p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->m(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final r(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->e:Landroidx/camera/core/UseCase$StateChangeCallback;

    check-cast p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->r(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported by VirtualCamera."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
