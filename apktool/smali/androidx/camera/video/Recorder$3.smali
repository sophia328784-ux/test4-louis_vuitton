.class Landroidx/camera/video/Recorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderCallback;


# instance fields
.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic d:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$3;->d:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$3;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/video/Recorder$3;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/video/Recorder$3;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/camera/video/internal/encoder/EncodedData;)V
    .locals 5

    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->d:Landroidx/camera/video/Recorder;

    iget-object v1, v0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    iget-object p0, p0, Landroidx/camera/video/Recorder$3;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    if-nez v1, :cond_7

    iget-boolean v1, v0, Landroidx/camera/video/Recorder;->t:Z

    const/4 v2, 0x3

    const-string v3, "Recorder"

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->c0()Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object p1, v0, Landroidx/camera/video/Recorder;->X:Landroidx/camera/video/internal/encoder/EncodedData;

    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Landroidx/camera/video/Recorder;->Y:Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    invoke-virtual {p1}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_2
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_3
    :goto_1
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v0, p0}, Landroidx/camera/video/Recorder;->D(Landroidx/camera/video/Recorder$RecordingRecord;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_5
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, v0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/Encoder;->e()V

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_6
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_7
    :try_start_0
    invoke-virtual {v0, p1, p0}, Landroidx/camera/video/Recorder;->L(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public final c(Landroidx/camera/video/internal/encoder/f;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder$3;->d:Landroidx/camera/video/Recorder;

    iput-object p1, p0, Landroidx/camera/video/Recorder;->I:Landroidx/camera/video/internal/encoder/f;

    return-void
.end method

.method public final d(Landroidx/camera/video/internal/encoder/EncodeException;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder$3;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
