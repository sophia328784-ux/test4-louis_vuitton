.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final g:[Z


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->g:[Z

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget-object v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v11, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->s(I)V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v9, v12

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v8, v12

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->r()I

    move-result v7

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    shl-int v4, v14, v7

    or-int/2addr v2, v4

    invoke-virtual {v11, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    move-object v4, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;

    move-object v6, v4

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d:Ljava/lang/String;

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/i;Lcom/perfectcorp/perfectlib/makeupcam/camera/f;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;Ljava/lang/String;III)V

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$b;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v14

    move-object/from16 v3, p2

    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->r()I

    move-result v7

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    shl-int v3, v14, v7

    or-int/2addr v2, v3

    invoke-virtual {v11, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d:Ljava/lang/String;

    const/4 v9, -0x1

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/i;Lcom/perfectcorp/perfectlib/makeupcam/camera/f;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;Ljava/lang/String;III)V

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$c;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v14

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->f:Z

    return-void
.end method

.method public static b(Ljava/util/ArrayList;[Z[ZI)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    iget v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    move/from16 v5, p3

    if-ne v4, v5, :cond_0

    aget-boolean v4, p1, v2

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v8, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v9, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v9, v10, v4, v8}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_ResetApngDecoder(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    iput-wide v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    :cond_1
    aget-boolean v4, p2, v2

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->j:Z

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    aget-object v3, v6, v3

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->b(Z)V

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b()V

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    cmp-long v4, v10, v6

    if-gtz v4, :cond_3

    iput-wide v8, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    :cond_3
    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    cmp-long v4, v8, v6

    if-ltz v4, :cond_6

    new-instance v17, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v18, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct/range {v18 .. v18}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v19, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct/range {v19 .. v19}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v13, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    iget-object v14, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->h:Ljava/nio/ByteBuffer;

    iget v15, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    iget v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v10, v12, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move/from16 v16, v6

    invoke-static/range {v10 .. v19}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetNextApngImage(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v6, v17

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->a()V

    iget-boolean v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->j:Z

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    aget-object v10, v11, v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->b(Z)V

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    iget v4, v6, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    int-to-long v6, v4

    add-long/2addr v10, v6

    iput-wide v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    const-wide/16 v6, 0x1f4

    sub-long/2addr v8, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->k:J

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    const-string v4, "DecodeInfo"

    const-string v6, "Call getNextImage() failed!!!"

    const/4 v7, 0x5

    invoke-static {v7, v4, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->j:Z

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    aget-object v3, v6, v3

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->b(Z)V

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b()V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
