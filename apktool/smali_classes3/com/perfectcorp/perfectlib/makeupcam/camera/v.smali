.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v3, v4, v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEventInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->p()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    invoke-direct {v3, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    goto :goto_0

    :cond_0
    const-string v3, "FunStickerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "It\'s an invalid template. GUID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6, v3, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->STICKER:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v3, v5, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-boolean v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->b1:Z

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-direct {v3, v5, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    :goto_0
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->d:I

    new-array v3, v0, [I

    new-array v8, v0, [[I

    new-array v9, v0, [[I

    new-array v10, v0, [[Landroid/graphics/PointF;

    new-array v11, v0, [[F

    new-array v12, v0, [[F

    new-array v13, v0, [[[Landroid/graphics/PointF;

    new-array v14, v0, [[I

    new-array v15, v0, [[I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    move v6, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v16, v0

    new-array v0, v4, [I

    aput-object v0, v8, v5

    new-array v0, v4, [I

    aput-object v0, v9, v5

    new-array v0, v4, [Landroid/graphics/PointF;

    aput-object v0, v10, v5

    new-array v0, v4, [F

    aput-object v0, v11, v5

    new-array v0, v4, [F

    aput-object v0, v12, v5

    new-array v0, v4, [[Landroid/graphics/PointF;

    aput-object v0, v13, v5

    new-array v0, v4, [I

    aput-object v0, v14, v5

    new-array v0, v4, [I

    aput-object v0, v15, v5

    aput v4, v3, v5

    const/4 v0, 0x0

    :goto_3
    move-object/from16 v24, v2

    if-ge v0, v4, :cond_2

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    aget-object v17, v8, v5

    move-object/from16 v18, v3

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    aput v3, v17, v0

    aget-object v3, v9, v5

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    aput v2, v3, v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    aget-object v3, v10, v5

    move/from16 v17, v0

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->model_offset:Landroid/graphics/PointF;

    aput-object v0, v3, v17

    aget-object v0, v11, v5

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->model_scale_ratio:F

    aput v3, v0, v17

    aget-object v0, v12, v5

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->model_depth_ratio:F

    aput v3, v0, v17

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->image_anchor_point:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aget-object v3, v13, v5

    move-object/from16 v19, v3

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->image_anchor_point:Ljava/util/List;

    move-object/from16 v20, v2

    new-array v2, v0, [Landroid/graphics/PointF;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/PointF;

    aput-object v2, v19, v17

    aget-object v2, v14, v5

    aput v0, v2, v17

    aget-object v0, v15, v5

    invoke-virtual/range {v20 .. v20}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a()I

    move-result v2

    aput v2, v0, v17

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v3, v18

    move-object/from16 v2, v24

    goto :goto_3

    :cond_2
    move-object/from16 v18, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v18, v3

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    new-array v7, v0, [I

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_4
    move/from16 v23, v0

    if-ge v2, v0, :cond_5

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a()I

    move-result v19

    aput v19, v17, v2

    move/from16 v19, v2

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    aput v2, v16, v19

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    aput v2, v4, v19

    iget v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->c:I

    if-gez v2, :cond_4

    iget-object v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->align_mode:Ljava/lang/String;

    move-object/from16 v20, v4

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;->ALIGN_STRETCH:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    invoke-static {v2, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->c:I

    goto :goto_5

    :cond_4
    move-object/from16 v20, v4

    :goto_5
    aput v2, v5, v19

    iget v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->capInsetTop:I

    aput v2, v6, v19

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    iget v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->capInsetBottom:I

    sub-int/2addr v0, v2

    aput v0, v7, v19

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move/from16 v0, v23

    goto :goto_4

    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v20, v4

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m0()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    move-object/from16 v21, v6

    move-object/from16 v19, v20

    move-object/from16 v20, v5

    iget-wide v5, v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object/from16 v22, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v22

    move-object/from16 v22, v7

    move-object v7, v0

    invoke-static/range {v5 .. v23}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetStickerInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I[I[I[I[I[II)Z

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->h()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->trigger:Ljava/lang/String;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->react:Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    :goto_7
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, v2, v3, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEventInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_8
    :goto_8
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->STICKER:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->b1:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    if-eq v6, v7, :cond_a

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;->file_name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;->file_name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->a:Z

    invoke-direct {v7, v8, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_a
    :goto_a
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->FACE_DISTORTION:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v3, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v24

    :goto_b
    const-string v3, "FaceDistortionHelper"

    const-string v4, "setupModel failed"

    invoke-static {v3, v4, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_c
    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b:I

    if-ge v0, v3, :cond_c

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;->a(ZZ)Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->b()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->FACE_DISTORTION:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v1, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    return-object v24

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_d
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
