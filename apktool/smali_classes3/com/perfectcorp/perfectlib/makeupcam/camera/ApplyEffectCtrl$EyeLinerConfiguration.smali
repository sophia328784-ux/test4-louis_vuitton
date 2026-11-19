.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EyeLinerConfiguration"
.end annotation


# instance fields
.field public A:[I

.field public final synthetic B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public n:Landroid/graphics/Bitmap;

.field public final o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

.field public final p:[[B

.field public final q:[[B

.field public final r:[[I

.field public final s:[[B

.field public t:[[I

.field public u:[[I

.field public v:[[I

.field public final w:[[I

.field public final x:[[I

.field public y:[[[B

.field public z:[[I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->EYELINER:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    invoke-direct {p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    new-array p2, p1, [[B

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->p:[[B

    new-array p2, p1, [[B

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->q:[[B

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->r:[[I

    new-array p2, p1, [[B

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->s:[[B

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->t:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->u:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->v:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->w:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->x:[[I

    new-array p2, p1, [[[B

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->y:[[[B

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->z:[[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->A:[I

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->w:[[I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->s:[[B

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->r:[[I

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->q:[[B

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->p:[[B

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v7}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v8

    iput-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {v7}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v7

    iput-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->n:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R2:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iput-object v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->S2:Landroid/graphics/Bitmap;

    iput-object v9, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T2:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->U2:Z

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v11, v1, v8

    aget-object v12, v5, v8

    aget-object v13, v4, v8

    aget-object v14, v3, v8

    aget-object v15, v2, v8

    const/16 v16, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_2

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v11, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v13, v1, v18

    aget-object v14, v5, v18

    aget-object v15, v4, v18

    aget-object v16, v3, v18

    aget-object v17, v2, v18

    const/4 v12, 0x1

    invoke-virtual/range {v11 .. v18}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v11, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v10, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->a:[I

    aget-object v14, v5, v18

    aget-object v15, v4, v18

    aget-object v16, v3, v18

    aget-object v17, v2, v18

    const/4 v12, 0x1

    invoke-virtual/range {v11 .. v18}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v9}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    sget-object v9, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v9}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v9

    iput-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    if-eqz v7, :cond_3

    iget-object v10, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v12, v1, v8

    aget-object v13, v5, v8

    aget-object v14, v4, v8

    aget-object v15, v3, v8

    aget-object v16, v2, v8

    const/16 v17, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_5

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v11, v1, v16

    aget-object v12, v5, v16

    aget-object v13, v4, v16

    aget-object v14, v3, v16

    aget-object v15, v2, v16

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$InvalidEyeBuffer;->a:[I

    aget-object v11, v5, v15

    aget-object v12, v4, v15

    aget-object v13, v3, v15

    aget-object v14, v2, v15

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->C(Z[I[B[B[I[BI)V

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->y:[[[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->z:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->A:[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->t:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->u:[[I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->v:[[I

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 13

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->o:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    const-string v4, "eye shadow payload can\'t be null"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;

    move-result-object v0

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v6}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowLinerModel;->a:[[B

    array-length v6, v0

    if-ge v5, v6, :cond_0

    const-string v7, "[Eye Shadow left] Color count is less than pattern count. color="

    const-string v8, ", pattern="

    invoke-static {v5, v6, v7, v8}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "ApplyEffectCtrl"

    invoke-static {v8, v9, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v7, v6, [I

    new-array v8, v6, [I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v9, v7, v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_3

    if-ne v5, v2, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v9, v7, v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v9, v8, v1

    goto :goto_2

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v9, v7, v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v9, v8, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-array v1, v6, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    move v11, v3

    :goto_3
    if-ge v11, v6, :cond_5

    if-ne v5, v2, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v12

    aput v12, v1, v11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    aput v12, v9, v11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->i()I

    move-result v12

    aput v12, v10, v11

    goto :goto_4

    :cond_4
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v12

    aput v12, v1, v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    aput v12, v9, v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->i()I

    move-result v12

    aput v12, v10, v11

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->w:[[I

    const v3, 0x20f58

    new-array v4, v3, [I

    aput-object v4, v2, p2

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->y:[[[B

    aput-object v0, v2, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->x:[[I

    aput-object v7, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->z:[[I

    aput-object v8, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->A:[I

    aput v6, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->u:[[I

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->t:[[I

    aput-object v10, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->v:[[I

    aput-object v9, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->p:[[B

    new-array v1, v3, [B

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->q:[[B

    new-array v1, v3, [B

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->s:[[B

    new-array v1, v3, [B

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->r:[[I

    new-array v1, v3, [I

    aput-object v1, v0, p2

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration$1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final p(I)V
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

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

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->o:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, v6, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_LoadObject3DHDR(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ApplyEffectCtrl"

    const-string v3, "EyeLiner load hdr file error."

    invoke-static {v2, v3}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->w:[[I

    aget-object v7, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->y:[[[B

    aget-object v8, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->x:[[I

    aget-object v9, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->z:[[I

    aget-object v10, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->A:[I

    aget v11, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->u:[[I

    aget-object v14, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->p:[[B

    aget-object v15, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->q:[[B

    aget-object v16, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->v:[[I

    aget-object v17, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->r:[[I

    aget-object v18, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->t:[[I

    aget-object v19, v2, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLinerConfiguration;->s:[[B

    aget-object v20, v2, p1

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v12, 0x1c2

    const/16 v13, 0x12c

    invoke-static/range {v4 .. v20}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_PreprocessEyelinerModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[Ljava/lang/Object;[I[IIII[I[B[B[I[I[I[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PreprocessEyelinerModel failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
