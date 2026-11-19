.class final Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/media/MediaCodec;

.field private b:Landroid/media/MediaMuxer;

.field private c:Landroid/media/MediaFormat;

.field private d:Landroid/media/MediaFormat;

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

.field private l:Z

.field private final m:Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;

.field private final n:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

.field private o:Ljava/lang/Integer;

.field private synthetic p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Landroid/os/Looper;Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->e:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->f:Ljava/util/Queue;

    const/4 p1, -0x1

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->i:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->j:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->m:Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->n:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    return-void
.end method

.method private a(Landroid/media/MediaFormat;Landroid/opengl/EGLContext;)Landroid/media/MediaCodec;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    const-string v2, "width"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->f:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    const-string v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->g:I

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;-><init>(Landroid/opengl/EGLContext;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->o:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "LiveRecordingFilter"

    const-string v1, "createEncoder"

    invoke-static {p2, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    const/4 p2, -0x1

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->f:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->g:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p1
.end method

.method private a()Landroid/media/MediaMuxer;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 95
    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 96
    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 97
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    const-string v2, "createMuxer"

    const-string v3, "LiveRecordingFilter"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->n:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->a(Ljava/lang/Exception;)V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    const-string v1, "createMuxer MediaMuxer.release()"

    invoke-static {v3, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_1
    :goto_1
    throw v0
.end method

.method private a(Landroid/opengl/EGLContext;II)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 100
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "video/avc"

    invoke-static {v0, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    const-string p3, "color-format"

    const v0, 0x7f000789

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 102
    iget-object p3, p3, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 103
    iget p3, p3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->b:I

    const-string v0, "bitrate"

    invoke-virtual {p2, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 104
    iget-object p3, p3, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 105
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x18

    const-string v0, "frame-rate"

    invoke-virtual {p2, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    .line 106
    iget-object p3, p3, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    .line 107
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x1

    const-string v0, "i-frame-interval"

    invoke-virtual {p2, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a(Landroid/media/MediaFormat;Landroid/opengl/EGLContext;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a()Landroid/media/MediaMuxer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    return-void
.end method

.method private b()V
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->h:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->d:Landroid/media/MediaFormat;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->c:Landroid/media/MediaFormat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->i:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a(Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->c:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->j:I

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->i:I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;->a:Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/opengl/EGLContext;IIZ)V
    .locals 1

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->l:Z

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a(Landroid/opengl/EGLContext;II)V

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->n:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->d(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x2

    const-string v3, "LiveRecordingFilter"

    if-eq v0, v2, :cond_16

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->o:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a(I)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->c:Landroid/media/MediaFormat;

    return-void

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->f:Ljava/util/Queue;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->l:Z

    if-eqz v0, :cond_15

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    if-nez p1, :cond_4

    move v6, v5

    goto :goto_0

    :cond_4
    move v6, v1

    :goto_0
    if-eqz v6, :cond_5

    :try_start_1
    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v8, "onVideoSampleAvailable"

    invoke-static {v3, v8, v7}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_5
    :goto_1
    move v3, v1

    :goto_2
    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x3e8

    if-eqz v6, :cond_6

    const-wide/32 v10, 0x2dc6c0

    goto :goto_3

    :cond_6
    move-wide v10, v8

    :goto_3
    invoke-virtual {v7, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    const/4 v10, -0x3

    if-ne v7, v10, :cond_8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v10, -0x2

    if-ne v7, v10, :cond_9

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->d:Landroid/media/MediaFormat;

    goto :goto_5

    :cond_9
    if-ltz v7, :cond_d

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v10, 0x4

    if-nez v11, :cond_c

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_a

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_a
    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v10, :cond_c

    aget-object v10, v0, v7

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-boolean v11, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->h:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    iget v12, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->i:I

    invoke-virtual {v11, v12, v10, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->m:Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;

    if-eqz v10, :cond_c

    iget-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v10, v11, v12}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;->a(J)V

    goto :goto_4

    :cond_b
    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;

    invoke-direct {v11, v10, v2}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->e:Ljava/util/Queue;

    invoke-interface {v10, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    iget-object v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v10, v7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_d
    :goto_5
    if-nez v3, :cond_e

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v7, v4

    if-nez v7, :cond_e

    goto :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b()V

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->h:Z

    if-eqz v0, :cond_f

    :goto_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->j:I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;->a:Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_6

    :cond_f
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    iget v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->b:I

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c(I)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->c:J

    mul-long/2addr v1, v8

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v3, v4, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v4, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v3, v0, v1, v2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    :goto_7
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :goto_8
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->a()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :goto_9
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->a()V

    :cond_14
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->n:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    if-eqz p0, :cond_15

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->c(Ljava/lang/IllegalStateException;)V

    :cond_15
    :goto_a
    return-void

    :cond_16
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    :try_start_3
    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    :catch_2
    move-exception p1

    const-string v1, "onStopRecording signalEndOfInputStream"

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    :try_start_4
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception p1

    const-string v1, "onStopRecording stop"

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    :try_start_5
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception p1

    const-string v1, "onStopRecording release"

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a:Landroid/media/MediaCodec;

    :cond_17
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_18

    :try_start_6
    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_e

    :catch_3
    move-exception p1

    const-string v1, "MediaMuxer.stop(): Muxer doesn\'t have any data?"

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    :try_start_7
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_f

    :catch_4
    move-exception p1

    const-string v1, "MediaMuxer.release(): Muxer doesn\'t have any data?"

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->b:Landroid/media/MediaMuxer;

    :cond_18
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;

    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/opengl/EGLContext;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a(Landroid/opengl/EGLContext;IIZ)V

    return-void
.end method
