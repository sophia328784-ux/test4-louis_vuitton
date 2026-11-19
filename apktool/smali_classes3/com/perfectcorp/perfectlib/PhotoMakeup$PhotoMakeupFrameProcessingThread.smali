.class final Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PhotoMakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoMakeupFrameProcessingThread"
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

.field private final b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private volatile e:I

.field private volatile f:Landroid/os/Handler;

.field private volatile g:Lcom/cyberlink/clgpuimage/PixelBuffer;

.field private h:Landroid/os/Looper;

.field private i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;)V
    .locals 3

    const-string v0, "PhotoMakeupFrameProcessingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->K:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->L:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->A(Ljava/lang/Object;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->k0(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r0(Ljava/util/List;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Z)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    return-void
.end method

.method private a(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/perfectlib/internal/AppliedResult;
    .locals 88
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "[applyConfiguration] before apply"

    invoke-static {v2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->b()V

    const-string v2, "[applyConfiguration] configure"

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v4, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->n:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;

    invoke-interface {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;->update()V

    goto :goto_0

    :cond_0
    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->o:[Z

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->p:[I

    const/16 v7, -0x3e8

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    iget v9, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;->a:I

    if-eq v9, v7, :cond_1

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    if-eqz v5, :cond_2

    iget v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;->b:I

    if-eq v5, v7, :cond_2

    :goto_2
    move/from16 v34, v5

    goto :goto_3

    :cond_2
    const/4 v5, -0x1

    goto :goto_2

    :goto_3
    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v23

    if-eqz v23, :cond_3

    iget v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o:I

    move/from16 v24, v6

    goto :goto_4

    :cond_3
    move/from16 v24, v8

    :goto_4
    const/4 v6, 0x3

    new-array v7, v6, [Z

    new-array v9, v6, [I

    new-array v6, v6, [F

    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    if-ne v12, v11, :cond_4

    :try_start_1
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iget v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v12

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    int-to-float v10, v10

    move/from16 v61, v11

    move/from16 v62, v12

    :goto_5
    move/from16 v63, v10

    goto :goto_7

    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_5

    move v12, v8

    :goto_6
    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v14, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iget v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v14, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v14

    aput v14, v9, v12

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    int-to-float v13, v13

    aput v13, v6, v12

    aput-boolean v11, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    move/from16 v61, v8

    move/from16 v62, v61

    goto :goto_5

    :goto_7
    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->q:[Z

    invoke-static {v13, v11}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    iget v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    iget v15, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->a:I

    move/from16 v16, v11

    iget v11, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->b:I

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    move/from16 v28, v10

    move/from16 v27, v11

    move/from16 v30, v13

    move/from16 v29, v15

    :goto_9
    move-object/from16 v31, v12

    goto :goto_a

    :cond_7
    move/from16 v16, v11

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->q:[Z

    invoke-static {v10, v8}, Ljava/util/Arrays;->fill([ZZ)V

    sget-object v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_DARK_CIRCLE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    move/from16 v27, v8

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    goto :goto_9

    :goto_a
    sget-object v78, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual/range {v78 .. v78}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v12, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->k:Z

    move/from16 v79, v8

    move-object v13, v9

    iget-wide v8, v11, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v8, v9, v11, v12}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEnableEyebrowGoldenRatio(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    iget-object v8, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v9, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->l:Z

    iget-wide v11, v8, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v11, v12, v8, v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEyebrowMatchOriginalThickness(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    goto :goto_b

    :cond_8
    move/from16 v79, v8

    move-object v13, v9

    :goto_b
    iget-object v11, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v12

    move-object v8, v13

    iget v13, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->b:I

    iget-object v9, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    iget v15, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->c:I

    iget v10, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->d:I

    iget v14, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->e:I

    move-object/from16 v18, v6

    iget v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->f:I

    move/from16 v19, v6

    iget v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->g:I

    move/from16 v20, v6

    iget v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->h:I

    move/from16 v21, v6

    iget v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->i:I

    iget v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->j:I

    move/from16 v22, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->H:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b()Z

    move-result v25

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->q:[Z

    move-object/from16 v26, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->o:[Z

    move-object/from16 v32, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->p:[I

    move-object/from16 v33, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->H:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c()[Z

    move-result-object v35

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->m:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    sget-object v36, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->J:Ljava/util/Set;

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_c
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v38, v5

    move-object/from16 v5, v37

    check-cast v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    if-eqz v5, :cond_9

    move/from16 v37, v16

    goto :goto_d

    :cond_9
    move-object/from16 v5, v38

    goto :goto_c

    :cond_a
    move-object/from16 v38, v5

    move/from16 v37, v79

    :goto_d
    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    move/from16 v36, v5

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v39

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v40

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v41

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v42

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v43

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v44

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v45

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->E:I

    if-lez v5, :cond_b

    move/from16 v46, v16

    goto :goto_e

    :cond_b
    move/from16 v46, v79

    :goto_e
    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->r:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    move-object/from16 v47, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->s:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    move-object/from16 v48, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->t:[I

    move-object/from16 v49, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->u:[I

    move-object/from16 v50, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->v:[I

    move-object/from16 v51, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->w:[F

    move-object/from16 v52, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->x:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    move-object/from16 v53, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->y:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    move-object/from16 v54, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->z:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    move-object/from16 v55, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->A:[F

    move-object/from16 v56, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->B:[F

    move-object/from16 v57, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->C:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    move-object/from16 v58, v5

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->D:[F

    move-object/from16 v59, v5

    iget v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->E:I

    move/from16 v60, v5

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v64

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v65

    aget-boolean v66, v7, v79

    aget v67, v8, v79

    aget v68, v18, v79

    aget-boolean v69, v7, v16

    aget v70, v8, v16

    aget v71, v18, v16

    const/4 v5, 0x2

    aget-boolean v72, v7, v5

    aget v73, v8, v5

    aget v74, v18, v5

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v75

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v76

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->G:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    move-object v5, v9

    move/from16 v7, v16

    move/from16 v16, v10

    iget-wide v9, v11, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->a()I

    move-result v5

    move-object/from16 v17, v38

    move/from16 v38, v36

    move-object/from16 v36, v17

    move-object/from16 v77, v4

    move/from16 v17, v14

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    const/4 v4, 0x0

    move v14, v5

    move/from16 v21, v6

    invoke-static/range {v9 .. v77}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetMakeupParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZIIIIIIIIIIZIZ[ZIIIILjava/lang/Object;[Z[II[Z[Ljava/lang/Object;ZZZZZZZZZZ[Ljava/lang/Object;[Ljava/lang/Object;[I[I[I[F[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[F[F[Ljava/lang/Object;[FIZIFZZZIFZIFZIFZZ[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v78 .. v78}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v8, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v9, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iget-wide v10, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v86, 0x0

    const/16 v87, 0x0

    move-object/from16 v82, v5

    move-object/from16 v83, v6

    move/from16 v84, v8

    move/from16 v85, v9

    move-wide/from16 v80, v10

    invoke-static/range {v80 .. v87}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZ)Z

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->k:[Landroid/graphics/Rect;

    iget-object v8, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    iget-wide v9, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v9, v10, v5, v6, v8}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Z)Z

    move-result v5

    iget-boolean v6, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->c:Z

    if-eqz v6, :cond_d

    if-eqz v5, :cond_c

    goto :goto_f

    :cond_c
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;

    const-string v1, "No face detected."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_f
    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget v6, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v8, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    invoke-virtual {v5, v6, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->b(II)Z

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->M:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    if-eqz v9, :cond_e

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->I:[Ljava/util/List;

    aget-object v15, v6, v79

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    aget-boolean v16, v5, v79

    iget-object v10, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v11, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v12, v3, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v16}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->sendCameraFrame([BIIIZLjava/lang/Object;Z)Z

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->L:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->M:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    invoke-interface {v5}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->getMetadata()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->SetNecklaceMetadata(Ljava/lang/Object;)V

    :cond_e
    move/from16 v3, v79

    :goto_10
    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    array-length v5, v5

    if-ge v3, v5, :cond_10

    iget v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->N:I

    if-eq v3, v5, :cond_f

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    aput-boolean v79, v5, v3

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->j:[Z

    aput-boolean v79, v5, v3

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_10
    iget-object v3, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->F:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->run()V

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->F:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    :cond_11
    iget-object v3, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->j:[Z

    invoke-virtual {v3, v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->a([Z[Z)V

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->I:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v3, :cond_12

    goto :goto_11

    :cond_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_11

    :cond_13
    iget-object v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->i:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_11
    const-string v2, "[applyConfiguration] update"

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    iget v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->b:I

    iget v4, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->c:I

    mul-int v5, v3, v4

    invoke-static {v5}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v15

    iget-object v8, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->i:Ljavax/microedition/khronos/opengles/GL10;

    iget v11, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->b:I

    iget v12, v2, Lcom/cyberlink/clgpuimage/PixelBuffer;->c:I

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v8 .. v15}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v15}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->d:I

    if-ne v3, v4, :cond_14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->e:I

    if-ne v3, v4, :cond_14

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_14
    new-instance v3, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    iget v4, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->d:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->e:I

    invoke-static {v2, v4, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;Landroid/graphics/Bitmap;)V

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;)V
    .locals 0

    .line 1013
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->d()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v1, 0x505

    if-eq v0, v1, :cond_1

    const-string v1, "[GL error] "

    const-string v2, " error=0x"

    .line 1033
    invoke-static {v1, p0, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1035
    :pswitch_0
    const-string v0, "GL_INVALID_FRAMEBUFFER_OPERATION"

    goto :goto_1

    :pswitch_1
    const-string v0, "GL_OUT_OF_MEMORY"

    goto :goto_1

    :pswitch_2
    const-string v0, "GL_STACK_UNDERFLOW"

    goto :goto_1

    :pswitch_3
    const-string v0, "GL_STACK_OVERFLOW"

    goto :goto_1

    :pswitch_4
    const-string v0, "GL_INVALID_OPERATION"

    goto :goto_1

    :pswitch_5
    const-string v0, "GL_INVALID_VALUE"

    goto :goto_1

    :pswitch_6
    const-string v0, "GL_INVALID_ENUM"

    goto :goto_1

    :cond_0
    const-string v0, "GL_NO_ERROR"

    .line 1036
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoMakeup"

    invoke-static {v1, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "[GL error][OOM] "

    .line 1037
    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1038
    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Landroid/os/Looper;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->i:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    throw p0

    :cond_1
    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->h:Landroid/os/Looper;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->i:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->h:Landroid/os/Looper;

    if-eqz v0, :cond_3

    monitor-exit p0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->i:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private b(F)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v1, 0x0

    .line 50
    :goto_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e0:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;

    .line 51
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    .line 52
    iput p1, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;->O:F

    .line 53
    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter;->G()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->y0(F)V

    return-void
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b(F)V

    return-void
.end method

.method private c()Landroid/os/Looper;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->h:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->h:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic c(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/perfectlib/internal/AppliedResult;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 14

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b:[Landroid/graphics/PointF;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v6, 0x1c2

    const/16 v7, 0x12c

    invoke-static/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitialEyeModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;II)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v3, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v5, 0xc8

    invoke-static {v3, v4, v2, v5, v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitialEyeContactModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget v9, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->Q:I

    iget v10, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->R:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget-wide v6, v8, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v6 .. v13}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetEyeContactModelParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    const-string v1, "PhotoMakeup"

    const-string v2, "Out of memory when init eye model"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->I0(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l0:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1014
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 1015
    new-instance v0, Lcom/perfectcorp/perfectlib/n3;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/n3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;F)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->i:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    const/4 v1, 0x0

    .line 1016
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iput p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->d:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->e:I

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    sget-object p3, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    new-instance p3, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;

    invoke-direct {p3}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;-><init>()V

    .line 1019
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    .line 1020
    iput-object v0, p3, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->a:[B

    .line 1021
    iget v0, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    .line 1022
    iput v0, p3, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->b:I

    .line 1023
    iget v0, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    .line 1024
    iput v0, p3, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->c:I

    .line 1025
    iget-wide v2, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    .line 1026
    iput-wide v2, p3, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    .line 1027
    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    invoke-direct {p1, p3}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;)V

    .line 1028
    invoke-virtual {p2, p1, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->k(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    new-instance p2, Lcom/perfectcorp/perfectlib/s;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/perfectcorp/perfectlib/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1029
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1030
    :cond_1
    const-string p0, "Can not set image frame twice."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1031
    :cond_2
    :try_start_1
    throw v0

    .line 1032
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;",
            ")",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "Lcom/perfectcorp/perfectlib/internal/AppliedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/perfectlib/z;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string p1, "Frame processing handler thread already quit."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    new-instance v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;-><init>()V

    const/16 v3, 0x10

    iput v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->a:I

    const/16 v3, 0x8

    iput v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->b:I

    iput v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->c:I

    iput v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->d:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->e:I

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->a()Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lcom/cyberlink/clgpuimage/PixelBuffer;

    iget v5, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/cyberlink/clgpuimage/PixelBuffer;-><init>(IILjavax/microedition/khronos/egl/EGLContext;Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;Z)V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->i:Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->j:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v4, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget v5, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->b:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/PixelBuffer;->c:I

    invoke-interface {v2, v4, v5, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :goto_0
    const-string v0, "[run] setRenderer"

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->h:Landroid/os/Looper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->w:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/PixelBuffer;->a()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_2
    move-exception v0

    const-string v2, "PhotoMakeup"

    const-string v3, "Create pixel buffer failed. Maybe the image size is too large?"

    invoke-static {v2, v3}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    const-string v2, "PhotoMakeup"

    const-string v3, "[run] failed"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->i:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->w:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/PixelBuffer;->a()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->g:Lcom/cyberlink/clgpuimage/PixelBuffer;

    :cond_2
    throw v0
.end method

.method public final runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p0, "PhotoMakeup"

    const-string p1, "[runOnGLThread] handler is null"

    invoke-static {p0, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
