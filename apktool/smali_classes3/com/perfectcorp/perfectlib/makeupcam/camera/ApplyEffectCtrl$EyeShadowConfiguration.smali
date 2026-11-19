.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EyeShadowConfiguration"
.end annotation


# instance fields
.field public final A:[[B

.field public B:[[I

.field public final C:[[B

.field public D:[[[B

.field public E:[[I

.field public F:[[I

.field public G:[I

.field public H:[[I

.field public I:[[[B

.field public J:[[I

.field public K:[[I

.field public L:[I

.field public M:[[I

.field public final synthetic N:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public n:Landroid/graphics/Bitmap;

.field public final o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Z

.field public final t:[[I

.field public final u:[[B

.field public final v:[[B

.field public final w:[[I

.field public final x:[[B

.field public final y:[[B

.field public z:[[I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 3

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->N:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->EYESHADOW:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    invoke-direct {p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget p2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->t:[[I

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->u:[[B

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->v:[[B

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->w:[[I

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->x:[[B

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->y:[[B

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->z:[[I

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->A:[[B

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->B:[[I

    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->C:[[B

    new-array v0, p2, [[[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->D:[[[B

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->E:[[I

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->F:[[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->G:[I

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->H:[[I

    new-array v0, p2, [[[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->I:[[[B

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->J:[[I

    new-array v0, p2, [[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->K:[[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->L:[I

    new-array p2, p2, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->M:[[I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->b()I

    move-result p2

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->c()I

    move-result p1

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x500

    :goto_0
    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    shl-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    if-ge p1, p2, :cond_1

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    shr-int/2addr v1, p1

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    shr-int/2addr v2, p1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->r:I

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->C:[[B

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->y:[[B

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->x:[[B

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->w:[[I

    iget-boolean v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d:Z

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->A:[[B

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->t:[[I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->v:[[B

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->u:[[B

    sget-object v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v11, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v11}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v12

    iput-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {v11}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v11

    iput-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->N:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->n:Landroid/graphics/Bitmap;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget-object v15, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R2:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iput-object v13, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->S2:Landroid/graphics/Bitmap;

    iput-object v14, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T2:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->U2:Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v13, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v13, v13, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z

    if-eqz v13, :cond_0

    const/16 v13, 0x69

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    const/4 v14, 0x3

    if-ge v15, v14, :cond_3

    iget-object v14, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;

    aget-object v14, v14, v15

    move-object/from16 v17, v2

    int-to-float v2, v13

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v2, v2, v18

    iput v2, v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;->G5:F

    move-object/from16 v18, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v19, v2, v3

    move-object/from16 v20, v4

    const/high16 v4, 0x41c80000    # 25.0f

    move-object/from16 v21, v5

    if-lez v19, :cond_1

    invoke-static {v2, v3, v4, v3}, Ltr;->a(FFFF)F

    move-result v5

    iput v5, v14, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;->G5:F

    :cond_1
    iget-object v5, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;

    aget-object v5, v5, v15

    iput v2, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;->G5:F

    if-lez v19, :cond_2

    invoke-static {v2, v3, v4, v3}, Ltr;->a(FFFF)F

    move-result v2

    iput v2, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;->G5:F

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_1

    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_4

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v24, v8, v16

    aget-object v25, v10, v16

    aget-object v26, v9, v16

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v29, v7, v16

    const/16 v30, -0x1

    const/16 v23, 0x1

    move-object/from16 v22, v2

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v22 .. v30}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v30

    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v24, v8, v30

    aget-object v25, v10, v30

    aget-object v26, v9, v30

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v29, v7, v30

    const/16 v23, 0x1

    move-object/from16 v22, v3

    move/from16 v27, v4

    move/from16 v28, v5

    invoke-virtual/range {v22 .. v30}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    sget-object v2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->s:Z

    if-eqz v2, :cond_7

    if-eqz v6, :cond_6

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v24, v21, v16

    aget-object v25, v20, v16

    aget-object v26, v18, v16

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v29, v17, v16

    const/16 v30, -0x1

    const/16 v23, 0x0

    move-object/from16 v22, v2

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v22 .. v30}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto/16 :goto_6

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v30

    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v24, v21, v30

    aget-object v25, v20, v30

    aget-object v26, v18, v30

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v29, v17, v30

    const/16 v23, 0x0

    move-object/from16 v22, v3

    move/from16 v27, v4

    move/from16 v28, v5

    invoke-virtual/range {v22 .. v30}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v33, v8, v16

    aget-object v34, v10, v16

    aget-object v35, v9, v16

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v38, v7, v16

    const/16 v39, -0x1

    const/16 v32, 0x0

    move-object/from16 v31, v2

    move/from16 v36, v3

    move/from16 v37, v4

    invoke-virtual/range {v31 .. v39}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto :goto_6

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v19, v8, v25

    aget-object v20, v10, v25

    aget-object v21, v9, v25

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    aget-object v24, v7, v25

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v17 .. v25}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    goto :goto_5

    :cond_9
    :goto_6
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    if-nez v6, :cond_a

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v10, v3

    array-length v3, v3

    new-array v15, v3, [B

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v9, v1

    array-length v1, v1

    new-array v1, v1, [B

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v3, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;

    iget-object v14, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->a:[I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->b:[B

    const/4 v13, 0x1

    move-object/from16 v16, v1

    move-object/from16 v19, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v12 .. v20}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v1, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;

    iget-object v14, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->a:[I

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->b:[B

    const/4 v13, 0x0

    move-object/from16 v19, v1

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v20}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D(Z[I[B[BII[BI)V

    move-object/from16 v1, v16

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->D:[[[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->E:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->F:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->G:[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->H:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->z:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->I:[[[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->J:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->K:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->L:[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->M:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->B:[[I

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->N:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->o:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->n:Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    const-string v5, "eye shadow payload can\'t be null"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v7

    invoke-static {v7, v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->a(ILjava/util/List;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;

    move-object/from16 v8, p1

    invoke-direct {v7, v0, v8, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    invoke-virtual {v0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v3}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;->a:[[B

    array-length v7, v3

    const/4 v8, 0x5

    const-string v9, ", pattern="

    const-string v10, "ApplyEffectCtrl"

    if-ge v6, v7, :cond_0

    const-string v11, "[Eye Shadow left] Color count is less than pattern count. color="

    invoke-static {v6, v7, v11, v9}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v11, v7, [I

    new-array v12, v7, [I

    move v13, v4

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v13, v14, :cond_1

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v14, v11, v13

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    new-array v13, v7, [I

    move v14, v4

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v14, v15, :cond_2

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    new-array v14, v7, [I

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v4, v15, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->i()I

    move-result v15

    aput v15, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;->c:Z

    iput-boolean v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->s:Z

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->u:[[B

    iget v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->r:I

    new-array v8, v15, [B

    aput-object v8, v5, v1

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->v:[[B

    new-array v8, v15, [B

    aput-object v8, v5, v1

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->A:[[B

    const v8, 0x20f58

    new-array v1, v8, [B

    aput-object v1, v5, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->t:[[I

    new-array v5, v8, [I

    aput-object v5, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->D:[[[B

    aput-object v3, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->E:[[I

    aput-object v11, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->F:[[I

    aput-object v12, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->G:[I

    aput v7, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->H:[[I

    aput-object v13, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->z:[[I

    aput-object v14, v1, p2

    if-eqz v4, :cond_5

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;->b:[[B

    array-length v2, v1

    if-ge v6, v2, :cond_4

    const-string v3, "[Eye Shadow right] Color count is less than pattern count. color="

    invoke-static {v6, v2, v3, v9}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v10, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->x:[[B

    new-array v4, v15, [B

    aput-object v4, v3, p2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->y:[[B

    new-array v4, v15, [B

    aput-object v4, v3, p2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->C:[[B

    new-array v4, v8, [B

    aput-object v4, v3, p2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->w:[[I

    new-array v4, v8, [I

    aput-object v4, v3, p2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->I:[[[B

    aput-object v1, v3, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->J:[[I

    aput-object v11, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->K:[[I

    aput-object v12, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->L:[I

    aput v2, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->M:[[I

    aput-object v13, v1, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->B:[[I

    aput-object v14, v1, p2

    :cond_5
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final p(I)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->N:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-interface {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->d()V

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->n:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, v6, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_LoadObject3DHDR(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ApplyEffectCtrl"

    const-string v3, "EyeShadow load hdr file error."

    invoke-static {v2, v3}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->t:[[I

    aget-object v7, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->D:[[[B

    aget-object v8, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->E:[[I

    aget-object v9, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->F:[[I

    aget-object v10, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->G:[I

    aget v11, v2, p1

    iget v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->H:[[I

    aget-object v16, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->u:[[B

    aget-object v18, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->v:[[B

    aget-object v19, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->z:[[I

    aget-object v20, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->A:[[B

    aget-object v21, v2, p1

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v12, 0x1c2

    const/16 v13, 0x12c

    const/16 v17, 0x2

    invoke-static/range {v4 .. v21}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_PreprocessEyeshadowModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[Ljava/lang/Object;[I[IIIIII[II[B[B[I[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "PreprocessEyeshadowModel failed."

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->s:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->w:[[I

    aget-object v7, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->I:[[[B

    aget-object v8, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->J:[[I

    aget-object v9, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->K:[[I

    aget-object v10, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->L:[I

    aget v11, v2, p1

    iget v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->p:I

    iget v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->q:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->M:[[I

    aget-object v16, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->x:[[B

    aget-object v18, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->y:[[B

    aget-object v19, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->B:[[I

    aget-object v20, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;->C:[[B

    aget-object v21, v2, p1

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v12, 0x1c2

    const/16 v13, 0x12c

    const/16 v17, 0x2

    invoke-static/range {v4 .. v21}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_PreprocessEyeshadowModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[Ljava/lang/Object;[I[IIIIII[II[B[B[I[B)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
