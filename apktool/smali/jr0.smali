.class public final synthetic Ljr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;I)V
    .locals 0

    iput p2, p0, Ljr0;->b:I

    iput-object p1, p0, Ljr0;->c:Landroidx/camera/video/Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Ljr0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ljr0;->c:Landroidx/camera/video/Recorder;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/camera/video/Recorder;->B:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/camera/video/Recorder;->h(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "surface request is required to retry initialization."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v2, "Recorder"

    iget-object v3, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    move v2, v1

    :goto_1
    move-object v3, v4

    goto :goto_3

    :cond_1
    move v3, v1

    :cond_2
    iget-object v2, p0, Landroidx/camera/video/Recorder;->b0:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v5, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v2, v5, :cond_3

    iget-object v1, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iput-object v4, p0, Landroidx/camera/video/Recorder;->q:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->x()V

    sget-object v2, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    const/4 v2, 0x4

    move v6, v3

    move-object v3, v1

    move v1, v6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    iget-object v2, p0, Landroidx/camera/video/Recorder;->p:Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    if-nez v2, :cond_5

    iget-boolean v5, p0, Landroidx/camera/video/Recorder;->d0:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/camera/video/Recorder;->m:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->q(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v6

    goto :goto_3

    :cond_5
    :goto_2
    const-string v5, "Recorder"

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    move v2, v1

    move v1, v3

    goto :goto_1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    invoke-virtual {p0, v4, v1}, Landroidx/camera/video/Recorder;->F(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0, v3, v2}, Landroidx/camera/video/Recorder;->j(Landroidx/camera/video/Recorder$RecordingRecord;I)V

    :cond_8
    :goto_4
    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
