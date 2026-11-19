.class public interface abstract Landroidx/camera/core/impl/CameraFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraPresenceMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraFactory$Provider;
    }
.end annotation


# virtual methods
.method public abstract a()Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
.end method

.method public abstract b(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
.end method

.method public abstract c()Landroidx/camera/camera2/internal/Camera2PresenceSource;
.end method

.method public abstract d()Ljava/util/LinkedHashSet;
.end method

.method public abstract f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
