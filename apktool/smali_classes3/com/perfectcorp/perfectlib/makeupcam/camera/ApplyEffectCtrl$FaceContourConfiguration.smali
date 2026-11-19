.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceContourConfiguration"
.end annotation


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:I

.field public final synthetic C:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public n:I

.field public o:I

.field public p:Landroid/graphics/Point;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Landroid/graphics/Bitmap;

.field public v:Landroid/graphics/Bitmap;

.field public w:Landroid/graphics/Bitmap;

.field public x:I

.field public y:I

.field public z:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->FACE_CONTOUR:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->B:I

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->n:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->o:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->p:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->q:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->u:Landroid/graphics/Bitmap;

    iget v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->t:I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->w:Landroid/graphics/Bitmap;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->v:Landroid/graphics/Bitmap;

    iget v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->x:I

    iget v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->y:I

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->z:Landroid/graphics/Point;

    iget v14, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v16, :cond_0

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h1()Landroid/graphics/Bitmap;

    move-result-object v16

    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    if-nez v11, :cond_1

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h1()Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_1
    if-nez v17, :cond_2

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h1()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_0

    :cond_2
    move-object/from16 v0, v17

    :goto_0
    if-nez v9, :cond_3

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h1()Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_3
    move/from16 v16, v3

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->i5:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->k5:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m5:Landroid/graphics/Bitmap;

    iput-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->o5:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q5:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v2, v9, :cond_5

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->j5:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;

    aget-object v17, v9, v2

    if-nez v17, :cond_4

    new-instance v17, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;

    invoke-direct/range {v17 .. v17}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;-><init>()V

    aput-object v17, v9, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v3

    goto/16 :goto_3

    :cond_4
    :goto_2
    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->j5:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;

    aget-object v9, v9, v2

    move/from16 v17, v2

    move-object v2, v9

    iget v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->n5:I

    move-object/from16 v18, v11

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v3

    move/from16 v3, v16

    move/from16 v16, v12

    :try_start_1
    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l5:I

    move-object/from16 v20, v18

    move/from16 v18, v13

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v21, v17

    move/from16 v17, v14

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 p1, v0

    iget v0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r5:I

    move-object/from16 v22, v20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v23, v21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v24, v19

    move/from16 v19, v0

    move/from16 v0, v23

    move-object/from16 v23, v24

    :try_start_2
    invoke-virtual/range {v2 .. v21}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->a(IIIIIIIIIIIIIIIIIII)V

    add-int/lit8 v2, v0, 0x1

    move-object/from16 v0, p1

    move/from16 v12, v16

    move/from16 v14, v17

    move/from16 v13, v18

    move-object/from16 v11, v22

    move/from16 v16, v3

    move-object/from16 v3, v23

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v23, v19

    goto :goto_3

    :cond_5
    move-object/from16 v23, v3

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t5:Z

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :goto_3
    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 12

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/s;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;ILcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;)V

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->c:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->B:I

    const/4 p1, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p1

    :goto_1
    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->n:I

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p1

    :goto_3
    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->o:I

    if-lez p2, :cond_6

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    iget-object p2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result p2

    goto :goto_4

    :cond_5
    move p2, p1

    :goto_4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_6

    :cond_6
    :goto_5
    move p2, p1

    :goto_6
    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->q:I

    const/16 p2, 0x32

    if-nez v1, :cond_8

    :cond_7
    move v0, p2

    goto :goto_8

    :cond_8
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v3, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    goto :goto_7

    :cond_9
    move v0, p2

    :goto_7
    if-ltz v0, :cond_7

    :goto_8
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->r:I

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v3, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->m:I

    goto :goto_9

    :cond_b
    move v0, p2

    :goto_9
    if-ltz v0, :cond_c

    move p2, v0

    :cond_c
    :goto_a
    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->s:I

    if-nez v1, :cond_d

    move p2, p1

    goto :goto_c

    :cond_d
    iget-object p2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v0, :cond_e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->i:I

    goto :goto_b

    :cond_e
    move p2, p1

    :goto_b
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_c
    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->t:I

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->v:Landroid/graphics/Bitmap;

    invoke-static {p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->p:Landroid/graphics/Point;

    if-nez v2, :cond_f

    goto :goto_d

    :cond_f
    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v1, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    goto :goto_e

    :cond_10
    :goto_d
    move v0, p1

    :goto_e
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->x:I

    if-nez v2, :cond_11

    goto :goto_f

    :cond_11
    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    if-ltz v1, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    :cond_12
    :goto_f
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->y:I

    invoke-static {p2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->A:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->z:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->v:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->p:Landroid/graphics/Point;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->c(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    move-result-object v3

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->A:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->z:Landroid/graphics/Point;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->c(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;-><init>()V

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;-><init>()V

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;-><init>()V

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->q:I

    iget v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->r:I

    iget v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->s:I

    iget v11, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->t:I

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v0 .. v11}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitializeFaceContour(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIII)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object p1, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    const/4 p2, 0x0

    if-eqz p1, :cond_13

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget v0, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    iget v1, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_10

    :cond_13
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->u:Landroid/graphics/Bitmap;

    :goto_10
    iget-object p1, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget v0, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_width:I

    iget v1, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object p1, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_data:[B

    if-eqz p1, :cond_14

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget p2, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_stride:I

    iget v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_height:I

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_11

    :cond_14
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->w:Landroid/graphics/Bitmap;

    :goto_11
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FaceContourConfiguration;->z:Landroid/graphics/Point;

    iget-object p2, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourProfile;->m_roi_start:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_15
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "InitializeFaceContour failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method
