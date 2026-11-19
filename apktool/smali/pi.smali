.class public final synthetic Lpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlashListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lpi;->a:I

    iput-object p1, p0, Lpi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 3

    iget v0, p0, Lpi;->a:I

    iget-object p0, p0, Lpi;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/internal/ScreenFlashWrapper;

    iget-object v0, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->d:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    if-nez v1, :cond_0

    const-string v1, "ScreenFlashWrapper"

    const/4 v2, 0x5

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_0
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v0, "Camera2CapturePipeline"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
