.class public Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->new_CUIShadeFinder(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->b:Z

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->b:Z

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->delete_CUIShadeFinder(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J
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

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a()V

    return-void
.end method
