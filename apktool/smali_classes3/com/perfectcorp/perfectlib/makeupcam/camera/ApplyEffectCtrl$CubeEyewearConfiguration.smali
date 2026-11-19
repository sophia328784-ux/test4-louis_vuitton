.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CubeEyewearConfiguration"
.end annotation


# instance fields
.field public final n:Ljava/util/ArrayList;

.field public volatile o:Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

.field public final synthetic p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 3

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->n:Ljava/util/ArrayList;

    new-instance p2, Li7;

    invoke-direct {p2, p1, v1}, Li7;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->g()V

    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->n:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_e

    if-nez v4, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e0:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;

    array-length v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    const/4 v8, 0x4

    aput v8, v6, v7

    const/4 v9, 0x0

    aput v5, v6, v9

    const-class v10, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-object v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m3:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v9

    :goto_0
    if-ge v11, v4, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->IsValid()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->k3:Ljava/lang/Object;

    monitor-enter v11

    const/4 v12, 0x3

    :try_start_0
    new-array v14, v12, [F

    fill-array-data v14, :array_0

    new-array v15, v12, [F

    fill-array-data v15, :array_1

    new-array v13, v12, [F

    fill-array-data v13, :array_2

    new-array v12, v12, [F

    fill-array-data v12, :array_3

    const-string v16, "front_texture"

    const-string v17, "env_region_texture"

    const-string v18, "left_texture"

    const-string v19, "right_texture"

    const-string v20, "env_map_texture"

    const-string v21, "env_frame_texture"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v16

    iput-boolean v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->u3:Z

    iput-boolean v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v3:Z

    iput-boolean v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->w3:Z

    move-object/from16 p1, v6

    move/from16 v26, v7

    move/from16 p2, v9

    move/from16 v6, p2

    move/from16 v9, v26

    :goto_1
    const/4 v8, 0x6

    if-ge v6, v8, :cond_7

    aget-object v8, v16, v6

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int v19, v19, v20

    move-object/from16 v28, v2

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q3:[[B

    aput-object v2, v8, v6

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r3:[I

    aput v17, v2, v6

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s3:[I

    aput v18, v2, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q3:[[B

    aput-object p1, v2, v6

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r3:[I

    aput p2, v2, v6

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s3:[I

    aput p2, v2, v6

    const/4 v2, 0x4

    if-ge v6, v2, :cond_5

    move/from16 v9, p2

    goto :goto_2

    :cond_5
    if-ne v6, v2, :cond_6

    move/from16 v7, p2

    goto :goto_2

    :cond_6
    move/from16 v26, p2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v28

    goto :goto_1

    :cond_7
    move-object/from16 v28, v2

    iput-boolean v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->u3:Z

    iput-boolean v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v3:Z

    move/from16 v7, v26

    iput-boolean v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->w3:Z

    move/from16 v2, p2

    :goto_3
    if-ge v2, v5, :cond_b

    move/from16 v6, p2

    const/4 v7, 0x4

    :goto_4
    if-ge v6, v7, :cond_a

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v7, v7, v2

    move-object/from16 v16, v13

    aget-object v13, v7, v6

    if-nez v13, :cond_8

    new-instance v13, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v19, v16

    const/16 v16, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v25}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    move-object/from16 v16, v19

    aput-object v13, v7, v6

    goto :goto_5

    :cond_8
    move-object/from16 v18, v12

    move-object/from16 v17, v14

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v13 .. v22}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    move-object/from16 v17, v14

    move-object/from16 v21, v18

    move-object/from16 v18, v15

    :goto_5
    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p3:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetDiffuseTextureID(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    :try_start_1
    aget-object v7, v7, v2

    aget-object v7, v7, v6

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p3:[I

    const/16 v27, 0x4

    aget v8, v8, v27

    invoke-virtual {v7, v8}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetEnvironmentTextureID(I)V

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->r:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->u:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->s:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iget v8, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->t:F

    :goto_6
    iput v8, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    goto :goto_7

    :cond_9
    const/16 v27, 0x4

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p3:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetEnvironmentTextureID(I)V

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l3:[[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->v:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->y:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->w:F

    iput v9, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iget v8, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->x:F

    goto :goto_6

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v12, v21

    move/from16 v7, v27

    goto/16 :goto_4

    :cond_a
    move/from16 v27, v7

    move-object/from16 v21, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_b
    if-lez v4, :cond_c

    new-array v2, v4, [Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m3:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    :cond_c
    move/from16 v9, p2

    :goto_8
    if-ge v9, v4, :cond_d

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m3:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    new-instance v12, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iget-object v13, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->vertex_array:[F

    iget-object v14, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->normal_array:[F

    iget-object v15, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->texcoord_array:[F

    iget-object v6, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->ambient_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    iget-object v6, v6, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->color:[F

    iget-object v7, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->diffuse_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    iget-object v7, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->color:[F

    iget-object v8, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->specular_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    iget-object v8, v8, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->color:[F

    move-object/from16 v25, v3

    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->dissolve:F

    move/from16 v19, v3

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->transmission_filter:[F

    move-object/from16 v20, v3

    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_mode:F

    move/from16 v21, v3

    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_intensity:F

    move/from16 v22, v3

    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_tile_x:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_tile_y:F

    move/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v24}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    aput-object v12, v5, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v25

    goto :goto_8

    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t3:Z

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->clear()V

    monitor-exit v11

    goto :goto_a

    :goto_9
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    :goto_a
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->q(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->k:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    if-eqz p2, :cond_1

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->k:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "default eyewear occluder file doesn\'t exist defaultEyewearOccluderFilePath="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->k:Ljava/lang/String;

    const-string v0, ", customOccluderPath="

    invoke-static {p0, p2, v0, p1}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$CubeEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iget-wide v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/4 v8, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v3 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_LoadObject3DModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    const-string p0, "Load occluder file failed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
