.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtBaseConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FaceArtConfiguration"
.end annotation


# instance fields
.field public final synthetic p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->FACEART:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtBaseConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceArtBaseConfiguration;->n:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceArtTemplate;

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->I4:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x3

    :try_start_0
    new-array v6, v4, [F

    fill-array-data v6, :array_0

    new-array v7, v4, [F

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v5

    const/4 v9, 0x1

    aput v8, v7, v9

    const/4 v10, 0x2

    aput v8, v7, v10

    new-array v11, v4, [F

    fill-array-data v11, :array_1

    new-array v13, v4, [F

    fill-array-data v13, :array_2

    const/4 v12, 0x0

    iput-object v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->K4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceArtTemplate;->IsUseTexture()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceArtTemplate;->faceart_template:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->K4:Landroid/graphics/Bitmap;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->L4:I

    aput v8, v7, v10

    aput v8, v7, v9

    aput v8, v7, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-ge v5, v4, :cond_2

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J4:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    move v10, v5

    aget-object v5, v8, v10

    if-nez v5, :cond_1

    new-instance v5, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v12, v9

    move-object v9, v6

    const/4 v6, 0x0

    move v14, v10

    move-object v10, v7

    const/4 v7, 0x0

    move-object v15, v8

    const/4 v8, 0x0

    move/from16 v18, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v20, v15

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v4, v18

    invoke-direct/range {v5 .. v17}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    move-object v8, v11

    aput-object v5, v20, v19

    goto :goto_1

    :cond_1
    move v4, v9

    move/from16 v19, v10

    move-object v8, v11

    move-object v10, v13

    move-object v9, v6

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v14}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    move-object v9, v6

    move-object v13, v10

    move-object v10, v7

    :goto_1
    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J4:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v5, v5, v19

    invoke-virtual {v5, v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetDiffuseTextureID(I)V

    add-int/lit8 v5, v19, 0x1

    move-object v11, v8

    move-object v6, v9

    move-object v7, v10

    move v9, v4

    const/4 v4, 0x3

    goto :goto_0

    :cond_2
    move v4, v9

    iput-boolean v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->M4:Z

    iput-boolean v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->N4:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
.end method
