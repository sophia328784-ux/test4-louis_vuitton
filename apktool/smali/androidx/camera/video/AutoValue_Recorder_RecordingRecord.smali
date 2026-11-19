.class final Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;
.super Landroidx/camera/video/Recorder$RecordingRecord;
.source "SourceFile"


# instance fields
.field public final i:Landroidx/camera/video/OutputOptions;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Landroidx/core/util/Consumer;

.field public final l:Z

.field public final m:J


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;ZJ)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/video/Recorder$RecordingRecord;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    iput-object p2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->j:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    iput-boolean p4, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    iput-wide p5, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    return-void

    :cond_0
    const-string p0, "Null getOutputOptions"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/camera/video/Recorder$RecordingRecord;

    check-cast p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    iget-object v0, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->j:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->j:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-boolean v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    iget-boolean v1, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    iget-wide p0, p1, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_3

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->j:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    const/16 v3, 0x4d5

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    iget-wide v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    ushr-long v4, v2, v1

    xor-long v1, v4, v2

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingRecord{getOutputOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->i:Landroidx/camera/video/OutputOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCallbackExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getEventListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->k:Landroidx/core/util/Consumer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAudioEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPersistent=false, getRecordingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->m:J

    const-string p0, "}"

    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
