.class public interface abstract Landroidx/camera/core/impl/CameraInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/Camera;
.implements Landroidx/camera/core/UseCase$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraInternal$State;
    }
.end annotation


# virtual methods
.method public a()Landroidx/camera/core/CameraControl;
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->f()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroidx/camera/core/CameraInfo;
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract f()Landroidx/camera/core/impl/CameraControlInternal;
.end method

.method public g()Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    sget-object p0, Landroidx/camera/core/impl/CameraConfigs;->a:Landroidx/camera/core/impl/CameraConfig;

    return-object p0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public abstract i(Ljava/util/Collection;)V
.end method

.method public abstract j(Ljava/util/Collection;)V
.end method

.method public abstract k()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public l()Z
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->g()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public q(Z)V
    .locals 0

    return-void
.end method

.method public abstract release()Lcom/google/common/util/concurrent/ListenableFuture;
.end method
