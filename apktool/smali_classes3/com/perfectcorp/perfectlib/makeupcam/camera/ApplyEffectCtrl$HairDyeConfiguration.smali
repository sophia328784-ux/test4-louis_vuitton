.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HairDyeConfiguration"
.end annotation


# instance fields
.field public n:I

.field public o:[I

.field public p:[I

.field public q:[I

.field public r:[I

.field public s:[I

.field public t:Lcom/perfectcorp/perfectlib/jniproxy/VN_HairDyeMode;

.field public u:F

.field public v:F

.field public final synthetic w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->HAIR_DYE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    return-void
.end method

.method public static q(Ljava/util/List;Ljava/util/List;[I[I[I[I[IIILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    if-ne p9, v0, :cond_1

    const/4 p9, 0x0

    invoke-interface {p0, p9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    aput v0, p2, p8

    invoke-interface {p0, p9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    aput p2, p3, p8

    invoke-interface {p0, p9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    aput p2, p4, p8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-le p7, p0, :cond_0

    invoke-interface {p1, p9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    aput p0, p5, p8

    invoke-interface {p1, p9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    aput p0, p6, p8

    return-void

    :cond_0
    aput p9, p5, p8

    aput p9, p6, p8

    return-void

    :cond_1
    invoke-interface {p0, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p9, p9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    aput p9, p2, p8

    invoke-interface {p0, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    aput p2, p3, p8

    invoke-interface {p0, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    aput p0, p4, p8

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    aput p0, p5, p8

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    aput p0, p6, p8

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 12

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {p1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->o:[I

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->p:[I

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q:[I

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->r:[I

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->s:[I

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->t:Lcom/perfectcorp/perfectlib/jniproxy/VN_HairDyeMode;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/jniproxy/VN_HairDyeMode;->a()I

    move-result v8

    iget v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->n:I

    iget v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->u:F

    iget v11, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->v:F

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v0 .. v11}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetHairDyeParameter(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[I[I[I[IIIFF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    instance-of v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v3, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v3}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v5

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->a:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v7}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v3, v5, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    iput v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->n:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->n:I

    if-eq v8, v9, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->n:I

    const-string v1, ", payloadColors size: "

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "HairDye color count and payload color count are not the same. color size: "

    invoke-static {v1, v0, v2, v3}, Lv7;->e(Ljava/lang/Object;IILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-array v3, v9, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->o:[I

    new-array v3, v9, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->p:[I

    new-array v3, v9, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q:[I

    new-array v3, v9, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->r:[I

    new-array v3, v9, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->s:[I

    iget-boolean v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->d:Z

    if-eqz v3, :cond_3

    add-int/lit8 v9, v9, -0x1

    move v14, v4

    move v13, v9

    :goto_1
    if-ltz v13, :cond_4

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->o:[I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->p:[I

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q:[I

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->r:[I

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->s:[I

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-static/range {v6 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q(Ljava/util/List;Ljava/util/List;[I[I[I[I[IIILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;)V

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move v13, v4

    move v14, v13

    :goto_2
    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->n:I

    if-ge v13, v3, :cond_4

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->o:[I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->p:[I

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q:[I

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->r:[I

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->s:[I

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-static/range {v6 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->q(Ljava/util/List;Ljava/util/List;[I[I[I[I[IIILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->i(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v3

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b()F

    move-result v5

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->P:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b()F

    move-result v5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    iget v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->n:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const v5, 0x3ecccccd    # 0.4f

    :goto_3
    iput v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->u:F

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c()F

    move-result v5

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->O:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c()F

    move-result v2

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    iget v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->m:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    iput v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->v:F

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->f()Lcom/perfectcorp/perfectlib/jniproxy/VN_HairDyeMode;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;->t:Lcom/perfectcorp/perfectlib/jniproxy/VN_HairDyeMode;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;

    const/4 v3, 0x2

    move/from16 v4, p2

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;II)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_9
    const-string v0, "HairDye color count or intensities are empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "HairDye\'s payload is not valid!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
