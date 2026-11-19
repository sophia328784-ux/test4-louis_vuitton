.class public interface abstract Landroidx/camera/core/impl/CameraCaptureResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;
    }
.end annotation


# virtual methods
.method public abstract a()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
.end method

.method public b(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraCaptureResult;->a()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->d(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)V

    return-void
.end method

.method public abstract c()Landroidx/camera/core/impl/TagBundle;
.end method

.method public abstract d()J
.end method

.method public e()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract f()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
.end method

.method public abstract g()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
.end method

.method public abstract h()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
.end method
