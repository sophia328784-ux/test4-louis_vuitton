.class public final Landroidx/camera/video/PendingRecording;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/camera/video/PendingRecording;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroidx/camera/video/Recorder;",
        "recorder",
        "Landroidx/camera/video/OutputOptions;",
        "outputOptions",
        "<init>",
        "(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V",
        "camera-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/camera/video/Recorder;

.field public final b:Landroidx/camera/video/OutputOptions;

.field public final c:Landroid/content/Context;

.field public d:Landroidx/core/util/Consumer;

.field public e:Ljava/util/concurrent/Executor;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->a:Landroidx/camera/video/Recorder;

    iput-object p3, p0, Landroidx/camera/video/PendingRecording;->b:Landroidx/camera/video/OutputOptions;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->d:Landroidx/core/util/Consumer;

    iget-object p1, p0, Landroidx/camera/video/PendingRecording;->a:Landroidx/camera/video/Recorder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-wide v0, p1, Landroidx/camera/video/Recorder;->r:J

    const-wide/16 v2, 0x1

    add-long v6, v0, v2

    iput-wide v6, p1, Landroidx/camera/video/Recorder;->r:J

    iget-object v0, p1, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-wide v9, v6

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p1, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    :goto_0
    move-object v3, v1

    move v11, v2

    move-wide v9, v6

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p1, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    sget-object v3, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    const/4 v11, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    const-string v4, "Expected recorder to be idle but a recording is either pending or in progress."

    invoke-static {v4, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    new-instance v4, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v5, p0, Landroidx/camera/video/PendingRecording;->b:Landroidx/camera/video/OutputOptions;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v9, v6

    :try_start_2
    iget-object v6, p0, Landroidx/camera/video/PendingRecording;->e:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/camera/video/PendingRecording;->d:Landroidx/core/util/Consumer;

    iget-boolean v8, p0, Landroidx/camera/video/PendingRecording;->f:Z

    invoke-direct/range {v4 .. v10}, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;-><init>(Landroidx/camera/video/OutputOptions;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;ZJ)V

    iget-object v0, v4, Landroidx/camera/video/Recorder$RecordingRecord;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->c:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->e(Landroid/content/Context;)V

    iput-object v4, p1, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v0, p1, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    if-ne v0, v3, :cond_2

    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    iget-object v0, p1, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Ljr0;

    invoke-direct {v3, p1, v2}, Ljr0;-><init>(Landroidx/camera/video/Recorder;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    sget-object v3, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    if-ne v0, v3, :cond_3

    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V

    iget-object v0, p1, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Ljr0;

    invoke-direct {v3, p1, v11}, Ljr0;-><init>(Landroidx/camera/video/Recorder;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder;->B(Landroidx/camera/video/Recorder$State;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v0, v1

    move-object v3, v0

    move v11, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v9, v6

    :goto_3
    const/4 v3, 0x5

    move v11, v3

    move-object v3, v0

    move-object v0, v1

    :goto_4
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_5

    if-eqz v11, :cond_4

    const-string p2, "Recorder"

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    new-instance v4, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v5, p0, Landroidx/camera/video/PendingRecording;->b:Landroidx/camera/video/OutputOptions;

    iget-object v6, p0, Landroidx/camera/video/PendingRecording;->e:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/camera/video/PendingRecording;->d:Landroidx/core/util/Consumer;

    iget-boolean v8, p0, Landroidx/camera/video/PendingRecording;->f:Z

    invoke-direct/range {v4 .. v10}, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;-><init>(Landroidx/camera/video/OutputOptions;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;ZJ)V

    iget-object p2, v4, Landroidx/camera/video/Recorder$RecordingRecord;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1, v4, v11}, Landroidx/camera/video/Recorder;->j(Landroidx/camera/video/Recorder$RecordingRecord;I)V

    new-instance v4, Landroidx/camera/video/Recording;

    iget-object v5, p0, Landroidx/camera/video/PendingRecording;->a:Landroidx/camera/video/Recorder;

    iget-object v8, p0, Landroidx/camera/video/PendingRecording;->b:Landroidx/camera/video/OutputOptions;

    move-wide v6, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Landroidx/camera/video/Recording;-><init>(Landroidx/camera/video/Recorder;JLandroidx/camera/video/OutputOptions;Z)V

    goto :goto_5

    :cond_4
    new-instance v4, Landroidx/camera/video/Recording;

    iget-object v5, p0, Landroidx/camera/video/PendingRecording;->a:Landroidx/camera/video/Recorder;

    iget-object v8, p0, Landroidx/camera/video/PendingRecording;->b:Landroidx/camera/video/OutputOptions;

    move-wide v6, v9

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/camera/video/Recording;-><init>(Landroidx/camera/video/Recorder;JLandroidx/camera/video/OutputOptions;Z)V

    :goto_5
    return-object v4

    :cond_5
    const-string p0, "A recording is already in progress. Previous recordings must be stopped before a new recording can be started."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :goto_6
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
