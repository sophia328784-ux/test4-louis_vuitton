.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LipStickConfiguration"
.end annotation


# instance fields
.field public final synthetic A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public n:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

.field public o:I

.field public final p:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->LIPSTICK:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    new-array p1, p1, [[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->p:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    const/4 p1, 0x1

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->z:I

    return-void
.end method

.method public static q(Landroid/graphics/Bitmap;)[B
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v3, v7

    new-array v1, v8, [I

    new-array v9, v8, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v8, :cond_0

    aget v0, v1, p0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v9, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method


# virtual methods
.method public final k()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;-><init>(IIIII)V

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    move-result-object v6

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_1

    :try_start_0
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetLipstickProfileV2(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I[Ljava/lang/Object;ZIII)Z

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->BRIGHT:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    sget-object v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;->a:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    if-nez v14, :cond_0

    const-wide/16 v9, 0x0

    :goto_1
    move-wide v12, v9

    move v10, v8

    move-object v8, v6

    goto :goto_2

    :cond_0
    iget-wide v9, v14, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v2 .. v19}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetClassicLipstick(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;II[Ljava/lang/Object;ZIIJLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    move v8, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->p:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    iget-boolean v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d:Z

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    const/16 v21, 0x0

    if-ne v2, v3, :cond_1

    move v2, v5

    :try_start_1
    iget-object v5, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    if-eqz v2, :cond_0

    aget-object v2, v4, v21

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_0
    aget-object v2, v4, v9

    goto :goto_1

    :goto_2
    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q:Z

    iget v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->x:I

    iget v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->y:I

    iget-wide v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v3 .. v11}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetLipstickProfileV2(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I[Ljava/lang/Object;ZIII)Z

    move-object/from16 p1, v1

    move-object v1, v12

    goto :goto_5

    :cond_1
    move v2, v5

    iget-object v5, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->n:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iget v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->t:I

    iget v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    if-eqz v2, :cond_2

    aget-object v2, v4, v21

    goto :goto_3

    :cond_2
    aget-object v2, v4, v9

    :goto_3
    iget-boolean v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q:Z

    move-object v3, v12

    iget v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->u:I

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->v:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->r:I

    iget v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->s:I

    iget v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->w:I

    iget v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->x:I

    move-object/from16 p1, v1

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->y:I

    move-object/from16 v17, v3

    move/from16 v16, v4

    iget-wide v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    if-nez v15, :cond_3

    const-wide/16 v18, 0x0

    move/from16 v20, v1

    move-object/from16 v1, v17

    move/from16 v17, v11

    move v11, v9

    move-object v9, v2

    move-wide/from16 v22, v18

    move/from16 v18, v13

    move/from16 v19, v14

    move-wide/from16 v13, v22

    goto :goto_4

    :cond_3
    move/from16 v20, v1

    move-object/from16 p2, v2

    iget-wide v1, v15, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    move/from16 v18, v13

    move/from16 v19, v14

    move-wide v13, v1

    move-object/from16 v1, v17

    move/from16 v17, v11

    move v11, v9

    move-object/from16 v9, p2

    :goto_4
    invoke-static/range {v3 .. v20}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetClassicLipstick(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;II[Ljava/lang/Object;ZIIJLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIIII)Z

    move v9, v11

    :goto_5
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z

    if-eqz v1, :cond_4

    const/16 v21, 0x64

    :cond_4
    move/from16 v1, v21

    invoke-virtual {v2, v1, v9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->z0(II)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 33

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-static/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    instance-of v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v3, :cond_17

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->i:Ljava/util/List;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->z:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->e:I

    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->r:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->f:I

    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->s:I

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v6, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v6}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v6

    iput-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_2

    :cond_2
    iget-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v8

    :goto_2
    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->t:I

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;

    const/4 v10, 0x4

    move-object/from16 v11, p1

    invoke-direct {v8, v1, v11, v2, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;II)V

    invoke-virtual {v1, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    new-array v8, v8, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle$Style;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle$Style;->a()Z

    move-result v11

    iput-boolean v11, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q:Z

    iget v11, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->z:I

    if-ne v11, v4, :cond_14

    move v6, v9

    :goto_3
    iget v11, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    if-ge v6, v11, :cond_d

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v6, :cond_c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;

    iget v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->b:I

    iget v13, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    if-ne v13, v5, :cond_3

    const/16 v13, 0x64

    :goto_4
    move/from16 v20, v13

    goto :goto_5

    :cond_3
    iget v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->b:I

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    rsub-int/lit8 v13, v13, 0x64

    goto :goto_4

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v6, :cond_5

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    :goto_6
    move/from16 v17, v12

    goto :goto_7

    :cond_5
    new-instance v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v13, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    goto :goto_6

    :goto_7
    new-instance v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    iget-object v14, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    sget-object v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$4;->d:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    const-string v0, "Unsupported LipstickType: "

    invoke-static {v14, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->BRIGHT:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_1
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->HOLOGRAPHIC:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_2
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->METALLIC:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_3
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->WET_PEARLIZED:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_4
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->HIGH_GLOSS:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_5
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->GLOSS:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_8

    :pswitch_6
    sget-object v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->THICK:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    :goto_8
    iget v15, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v15

    iget v4, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v9, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    iget-object v9, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v13, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->a:I

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->b:I

    iget v5, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->c:I

    move-object/from16 v32, v3

    iget v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->c:I

    move/from16 v22, v3

    iget v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->d:I

    move/from16 v23, v3

    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_6

    move/from16 p1, v4

    move/from16 v21, v5

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    move/from16 v24, v3

    goto :goto_9

    :cond_6
    move/from16 p1, v4

    move/from16 v21, v5

    const/16 v24, 0x0

    :goto_9
    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_7

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    move/from16 v25, v3

    goto :goto_a

    :cond_7
    const/16 v25, 0x0

    :goto_a
    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_8

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    move/from16 v26, v3

    goto :goto_b

    :cond_8
    const/16 v26, 0x0

    :goto_b
    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_9

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getIntensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    move/from16 v27, v3

    goto :goto_c

    :cond_9
    const/16 v27, 0x0

    :goto_c
    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_a

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getGranularity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    move/from16 v28, v3

    goto :goto_d

    :cond_a
    const/16 v28, 0x0

    :goto_d
    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->e:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v3, :cond_b

    iget-wide v4, v3, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getDensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v3

    move/from16 v29, v3

    :goto_e
    move/from16 v19, v9

    move/from16 v18, v13

    move-object v13, v14

    move v14, v15

    move/from16 v15, p1

    goto :goto_f

    :cond_b
    const/16 v29, 0x0

    goto :goto_e

    :goto_f
    invoke-direct/range {v12 .. v29}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;IIIIIIIIIIIIIIII)V

    aput-object v12, v8, v6

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->g:I

    iput v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->x:I

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->h:I

    iput v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->y:I

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->p:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    aput-object v8, v3, v2

    goto :goto_10

    :cond_c
    move-object/from16 v32, v3

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v32

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;

    if-eqz v3, :cond_13

    iget-boolean v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q:Z

    iget v5, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->b:I

    iget v6, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->c:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->b:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v9, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->c:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    iget-object v9, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->d:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int v0, v11, v15

    new-array v9, v0, [I

    new-array v10, v0, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    move-object/from16 v17, v14

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v0, :cond_e

    aget v11, v9, v10

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v17, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_e
    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->q(Landroid/graphics/Bitmap;)[B

    move-result-object v9

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    const/16 v30, 0x0

    :try_start_0
    aget-object v10, v0, v30

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v31, 0x1

    :try_start_1
    aget-object v0, v0, v31

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v19, v0

    move/from16 v18, v10

    goto :goto_14

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v18, v10

    :goto_13
    const/16 v19, 0x0

    goto :goto_14

    :cond_f
    const/16 v18, 0x0

    goto :goto_13

    :goto_14
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v10, v0

    new-array v14, v10, [B

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move-object/from16 v15, v17

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    int-to-float v0, v5

    int-to-float v5, v6

    iget-wide v11, v13, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move/from16 v21, v0

    move/from16 v20, v4

    move/from16 v22, v5

    invoke-static/range {v11 .. v22}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_PreprocessLipShapeForOmbre(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[B[BIIIIZFF)Z

    move/from16 v10, v18

    move/from16 v0, v19

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x5:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    iput-object v15, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J5:[B

    iput-object v7, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->K5:[B

    iput-object v9, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->L5:[B

    iput-object v14, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->M5:[B

    iput v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->N5:I

    iput v6, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->O5:I

    const/4 v7, 0x0

    :goto_15
    const/4 v9, 0x3

    if-ge v7, v9, :cond_12

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->N:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;

    aget-object v9, v9, v7

    iget v11, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y5:I

    iget v12, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->z5:I

    iget v13, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->A5:I

    iget v14, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B5:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v5, :cond_10

    if-lez v6, :cond_10

    const/4 v15, 0x1

    goto :goto_16

    :cond_10
    const/4 v15, 0x0

    :goto_16
    iput-boolean v15, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->y9:Z

    iput v11, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->h6:I

    iput v12, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->i6:I

    iput v13, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->j6:I

    iput v14, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->k6:I

    iput v10, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->l6:I

    iput v0, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->m6:I

    iput v5, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->n6:I

    iput v6, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;->o6:I

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->O:[Lcom/cyberlink/clgpuimage/cosmetic/ab;

    aget-object v9, v9, v7

    iget v11, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y5:I

    iget v12, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->z5:I

    iget v13, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->A5:I

    iget v14, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B5:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v5, :cond_11

    if-lez v6, :cond_11

    const/4 v15, 0x1

    goto :goto_17

    :cond_11
    const/4 v15, 0x0

    :goto_17
    iput-boolean v15, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->z9:Z

    iput v11, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->h6:I

    iput v12, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->i6:I

    iput v13, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->j6:I

    iput v14, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->k6:I

    iput v10, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->l6:I

    iput v0, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->m6:I

    iput v5, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->n6:I

    iput v6, v9, Lcom/cyberlink/clgpuimage/cosmetic/ab;->o6:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_12
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C5:Z

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    iget v11, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->k:I

    iget v12, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->j:I

    iget v13, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->i:I

    iget v14, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->f:I

    iget v15, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->g:I

    iget v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->h:I

    const/4 v10, 0x1

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>(ZIIIIII)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {v0, v9, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;I)V

    goto/16 :goto_1d

    :goto_18
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_13
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>()V

    :goto_19
    invoke-interface {v0, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;I)V

    goto/16 :goto_1d

    :cond_14
    const/4 v3, 0x0

    :goto_1a
    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->o:I

    if-ge v3, v4, :cond_16

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_15

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v5, 0x0

    goto :goto_1b

    :cond_15
    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    :goto_1b
    new-instance v11, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    iget v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v12

    iget v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v13

    iget v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v15, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->a:I

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->b:I

    move/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;-><init>(IIIII)V

    aput-object v11, v8, v3

    iget v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->b:I

    iput v4, v11, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iget v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->c:I

    iput v4, v11, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_16
    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$4;->d:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->BRIGHT:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_7
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->HOLOGRAPHIC:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_8
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->METALLIC:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_9
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->WET_PEARLIZED:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_a
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->HIGH_GLOSS:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_b
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->GLOSS:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    goto :goto_1c

    :pswitch_c
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->THICK:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    :goto_1c
    iput-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->n:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->p:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;

    aput-object v8, v3, v2

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->b:I

    iput v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->u:I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->c:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->v:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->d:I

    iput v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->w:I

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->g:I

    iput v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->x:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->h:I

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->y:I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;->A:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>()V

    goto/16 :goto_19

    :goto_1d
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_17
    const-string v0, "LipStick\'s payload is not valid!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
