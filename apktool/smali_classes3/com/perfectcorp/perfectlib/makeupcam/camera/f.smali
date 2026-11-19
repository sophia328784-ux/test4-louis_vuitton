.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final b:I

.field public final c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->d:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b:I

    new-array v0, p1, [Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->d:[Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v3, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v3, v4, v2, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceDistortionIntermediateSize(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget v1, v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v9, v2

    move v4, v3

    :goto_0
    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b:I

    if-ge v9, v0, :cond_12

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    :goto_1
    move-object v7, v10

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->d(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v5, "FaceDistortionHelper"

    const-string v6, "Files.map() failed."

    invoke-static {v5, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    if-eqz v7, :cond_11

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;

    iget-boolean v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;->b:Z

    xor-int/2addr v4, v3

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->a(ZZ)Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    move-result-object v4

    aput-object v4, v0, v9

    new-array v8, v1, [B

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetFaceDistortionModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;[BI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    if-lt v9, v4, :cond_10

    const/4 v5, 0x3

    if-lt v9, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r6:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->w6:Z

    if-nez v7, :cond_2

    monitor-exit v6

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_2
    if-ne v9, v4, :cond_a

    iput-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    iput-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    move v4, v2

    :goto_3
    if-ge v4, v5, :cond_3

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    aput-object v10, v7, v4

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    aput-object v10, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s6:I

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t6:I

    mul-int/2addr v4, v7

    shl-int/lit8 v7, v4, 0x2

    shl-int/2addr v4, v5

    if-ge v1, v4, :cond_5

    :cond_4
    :goto_4
    monitor-exit v6

    goto/16 :goto_7

    :cond_5
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-eq v4, v7, :cond_7

    :cond_6
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    :cond_7
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-eq v4, v7, :cond_9

    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    :cond_9
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v2, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v7, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y6:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->u6:Z

    move v4, v2

    :goto_5
    if-ge v4, v5, :cond_4

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F6:[Z

    aput-boolean v2, v7, v4

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->k()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->b1(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s6:I

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t6:I

    mul-int/2addr v4, v7

    shl-int/lit8 v7, v4, 0x2

    shl-int/2addr v4, v5

    if-ge v1, v4, :cond_b

    goto :goto_4

    :cond_b
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-eq v4, v7, :cond_d

    :cond_c
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v9

    :cond_d
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-eq v4, v7, :cond_f

    :cond_e
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v9

    :cond_f
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v8, v2, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v8, v7, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C6:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->k()V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F6:[Z

    aput-boolean v3, v4, v9

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v6:[Z

    aput-boolean v3, v0, v9

    goto/16 :goto_4

    :goto_6
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_10
    :goto_7
    move v4, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_11
    invoke-static {v2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->a(ZZ)Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    move-result-object v5

    aput-object v5, v0, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_12
    if-nez v4, :cond_13

    return-void

    :cond_13
    const-string p0, "no valid buffer been set"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_14
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "get intermediate size failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object p0, v0

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_15
    const-string p0, "empty list"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->d:[Z

    aput-boolean v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->d:[Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    array-length v3, p0

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;

    aget-object v3, v3, v0

    aget-boolean v4, p0, v0

    iget-object v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->o:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->v:Z

    monitor-exit v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
