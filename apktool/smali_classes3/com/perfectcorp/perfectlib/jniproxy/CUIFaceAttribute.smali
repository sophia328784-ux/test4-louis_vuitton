.class public Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/jniproxy/UIFaceAttributeJNI;->new_CUIFaceAttribute(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->b:Z

    iput-wide p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->b:Z

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIFaceAttributeJNI;->delete_CUIFaceAttribute(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a:J
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

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a()V

    return-void
.end method
