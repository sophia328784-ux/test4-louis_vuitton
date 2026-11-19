.class public final synthetic Landroidx/camera/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/video/Recorder;

.field public final synthetic d:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/video/d;->b:I

    iput-object p1, p0, Landroidx/camera/video/d;->c:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/d;->d:Landroidx/camera/video/Recorder$RecordingRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/camera/video/d;->b:I

    iget-object v1, p0, Landroidx/camera/video/d;->d:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-object p0, p0, Landroidx/camera/video/d;->c:Landroidx/camera/video/Recorder;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    new-instance v0, Landroidx/camera/video/b;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/b;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object v2, p0, Landroidx/camera/video/Recorder;->G:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v3, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/camera/video/Recorder$4;

    invoke-direct {v4, p0, v0}, Landroidx/camera/video/Recorder$4;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/b;)V

    iget-object v5, v2, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v6, Lb5;

    const/4 v7, 0x2

    invoke-direct {v6, v2, v3, v4, v7}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroidx/camera/video/Recorder;->J:Landroidx/camera/video/internal/encoder/Encoder;

    new-instance v4, Landroidx/camera/video/Recorder$5;

    invoke-direct {v4, p0, p1, v0, v1}, Landroidx/camera/video/Recorder$5;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/b;Landroidx/camera/video/Recorder$RecordingRecord;)V

    invoke-interface {v2, v4, v3}, Landroidx/camera/video/internal/encoder/Encoder;->a(Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V

    const-string p0, "audioEncodingFuture"

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    new-instance v2, Landroidx/camera/video/Recorder$3;

    invoke-direct {v2, p0, p1, v1}, Landroidx/camera/video/Recorder$3;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, p0}, Landroidx/camera/video/internal/encoder/Encoder;->a(Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V

    const-string p0, "videoEncodingFuture"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
