.class public final synthetic Landroidx/camera/video/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/k;->a:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$Result;->b()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x3

    const-string v1, "VideoEncoderSession"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$Result;->b()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/video/k;->a:Landroidx/camera/video/VideoEncoderSession;

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->e:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->e:Landroid/view/Surface;

    iget-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->d:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/camera/video/VideoEncoderSession;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    return-void
.end method
