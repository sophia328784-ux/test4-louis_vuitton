.class public Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->new_CUIMakeupLive(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->b:Z

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_Get3DEyebrowModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_Get3DFaceartModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetBackgroundModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFace3DPoseModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetHairColorModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->m()V

    return-void
.end method

.method public final g([Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_Set3DEyebrowModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_Set3DFaceartModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetBackgroundModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetFace3DPoseModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetHairColorModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized m()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->b:Z

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->delete_CUIMakeupLive(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
