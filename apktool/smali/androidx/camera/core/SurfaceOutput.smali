.class public interface abstract Landroidx/camera/core/SurfaceOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/SurfaceOutput$CameraInputInfo;,
        Landroidx/camera/core/SurfaceOutput$Event;
    }
.end annotation


# virtual methods
.method public abstract Q0([F[F)V
.end method

.method public abstract R0(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;
.end method

.method public getFormat()I
    .locals 0

    const/16 p0, 0x22

    return p0
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public v([F[FZ)V
    .locals 0

    return-void
.end method
