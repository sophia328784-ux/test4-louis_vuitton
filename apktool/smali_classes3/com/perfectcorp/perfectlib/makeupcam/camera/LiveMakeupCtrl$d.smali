.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;
.super Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    const-string p1, "FrameProcessingHandlerThreadImpl"

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 10

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b:[Landroid/graphics/PointF;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v6, 0x1c2

    const/16 v7, 0x12c

    invoke-static/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitialEyeModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;II)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v2, v1, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v4, 0xc8

    invoke-static {v2, v3, v1, v4, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitialEyeContactModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v2, v1, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v4, 0x12c

    invoke-static {v2, v3, v1, v4, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitFaceDistortionModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetEyeContactModelParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->b()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "LiveMakeupCtrl"

    const-string v1, "Out of memory when init eye model"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final processing(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->b()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LiveMakeupCtrl"

    const-string v2, "Out of memory when init eye model"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method
