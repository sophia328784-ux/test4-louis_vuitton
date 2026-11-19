.class public final synthetic Landroidx/camera/video/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/video/e;->b:I

    iput-object p1, p0, Landroidx/camera/video/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/video/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/video/e;->b:I

    iget-object v1, p0, Landroidx/camera/video/e;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/video/e;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/video/VideoEncoderSession;

    check-cast v1, Landroid/view/Surface;

    iget-object p0, p0, Landroidx/camera/video/VideoEncoderSession;->h:Lhr0;

    invoke-virtual {p0, v1}, Lhr0;->a(Landroid/view/Surface;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/VideoCapture$2;

    check-cast v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1, p0}, Landroidx/camera/core/impl/SessionConfig$Builder;->o(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/Recorder$RecordingRecord;

    check-cast v1, Landroidx/camera/video/VideoRecordEvent;

    check-cast p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    invoke-interface {p0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/Recorder;

    check-cast v1, Landroidx/camera/video/VideoOutput$SourceState;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    iput-object v1, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    const/4 v2, 0x3

    const-string v3, "Recorder"

    if-eq v0, v1, :cond_5

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Landroidx/camera/video/Recorder;->D:Landroid/view/Surface;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/camera/video/Recorder;->i0:Landroidx/camera/video/Recorder$SetupVideoTask;

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->d:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->d:Z

    iget-object v1, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v3, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    iput-object v3, p0, Landroidx/camera/video/Recorder;->i0:Landroidx/camera/video/Recorder$SetupVideoTask;

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->u(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->d0:Z

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, v3}, Landroidx/camera/video/Recorder;->s(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Exception;)V

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Landroidx/camera/video/Recorder;->c0:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz p0, :cond_6

    invoke-static {p0}, Landroidx/camera/video/Recorder;->r(Landroidx/camera/video/internal/encoder/Encoder;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
