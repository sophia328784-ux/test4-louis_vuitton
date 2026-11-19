.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EyebrowConfiguration"
.end annotation


# instance fields
.field public volatile n:[Landroid/graphics/PointF;

.field public volatile o:I

.field public final p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

.field public final q:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

.field public r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

.field public volatile s:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

.field public final synthetic t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 3

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->EYEBROW:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->EYEBROW_WARP:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1, v2}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v10, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T3:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-array v15, v9, [F

    fill-array-data v15, :array_0

    new-array v13, v9, [F

    aput v5, v13, v7

    aput v5, v13, v8

    aput v5, v13, v6

    new-array v14, v9, [F

    fill-array-data v14, :array_1

    new-array v11, v9, [F

    fill-array-data v11, :array_2

    iput-object v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V3:Ljava/nio/ByteBuffer;

    iput v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->W3:I

    iput v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->X3:I

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->IsUseTexture()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    iput-object v12, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V3:Ljava/nio/ByteBuffer;

    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    iput v12, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->W3:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    iput v1, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->X3:I

    iget v1, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Y3:I

    aput v5, v13, v6

    aput v5, v13, v8

    aput v5, v13, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v12, v7

    :goto_1
    if-ge v12, v9, :cond_2

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->U3:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    move-object/from16 v16, v11

    aget-object v11, v4, v12

    if-nez v11, :cond_1

    new-instance v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v18, v17

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v20, v18

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v24, v21

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v23}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    aput-object v11, v4, v24

    goto :goto_2

    :cond_1
    move/from16 v24, v12

    move-object/from16 v17, v14

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v12, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v11 .. v20}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    move-object v15, v12

    move-object/from16 v17, v14

    move-object/from16 v19, v16

    move-object/from16 v16, v13

    :goto_2
    iget-object v4, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->U3:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v4, v4, v24

    invoke-virtual {v4, v1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetDiffuseTextureID(I)V

    add-int/lit8 v12, v24, 0x1

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v11, v19

    goto :goto_1

    :cond_2
    iput-boolean v8, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Z3:Z

    iput-boolean v8, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->a4:Z

    monitor-exit v10

    goto :goto_4

    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_4
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T3:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    new-array v14, v9, [F

    fill-array-data v14, :array_3

    new-array v15, v9, [F

    aput v5, v15, v7

    aput v5, v15, v8

    aput v5, v15, v6

    new-array v13, v9, [F

    fill-array-data v13, :array_4

    new-array v10, v9, [F

    fill-array-data v10, :array_5

    iput-object v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->c4:Ljava/nio/ByteBuffer;

    iput v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->d4:I

    iput v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e4:I

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->IsUseTexture()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->c4:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    iput v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->d4:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    iput v1, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e4:I

    iget v1, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->f4:I

    aput v5, v15, v6

    aput v5, v15, v8

    aput v5, v15, v7

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_4
    const/4 v1, -0x1

    :goto_5
    move v3, v7

    :goto_6
    if-ge v3, v9, :cond_6

    iget-object v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->b4:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    move-object/from16 v18, v10

    aget-object v10, v5, v3

    if-nez v10, :cond_5

    new-instance v10, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v22}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    aput-object v10, v5, v3

    goto :goto_7

    :cond_5
    move-object/from16 v16, v13

    move-object v12, v15

    move-object/from16 v15, v18

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v11, v14

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v19}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    move-object v14, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v15

    move-object v15, v12

    :goto_7
    iget-object v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->b4:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetDiffuseTextureID(I)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v16

    move-object/from16 v10, v18

    goto :goto_6

    :cond_6
    iput-boolean v8, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->g4:Z

    iput-boolean v8, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h4:Z

    monitor-exit v4

    goto :goto_9

    :goto_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_7
    :goto_9
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->o:I

    move v3, v7

    :goto_a
    const/high16 v4, 0x437f0000    # 255.0f

    if-ge v3, v9, :cond_8

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M0:[F

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v7

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v2, v1, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v10, v2, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v10, v11, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v2

    move v3, v7

    :goto_b
    if-ge v3, v9, :cond_9

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->N0:[F

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v7

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    aput v10, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v3, v2, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getIntensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v2

    :goto_c
    if-ge v7, v9, :cond_b

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;

    aget-object v3, v3, v7

    int-to-float v4, v2

    iput v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P0:F

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 27

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    instance-of v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;

    if-eqz v3, :cond_c

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget v4, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    iput v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->o:I

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->J:Ljava/lang/String;

    :goto_0
    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->i(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v4

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->b()Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    move-result-object v4

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->s:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    const/16 v7, 0x9

    new-array v8, v7, [Landroid/graphics/PointF;

    move v9, v6

    :goto_1
    if-ge v9, v7, :cond_1

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-nez v7, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    aget-object v7, v8, v6

    const/16 v17, 0x8

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->K:Landroid/graphics/Point;

    const/16 v18, 0x7

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v16

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->L:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v15

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->M:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v14

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->T:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v13

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->U:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v12

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->V:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v11

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->W:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v18

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->X:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->y:F

    aget-object v7, v8, v17

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->Y:Landroid/graphics/Point;

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, v7, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_2
    const/16 v17, 0x8

    const/16 v18, 0x7

    :goto_2
    iput-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->h:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    if-eqz v4, :cond_3

    iget v4, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    if-gtz v4, :cond_4

    :cond_3
    new-instance v4, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    :cond_4
    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move-object v4, v8

    goto :goto_3

    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->J:Ljava/lang/String;

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v4, v8

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v7

    sget-object v9, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v4, v9}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v4}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v9

    invoke-static {v7}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->stride:I

    iput-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->data:[B

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v6

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_head:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v16

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_top:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v15

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_tail:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v14

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_upper1:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v13

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_upper2:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v12

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_upper3:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v11

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_lower1:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v18

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_lower2:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->n:[Landroid/graphics/PointF;

    aget-object v4, v4, v17

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->model_eyebrow_lower3:Landroid/graphics/PointF;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->s:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->a()I

    move-result v4

    iput v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->mode:I

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v8

    goto :goto_5

    :cond_7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->Z:Ljava/lang/String;

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_6
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v8}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    iput-object v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->feather_data:[B

    invoke-static {v0}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    :cond_9
    new-instance v23, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;

    invoke-direct/range {v23 .. v23}, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;-><init>()V

    new-instance v26, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;

    invoke-direct/range {v26 .. v26}, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v8, v6, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v8, v9, v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getDensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v24

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget-wide v8, v6, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;->a:J

    invoke-static {v8, v9, v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->UIShimmer_getGranularity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I

    move-result v25

    iget-wide v8, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    move-wide/from16 v19, v8

    invoke-static/range {v19 .. v26}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitializeEyebrowTexture(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, v23

    move-object/from16 v7, v26

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    iget-object v4, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    iget v4, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    iget v4, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    iget-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->data:[B

    if-eqz v0, :cond_a

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;

    iget v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    iget v4, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    :cond_a
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->s:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    iget v8, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    iget v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->a:I

    iget v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->b:I

    iget v11, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->c:I

    iget v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->d:I

    iget v13, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->e:I

    iget v14, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->S:I

    iget v15, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->f:I

    iget v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;->g:I

    iget-boolean v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->a0:Z

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b0:Z

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;->r:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v6 .. v19}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;IIIIIIIIIZZLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/r;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/r;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyebrowConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;ILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;)V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_b
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InitializeEyebrowTexture failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_c
    const-string v0, "Eyebrow\'s payload is not valid!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
