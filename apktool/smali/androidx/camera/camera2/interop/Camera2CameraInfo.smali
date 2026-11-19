.class public final Landroidx/camera/camera2/interop/Camera2CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

.field public final b:Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->a:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->b:Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;

    return-void
.end method

.method public static a(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;
    .locals 3

    instance-of v0, p0, Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl;->c:Landroidx/camera/camera2/interop/Camera2CameraInfo;

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    instance-of v1, v0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    const-string v2, "CameraInfo doesn\'t contain Camera2 implementation."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->c:Landroidx/camera/camera2/interop/Camera2CameraInfo;

    instance-of v1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/camera/core/impl/AdapterCameraInfo;

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->c:Landroidx/camera/core/impl/SessionProcessor;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    iget-object v0, v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->a:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->a:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    iput-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraInfo;->c:Ljava/util/List;

    return-object p0

    :cond_1
    return-object v0
.end method
