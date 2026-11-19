.class public Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->new_UIMakeupLiveFaceAlignData(II)J

    move-result-wide p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->b:Z

    iput-wide p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->b:Z

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->delete_UIMakeupLiveFaceAlignData(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J
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
