.class final Lcom/perfectcorp/perfectlib/MakeupCamInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;,
        Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    }
.end annotation


# static fields
.field public static final n:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final o:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final f:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

.field public final h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final j:Z

.field public k:I

.field public l:I

.field public final m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move v5, v4

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->o:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MakeupCamInternal#downloadTaskExecutor"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "MakeupCamInternal#applyTaskExecutor"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCam;->d:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->j:Z

    new-instance v0, Lcom/perfectcorp/perfectlib/m2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/m2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCam;->h:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

    return-void
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EARRINGS:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->patternGuids:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid patternGuid. effect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", productGuid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", skuGuid="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", patternGuid="

    invoke-static {v1, p1, p0, p2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static C(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 19

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v6

    move v8, v7

    :goto_0
    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_5

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    if-nez v8, :cond_0

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->patternGuid:Ljava/lang/String;

    :cond_0
    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->skuGuid:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    goto :goto_1

    :cond_1
    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_1
    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v11

    iget v12, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteColorIndex:I

    if-ltz v12, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lt v12, v13, :cond_2

    goto :goto_2

    :cond_2
    iget v12, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteColorIndex:I

    goto :goto_3

    :cond_3
    :goto_2
    move v12, v7

    :goto_3
    new-instance v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_4

    move-object/from16 v11, p4

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_4
    iput v10, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_5

    :cond_4
    move-object/from16 v11, p4

    iget v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->colorIntensity:I

    goto :goto_4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->styleGuid:Ljava/lang/String;

    iget v7, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->innerRatio:I

    iget v8, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->featherStrength:I

    invoke-direct {v11, v4, v7, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;-><init>(Ljava/lang/String;II)V

    iget v12, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->gloss:I

    new-instance v13, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->a()I

    move-result v4

    iget v7, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerIntensity:I

    iget v8, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerDensity:I

    iget v14, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->shimmerGranularity:I

    invoke-direct {v13, v4, v7, v8, v14}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    iget v14, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->transparency:I

    iget v15, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->fullness:I

    iget v4, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wrinkless:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v4

    invoke-direct/range {v10 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;ILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIILjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-static {v7, v5, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    const-string v3, "no pattern guid found"

    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v3

    invoke-interface {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v4, v1, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-direct {v5, v6, v1, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    goto :goto_7

    :cond_7
    return-object v4

    :cond_8
    const-string v0, "configuration is not valid"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6
.end method

.method public static a(IILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)V

    iput p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->l:I

    iput p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->m:I

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Z)Landroid/util/Pair;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/z;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/perfectcorp/perfectlib/c2;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    new-instance p2, Lcom/perfectcorp/perfectlib/c2;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/EffectId;
    .locals 10

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    move-result-object p0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v6, Lp00;

    invoke-direct {v6, p0, v8}, Lp00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v6, Lcom/perfectcorp/perfectlib/c2;

    invoke-direct {v6, v7}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->f:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-virtual {v6, p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Invalid sub-palette GUID. paletteGuid="

    const-string p1, ", subPaletteGuid="

    invoke-static {p0, v2, p1, v3}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 21

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v6, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$3;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unsupported feature="

    invoke-static {v0, v1}, Lb21;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-object/from16 v8, p0

    invoke-direct {v2, v8, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    return-object v1

    :cond_2
    move-object/from16 v8, p0

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v15, v2

    goto :goto_1

    :cond_3
    move-object v15, v4

    :goto_1
    if-eqz v6, :cond_6

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v2, v4

    :cond_6
    :goto_2
    invoke-static {v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v1

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v5, v13}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->r(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v4

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v5, v6, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_8
    invoke-static {v4, v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    invoke-static {v2, v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    const/16 v4, 0x64

    if-gt v3, v4, :cond_9

    move/from16 v20, v3

    goto :goto_4

    :cond_9
    move/from16 v20, v7

    :goto_4
    iget-object v12, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v8 .. v20}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v12, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    move-object/from16 v13, p9

    iget-object v14, v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v14, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    iput-object v13, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    iput-object v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->f:Ljava/lang/String;

    move/from16 v6, p2

    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->l:I

    move/from16 v6, p3

    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->m:I

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-ne v14, v6, :cond_7

    sget-object v6, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-result-object v6

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v10, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v11, "browpositionx"

    const/16 v7, -0x3e8

    invoke-static {v10, v11, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v7, :cond_0

    invoke-static {v6, v11, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    :cond_0
    iget v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->N:I

    :goto_0
    iput v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->n:I

    const-string v10, "browpositiony"

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v7, :cond_1

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    goto :goto_1

    :cond_1
    iget v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->O:I

    :goto_1
    iput v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->o:I

    const-string v10, "browthickness"

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v7, :cond_2

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    goto :goto_2

    :cond_2
    iget v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->P:I

    :goto_2
    iput v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->p:I

    const-string v10, "browcurvature"

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v7, :cond_3

    invoke-static {v6, v10, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    goto :goto_3

    :cond_3
    iget v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->Q:I

    :goto_3
    iput v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->q:I

    const-string v10, "browdefinition"

    invoke-static {v6, v10, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v8, :cond_4

    invoke-static {v6, v10, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v8

    goto :goto_4

    :cond_4
    iget v8, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->R:I

    :goto_4
    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->r:I

    const-string v8, "browheadlocation"

    invoke-static {v6, v8, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v7, :cond_5

    invoke-static {v6, v8, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v8

    goto :goto_5

    :cond_5
    iget v8, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->c0:I

    :goto_5
    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->s:I

    const-string v8, "browtaillocation"

    invoke-static {v6, v8, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v7, :cond_6

    invoke-static {v6, v8, v7}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v6

    goto :goto_6

    :cond_6
    iget v6, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->d0:I

    :goto_6
    iput v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->t:I

    move-object/from16 v11, p1

    move-object/from16 v7, p11

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/16 p3, 0x0

    goto/16 :goto_f

    :cond_7
    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v6, :cond_8

    iget-object v8, v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const/4 v9, 0x0

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v11, p1

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    const/16 p3, 0x0

    const/4 v15, 0x0

    invoke-static/range {v1 .. v11}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->u(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;ZLjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    move-object v9, v2

    move-object v10, v3

    move-object v8, v1

    goto/16 :goto_f

    :cond_8
    move-object/from16 v11, p1

    move-object/from16 v6, p10

    move-object v9, v2

    move-object v10, v3

    const/16 p3, 0x0

    const/4 v15, 0x0

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v2, :cond_10

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    sget v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-result-object v2

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v7, v4, v5, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v17, v1

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_7

    :cond_9
    move v7, v15

    :goto_7
    iget v8, v8, Lcom/perfectcorp/perfectlib/ph/template/m;->o:I

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object/from16 v8, v17

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    move-object v4, v2

    move-object v5, v3

    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    const-string v3, "lip_liner_texture_satin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;->LIPLINER_BRIGHT:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    goto :goto_8

    :cond_a
    sget-object v2, Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;->LIPLINER_THICK:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    :goto_8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    move-object/from16 v2, v19

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v6, "thickness"

    const/4 v15, -0x1

    invoke-static {v3, v6, v15}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v3, "smoothness"

    invoke-static {v2, v3, v15}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    move-object/from16 v2, v20

    if-eqz v2, :cond_b

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->i:I

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    iput v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    if-eqz v2, :cond_c

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->j:I

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    iput v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    if-eqz v2, :cond_d

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->k:I

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    iput v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->f(Z)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->M:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    goto/16 :goto_f

    :cond_e
    const-string v0, ", paletteGuid="

    const-string v1, ", subPaletteGuid="

    const-string v2, "[fillLipLinerParameters] PatternPaletteInfo is not in database, patternGuid="

    invoke-static {v2, v4, v0, v5, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v0}, Lbm;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object p3

    :cond_f
    const-string v0, "[fillLipLinerParameters] pattern is not in database, patternGuid="

    invoke-static {v0, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object p3

    :cond_10
    move-object/from16 v7, p11

    move-object v8, v1

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v1, :cond_19

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {v7}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "N/A"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v15, 0x0

    goto :goto_c

    :cond_12
    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->E(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    move-result-object v1

    iget v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->ombreRange:F

    iget v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->ombreLineOffset:F

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    new-instance v15, Lg7;

    const/4 v12, 0x3

    invoke-direct {v15, v12}, Lg7;-><init>(I)V

    invoke-static {v6, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v6, Lg7;

    const/4 v12, 0x4

    invoke-direct {v6, v12}, Lg7;-><init>(I)V

    invoke-static {v7, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    new-instance v6, Lg7;

    const/4 v12, 0x5

    invoke-direct {v6, v12}, Lg7;-><init>(I)V

    invoke-static {v1, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->z:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->B:F

    iput v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->A:F

    goto/16 :goto_f

    :goto_c
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->g:I

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v3

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v12

    if-eqz v3, :cond_13

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v5, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v12

    :cond_13
    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    if-ne v6, v3, :cond_17

    invoke-virtual {v12}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v12}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    goto :goto_d

    :cond_14
    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    :goto_d
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v6, "ombre_range"

    sget-object v12, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const/high16 v12, -0x3b860000    # -1000.0f

    :try_start_0
    iget-object v15, v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v15, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v3, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->f()F

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :catchall_0
    :cond_15
    move v6, v12

    :goto_e
    iput v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->B:F

    const-string v6, "ombre_line_offset"

    :try_start_1
    iget-object v15, v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v15, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v3, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->f()F

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_16
    iput v12, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->A:F

    const-string v6, "coloring_section"

    invoke-static {v3, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->D:Ljava/lang/String;

    :cond_17
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->z:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    goto/16 :goto_f

    :cond_18
    const-string v0, "[fillHairDyeParameters] color is empty!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object p3

    :cond_19
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v1, :cond_1b

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {v7}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->i:I

    iput v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->k:I

    iput v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    goto :goto_f

    :cond_1a
    const-string v0, "[fillFoundationParameters] color is empty!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object p3

    :cond_1b
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v1, :cond_1d

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    goto :goto_f

    :cond_1c
    iput-object v13, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    goto :goto_f

    :cond_1d
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v1, :cond_1e

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-result-object v1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v3, "color_under_eye_intensity"

    const/4 v15, -0x1

    invoke-static {v2, v3, v15}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->Q:I

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v2, "coverage_level"

    invoke-static {v1, v2, v15}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->R:I

    :cond_1e
    :goto_f
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v1, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v2, :cond_1f

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v3, v0, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    invoke-static {v11, v2, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;)V

    goto :goto_13

    :cond_1f
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v14, v2, :cond_20

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v14, v3, :cond_23

    :cond_20
    instance-of v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    if-eqz v3, :cond_21

    :goto_10
    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    goto :goto_11

    :cond_21
    instance-of v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    if-eqz v2, :cond_22

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    goto :goto_10

    :cond_22
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    :goto_11
    invoke-virtual {v2, v14}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v3, v0, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_12
    iget-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    if-ge v7, v0, :cond_24

    invoke-virtual {v3, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    move/from16 v1, p12

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->g:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_24
    invoke-virtual {v3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->l(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->m(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    invoke-static {v11, v14, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;)V

    :goto_13
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v1, v14, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    move-object/from16 v12, p4

    iget-object v2, v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-direct {v0, v2, v14, v10}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    return-object v1

    :cond_25
    const-string v0, "configuration is not valid"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object p3
.end method

.method public static f(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/EffectId;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 27

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "configuration is not valid"

    if-eqz v4, :cond_0

    const-string v4, "_lk_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " isLookSkuSet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    const-string v8, "MakeupCamInternal"

    invoke-static {v4, v8, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    move-object v8, v2

    move-object/from16 v24, v6

    const/16 v16, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_d

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v4, p1

    move-object v8, v2

    move-object/from16 v2, p0

    iget-object v0, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v0, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v10, "N/A"

    iput-object v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    sget-object v11, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v15, v7, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    :try_start_0
    invoke-virtual {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->E(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    move-result-object v7

    iget-object v14, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->patternGuid:Ljava/lang/String;

    move-object/from16 v24, v6

    const/4 v15, 0x0

    :goto_2
    iget-object v6, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_a

    iget-object v6, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    move-object/from16 p2, v7

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v5

    move-object/from16 v5, v17

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    goto :goto_3

    :cond_4
    iget-object v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v5

    invoke-virtual {v13, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v5

    move-object/from16 p4, v11

    iget v11, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    move-object/from16 v25, v13

    if-ltz v11, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lt v11, v13, :cond_5

    goto :goto_4

    :cond_5
    iget v11, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v11, 0x0

    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v18, v14

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v26, v8

    const/4 v14, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_9

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v8, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    if-ne v14, v11, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_7

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_7
    iput v5, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_8

    :cond_7
    iget v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->colorIntensity:I

    goto :goto_7

    :goto_8
    iget v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shimmerIntensity:I

    move/from16 v21, v11

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput v5, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->d:I

    iget v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->metallicIntensity:I

    iput v5, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->e:I

    goto :goto_9

    :cond_8
    move/from16 v21, v11

    :goto_9
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v19

    move/from16 v11, v21

    goto :goto_6

    :cond_9
    move/from16 v21, v11

    new-instance v17, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->p(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v19, v7

    move-object/from16 v23, v13

    move/from16 v22, v15

    invoke-direct/range {v17 .. v23}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    move-object/from16 v5, v17

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v22, 0x1

    move-object/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v14, v18

    move-object/from16 v13, v25

    move-object/from16 v8, v26

    goto/16 :goto_2

    :cond_a
    move-object/from16 v26, v8

    move-object/from16 p4, v11

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->a:Ljava/lang/String;

    invoke-static {v4, v8, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->b:Ljava/lang/String;

    invoke-static {v4, v7, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto :goto_a

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->d:I

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v7, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v5, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v5, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    move-object/from16 v8, v26

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-direct {v4, v5, v0, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    goto :goto_c

    :cond_d
    return-object v2

    :cond_e
    invoke-static/range {v24 .. v24}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ". To index multiple values under a key, use Multimaps.index."

    invoke-static {v0, v1}, La61;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v16

    :goto_d
    iget-object v11, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v1

    invoke-static {v10, v11, v12, v3, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object v15

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v11, v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_10

    const/4 v13, 0x0

    :goto_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_f

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v6, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    move v14, v13

    invoke-direct/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v9, v6

    goto :goto_e

    :cond_f
    move-object v6, v9

    goto :goto_11

    :cond_10
    const/4 v14, 0x0

    :goto_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_f

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 p2, v6

    if-ltz v13, :cond_11

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-lt v13, v6, :cond_13

    :cond_11
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_12

    move v13, v14

    goto :goto_10

    :cond_12
    const/4 v13, 0x0

    :cond_13
    :goto_10
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v9

    move-object/from16 v9, v17

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v6, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    move-object/from16 v6, p3

    invoke-direct/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v9, v6

    move-object/from16 v6, p2

    goto :goto_f

    :goto_11
    if-eqz v3, :cond_14

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v9

    invoke-static {v9, v7, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    :cond_14
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    iput-object v11, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iput-object v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    iput-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v6, v2, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v6, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->l(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->m(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v2, v5, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v0, v3, v4, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    return-object v2

    :cond_15
    invoke-static/range {v24 .. v24}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_16
    const-string v0, "Invalid sub-palette GUID. paletteGuid="

    const-string v1, ", subPaletteGuid="

    invoke-static {v0, v11, v1, v12}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16
.end method

.method public static g(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MakeupCamInternal"

    const/4 v5, 0x3

    if-eqz v2, :cond_a

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v2, "_lk_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    aget-object v8, v2, v7

    :cond_0
    :goto_0
    move-object v13, v8

    goto :goto_1

    :cond_1
    const-string v2, "Unexpected tokens from : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkuSetUnit"

    invoke-static {v5, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extracted LookGuid :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    move-object/from16 v9, p1

    invoke-static {v1, v9}, Lcom/perfectcorp/perfectlib/ph/template/e;->k(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    new-instance v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->u(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v12, Lcom/perfectcorp/perfectlib/a2;

    invoke-direct {v12, v2}, Lcom/perfectcorp/perfectlib/a2;-><init>(Ljava/util/HashMap;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    move-result-object v2

    new-instance v6, Lcom/perfectcorp/perfectlib/MakeupCamInternal$2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p0

    iput-object v8, v6, Lcom/perfectcorp/perfectlib/MakeupCamInternal$2;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v2, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    move-result-object v10

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v8, v0, :cond_2

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, v2, :cond_4

    invoke-static {v7, v14}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v6, v12, Lcom/perfectcorp/perfectlib/a2;->b:Ljava/util/HashMap;

    invoke-static {v2, v6}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Ljava/util/HashMap;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;

    move-result-object v20

    move-object/from16 v18, v15

    iget v15, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->e:F

    const/16 v16, 0x0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object v14, v10

    invoke-static/range {v14 .. v20}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;FILjava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-result-object v1

    move-object/from16 v15, v18

    goto :goto_5

    :cond_4
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, v1, :cond_6

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;ILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v0, "Missing Configuration for LookSkuSet Effect."

    :goto_3
    invoke-static {v5, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_7
    :goto_4
    const/4 v11, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->k(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;ILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-result-object v1

    :goto_5
    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v2, v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v6, v7, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->a(IILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v6

    iput-object v2, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    return-object v2

    :cond_8
    const-string v0, "Configuration is not valid."

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t find look : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string v1, "Can\'t find look="

    invoke-static {v1, v13}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "Unsupported LookSkuSet Effect."

    goto :goto_3
.end method

.method public static h(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 16

    move-object/from16 v0, p2

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v14, v4, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->b:Ljava/lang/String;

    iput-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iput-object v8, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->f:Ljava/lang/String;

    const/16 v11, 0x32

    invoke-static {v8, v9, v10, v14, v11}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    move-object/from16 v15, p1

    move/from16 v13, p4

    invoke-static/range {v5 .. v15}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->u(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;ZLjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v6, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    const/4 v9, -0x1

    if-eqz v8, :cond_0

    iget v10, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    if-ne v10, v9, :cond_0

    iput v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    :cond_0
    iget-object v10, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz v10, :cond_1

    iget v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    if-ne v11, v9, :cond_1

    iput v6, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    :cond_1
    iget v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->c:I

    if-eqz v8, :cond_2

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    :cond_2
    if-eqz v10, :cond_3

    iput-object v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v6

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz v8, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v6, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    invoke-direct {v6, v4, v7, v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v15, p1

    invoke-static {v15, v4, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;)V

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v3

    :cond_7
    const-string v0, "configuration is not valid"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 19

    move-object/from16 v0, p1

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->EARRINGS:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static/range {p2 .. p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/y1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v5, Lcom/perfectcorp/perfectlib/y1;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v7, Lcom/perfectcorp/perfectlib/y1;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {v5, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v13, v12, v10, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v11, v5, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v12, v11, v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    invoke-direct {v3, v9, v2, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v9

    goto/16 :goto_a

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    :goto_3
    check-cast v2, Lcom/perfectcorp/perfectlib/EffectId;

    goto :goto_4

    :cond_4
    move-object/from16 v2, p2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :goto_4
    iget-object v3, v2, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId;->getWearingStyleGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, ", productGuid="

    const-string v12, ", wearingStyleGuid="

    const-string v13, ", skuGuid="

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->a()Ljava/util/List;

    move-result-object v7

    if-nez v10, :cond_8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;

    iget-object v14, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->guid:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_6
    move-object v10, v9

    :goto_5
    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid wearingStyleGuid. effect="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5, v12, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v9

    :cond_8
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "[getEarringsPayload] Input IDs : effect="

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", skuItemGuid="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", matched wearingStyleGuid="

    invoke-static {v7, v5, v12, v2, v14}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->guid:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    const-string v14, "MakeupCamInternal"

    invoke-static {v7, v14, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->pattern:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;

    move/from16 v16, v4

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    move/from16 v17, v6

    iget-object v6, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->patternGUID:Ljava/lang/String;

    move-object/from16 v18, v9

    iget v9, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->piercedPosition:I

    invoke-direct {v4, v3, v5, v6, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->side:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "left"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "right"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move/from16 v4, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No pattern in wearing style. effect="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->guid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_9
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    iget-object v4, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->guid:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :goto_a
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-array v6, v8, [Ljava/lang/Iterable;

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    aput-object v7, v6, v16

    iget-object v9, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    aput-object v9, v6, v17

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Iterable;

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->c:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto :goto_c

    :cond_f
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto :goto_d

    :cond_10
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v2, v3, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-array v3, v8, [Ljava/lang/Iterable;

    aput-object v7, v3, v16

    aput-object v9, v3, v17

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Iterable;

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v5, v6, v7, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    goto :goto_e

    :cond_12
    return-object v2

    :cond_13
    const-string v0, "configuration is not valid"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v18
.end method

.method public static j(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/EffectId;->m:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EffectConfig;->getHairDye()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/c2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/c2;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-static {p1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v3

    invoke-static {v2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    check-cast v7, Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :goto_2
    iput-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->a:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    iput v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->g:I

    iput v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iput-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iput-object v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;-><init>()V

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->getBlendStrength()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->c:F

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->getCoverageRatio()F

    move-result v1

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->b:F

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    const-string p0, ""

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->l(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->m(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v2

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v0, v3, v2, p1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    goto :goto_5

    :cond_5
    return-object v1

    :cond_6
    const-string p0, "configuration is not valid"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance p2, Lcom/perfectcorp/perfectlib/x1;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/perfectcorp/perfectlib/x1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    sget-object p2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {p1, p2, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static l(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/Iterable;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;
    .locals 2

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/perfectcorp/perfectlib/r1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/r1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/y;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    return-object p0
.end method

.method public static m(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/Map;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "effect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t have intensity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newIntensity of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Ljava/util/HashMap;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget p1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;

    invoke-direct {p1, v3, v1, p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    return-object p1
.end method

.method public static p(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 6

    invoke-static {p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p4

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p4

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p4

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p4

    new-instance v0, Lcom/perfectcorp/perfectlib/p1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/p1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectConfig;)V

    invoke-virtual {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;ZLjava/util/ArrayList;Ljava/lang/Iterable;II)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 6

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/perfectcorp/perfectlib/y2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/y2;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;ZII)V

    invoke-virtual {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-static {p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/s1;

    const/4 p3, 0x2

    invoke-direct {p2, v1, p3}, Lcom/perfectcorp/perfectlib/s1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v16, v4

    goto/16 :goto_b

    :cond_1
    :goto_2
    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v7, v8, :cond_2

    if-nez v5, :cond_0

    :cond_2
    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v7, v8, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    sget-object v8, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v6, :cond_0

    array-length v8, v6

    if-lez v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v8, v0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    array-length v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v4

    :goto_3
    if-ge v11, v10, :cond_4

    new-instance v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v12, v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    aget v13, v6, v11

    iput v13, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    iget-object v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v11, :cond_9

    move-object v11, v10

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    iput v4, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->e:I

    iput v4, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->f:I

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->i:Ljava/util/List;

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v12, v8, :cond_8

    move v8, v4

    :goto_5
    array-length v12, v6

    if-ge v8, v12, :cond_8

    aget v12, v6, v8

    iget-object v13, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->i:Ljava/util/List;

    if-eqz v13, :cond_7

    if-ltz v8, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lt v8, v14, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;

    iput v12, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->b:I

    :cond_7
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    move/from16 v16, v4

    goto/16 :goto_9

    :cond_9
    instance-of v8, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-eqz v8, :cond_8

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;-><init>()V

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->a:Ljava/util/List;

    new-instance v12, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    move v13, v4

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    new-instance v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    invoke-direct {v15, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;)V

    array-length v14, v6

    if-le v14, v13, :cond_a

    aget v14, v6, v13

    iput v14, v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    move/from16 v16, v4

    goto :goto_8

    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v16, v4

    const-string v4, "colors.size()="

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newIntensities.length="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v6

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "HairDyePayload"

    invoke-static {v14, v4}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v12, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto :goto_7

    :cond_b
    move/from16 v16, v4

    invoke-virtual {v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->a:Ljava/util/List;

    iget v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b:F

    iput v4, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->b:F

    iget v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c:F

    iput v4, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->c:F

    iget-boolean v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->d:Z

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->d:Z

    iget-object v4, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v4, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    invoke-direct {v10, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;)V

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v4, v0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->m(Ljava/lang/String;)V

    iget v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o:I

    move/from16 v8, v16

    :goto_a
    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    if-ge v8, v9, :cond_c

    invoke-virtual {v4, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v9

    iput v6, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->g:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v7, v4, :cond_d

    const/4 v4, 0x1

    move v5, v4

    :cond_d
    :goto_b
    move/from16 v4, v16

    goto/16 :goto_0

    :cond_e
    move/from16 v16, v4

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v7, :cond_f

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-virtual {v3, v6, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getNewPayloadBuilderIfNeed] isFeatureEnable="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " intensities.isEmpty()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "FaceContourSettingHelper"

    invoke-static {v6, v7, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_11

    :cond_11
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v4

    if-nez v4, :cond_12

    move-object v4, v5

    goto :goto_d

    :cond_12
    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_d
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v8

    if-nez v8, :cond_13

    move-object v8, v5

    goto :goto_e

    :cond_13
    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[getNewPayloadBuilderIfNeed] highlightSetting="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " contourSetting="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v9, v5

    move-object v10, v9

    :cond_14
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    array-length v13, v11

    if-nez v13, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ItemSubType="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " newIntensities.length=0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v7, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_15
    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v12, v13, :cond_16

    if-eqz v4, :cond_16

    aget v9, v11, v16

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-direct {v11, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)V

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v13, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iput v9, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    move-object v9, v11

    goto :goto_f

    :cond_16
    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v12, v13, :cond_14

    if-eqz v8, :cond_14

    aget v10, v11, v16

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-direct {v11, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)V

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v13, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iput v10, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    move-object v10, v11

    goto :goto_f

    :cond_17
    if-nez v9, :cond_18

    if-eqz v10, :cond_1c

    :cond_18
    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;-><init>()V

    if-eqz v9, :cond_19

    move-object v4, v9

    :cond_19
    iput-object v4, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz v10, :cond_1a

    move-object v8, v10

    :cond_1a
    iput-object v8, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v1

    if-nez v1, :cond_1b

    const/16 v1, 0x32

    goto :goto_10

    :cond_1b
    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->c:I

    :goto_10
    iput v1, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    :cond_1c
    :goto_11
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v1

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v4, v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v4, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-object v2
.end method

.method public static u(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/HashMap;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v7, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v7, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->x(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->x(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v0, v3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->x(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v0, v4}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->x(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v4, :cond_3

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_1
    if-eqz v5, :cond_2

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v7, v1, :cond_2

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v6, :cond_4

    iget-object v5, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v5, v1, :cond_4

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_4

    :cond_6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_4
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v7, "MakeupCamInternal"

    if-eqz v5, :cond_a

    new-instance p2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {p2, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getEffectConfig::perfectEffect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v7, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p1, v0, :cond_8

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-nez p0, :cond_7

    const-string p0, "getEffectConfig::payload is null."

    invoke-static {v7, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/perfectcorp/perfectlib/EffectConfig;->builder()Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->builder()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->setBlendStrength(I)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->setCoverageRatio(F)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->setHairDye(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;)Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/EffectConfig;

    move-result-object p0

    goto :goto_6

    :cond_8
    :goto_5
    sget-object p0, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    :goto_6
    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    :goto_7
    iput-object p0, p2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v8, "N/A"

    const-string v9, ""

    if-ne p2, v5, :cond_1a

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v5

    if-nez v5, :cond_b

    move-object v5, v2

    goto :goto_8

    :cond_b
    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_8
    if-eqz v5, :cond_c

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v6, v3, :cond_c

    :goto_9
    iget-object v3, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->c:Ljava/lang/String;

    goto :goto_b

    :cond_c
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v5

    if-nez v5, :cond_d

    move-object v5, v2

    goto :goto_a

    :cond_d
    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_a
    if-eqz v5, :cond_e

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v6, v3, :cond_e

    goto :goto_9

    :cond_e
    move-object v3, v9

    :goto_b
    iget-object v5, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v6

    if-nez v6, :cond_f

    move-object v6, v2

    goto :goto_c

    :cond_f
    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_c
    if-eqz v6, :cond_10

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v7, v5, :cond_10

    :goto_d
    iget-object v5, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    goto :goto_f

    :cond_10
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v6

    if-nez v6, :cond_11

    move-object v6, v2

    goto :goto_e

    :cond_11
    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_e
    if-eqz v6, :cond_12

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v7, v5, :cond_12

    goto :goto_d

    :cond_12
    move-object v5, v9

    :goto_f
    iget-object v6, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v7

    if-nez v7, :cond_13

    move-object v7, v2

    goto :goto_10

    :cond_13
    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_10
    if-eqz v7, :cond_14

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v10, v6, :cond_14

    :goto_11
    iget-object v6, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->f:Ljava/lang/String;

    goto :goto_13

    :cond_14
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v7

    if-nez v7, :cond_15

    move-object v7, v2

    goto :goto_12

    :cond_15
    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_12
    if-eqz v7, :cond_16

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v10, v6, :cond_16

    goto :goto_11

    :cond_16
    move-object v6, v9

    :goto_13
    iget-object v7, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v10

    if-nez v10, :cond_17

    move-object v10, v2

    goto :goto_14

    :cond_17
    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_14
    if-eqz v10, :cond_18

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v11, v7, :cond_18

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    goto/16 :goto_26

    :cond_18
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v10

    if-nez v10, :cond_19

    goto :goto_15

    :cond_19
    iget-object v2, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_15
    if-eqz v2, :cond_34

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v10, v7, :cond_34

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    goto/16 :goto_26

    :cond_1a
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p2, v2, :cond_33

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_1b

    goto/16 :goto_25

    :cond_1b
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_1d

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->c:Ljava/lang/String;

    :cond_1c
    :goto_16
    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v5

    move-object v5, v6

    move-object v6, v9

    move-object v9, v2

    goto/16 :goto_26

    :cond_1d
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_1e

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->c:Ljava/lang/String;

    goto :goto_16

    :cond_1e
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_27

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-nez p2, :cond_1f

    const-string p0, "createHairDyeEffectId::payload is null."

    invoke-static {v7, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1f
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object p0

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_1b

    :cond_20
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_17

    :cond_21
    move v2, v3

    :goto_17
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_18

    :cond_22
    move v4, v3

    :goto_18
    if-eq v2, v4, :cond_23

    const-string p0, "createHairDyeEffectId::color list size is different."

    invoke-static {v7, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_23
    invoke-static {}, Lcom/perfectcorp/perfectlib/EffectConfig;->builder()Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->builder()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->setBlendStrength(I)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b()F

    move-result p2

    invoke-virtual {v4, p2}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->setCoverageRatio(F)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->setHairDye(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;)Lcom/perfectcorp/perfectlib/EffectConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/EffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/EffectConfig;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->t(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->d:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    if-eqz p2, :cond_24

    move-object v4, p2

    goto :goto_1a

    :cond_24
    sget-object v4, Lcom/perfectcorp/perfectlib/EffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/EffectConfig;

    :goto_1a
    iput-object v4, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_25
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_1b
    const-string p0, "createHairDyeEffectId::color list is empty."

    invoke-static {v7, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_27
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_2e

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    if-nez p0, :cond_28

    const-string p0, "[createEarringsEffectId] payload is null."

    invoke-static {v7, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_28
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v1, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1c
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    goto :goto_1d

    :cond_29
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1c

    :goto_1d
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    goto :goto_1f

    :cond_2a
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    :goto_1f
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/EarringParameter;->builder()Lcom/perfectcorp/perfectlib/EarringParameter$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->isLeft(Z)Lcom/perfectcorp/perfectlib/EarringParameter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->build()Lcom/perfectcorp/perfectlib/EarringParameter;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    new-instance v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v1, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/EarringParameter;->builder()Lcom/perfectcorp/perfectlib/EarringParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->isLeft(Z)Lcom/perfectcorp/perfectlib/EarringParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->build()Lcom/perfectcorp/perfectlib/EarringParameter;

    move-result-object v0

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2d
    return-object p2

    :cond_2e
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v2, :cond_30

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    goto :goto_22

    :cond_2f
    move-object v2, v8

    :goto_22
    move-object v3, v2

    move-object v5, v8

    move-object v6, v5

    goto :goto_24

    :cond_30
    invoke-static {p2}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v9

    goto :goto_26

    :cond_31
    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    :goto_23
    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    goto :goto_24

    :cond_32
    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    goto :goto_23

    :goto_24
    move-object v9, v8

    goto :goto_26

    :cond_33
    :goto_25
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->c:Ljava/lang/String;

    goto/16 :goto_16

    :cond_34
    :goto_26
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/EffectId;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_35
    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    :goto_27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_28

    :cond_36
    move-object v8, p0

    :goto_28
    move-object v3, v8

    :cond_37
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, p0, :cond_39

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p0

    if-eq p0, p1, :cond_39

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_38
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->MASCARA:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq p1, p0, :cond_39

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_39
    new-instance p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->f:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 28

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "configuration is not valid"

    if-eqz v4, :cond_e

    const-string v4, "_lk_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " isLookSkuSet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    const-string v8, "MakeupCamInternal"

    invoke-static {v4, v8, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v4, :cond_0

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v4, p1

    move-object v8, v2

    move-object/from16 v2, p0

    move-object/from16 v25, v6

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_1
    move-object/from16 v4, p1

    move-object v8, v2

    move-object/from16 v2, p0

    iget-object v0, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v0, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v10, "N/A"

    iput-object v10, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    sget-object v11, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v15, v7, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :try_start_0
    invoke-virtual {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->E(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    move-result-object v7

    iget-object v14, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->patternGuid:Ljava/lang/String;

    move-object/from16 v25, v6

    const/4 v15, 0x0

    :goto_1
    iget-object v6, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_9

    iget-object v6, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    move-object/from16 p2, v7

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p3, v5

    move-object/from16 v5, v18

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    goto :goto_2

    :cond_3
    iget-object v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v5

    invoke-virtual {v13, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v5

    move-object/from16 p4, v11

    iget v11, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    move-object/from16 v26, v13

    if-ltz v11, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lt v11, v13, :cond_4

    goto :goto_3

    :cond_4
    iget v11, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v11, 0x0

    :goto_4
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v27, v8

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_8

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v8, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    if-ne v14, v11, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_6

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_6
    iput v5, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_7

    :cond_6
    iget v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->colorIntensity:I

    goto :goto_6

    :cond_7
    :goto_7
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v20

    goto :goto_5

    :cond_8
    new-instance v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->p(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v20, v7

    move/from16 v22, v11

    move-object/from16 v24, v13

    move/from16 v23, v15

    invoke-direct/range {v18 .. v24}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    move-object/from16 v5, v18

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v23, 0x1

    move-object/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v14, v19

    move-object/from16 v13, v26

    move-object/from16 v8, v27

    goto/16 :goto_1

    :cond_9
    move-object/from16 v27, v8

    move-object/from16 p4, v11

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->F:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->a:Ljava/lang/String;

    invoke-static {v4, v8, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->b:Ljava/lang/String;

    invoke-static {v4, v7, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto :goto_8

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v7, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v5, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v5, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->n(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    move-object/from16 v8, v27

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-direct {v4, v5, v0, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    goto :goto_a

    :cond_c
    return-object v2

    :cond_d
    invoke-static/range {v25 .. v25}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ". To index multiple values under a key, use Multimaps.index."

    invoke-static {v0, v1}, La61;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v16

    :cond_e
    move-object/from16 v4, p1

    move-object v8, v2

    move-object/from16 v25, v6

    const/16 v16, 0x0

    move-object/from16 v2, p0

    :goto_b
    iget-object v11, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v1

    invoke-static {v10, v11, v12, v3, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object v15

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v11, v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v13, -0x1

    if-ne v14, v13, :cond_11

    const/4 v13, 0x0

    :goto_c
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_10

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v14, 0x0

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-object/from16 p2, v9

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    move-object/from16 v19, v10

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a()I

    move-result v10

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput v10, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    const/4 v14, 0x0

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-object/from16 v18, v11

    const-string v11, "glow_strength"

    invoke-static {v9, v11, v14}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v11

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->i:I

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const-string v11, "shimmer_density"

    invoke-static {v9, v11, v14}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput v9, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput-object v6, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    goto :goto_d

    :cond_f
    move-object/from16 p2, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    :goto_d
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v6, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    move v14, v13

    move-object/from16 v6, p2

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    invoke-direct/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v9, v6

    goto/16 :goto_c

    :cond_10
    move-object v6, v9

    goto :goto_10

    :cond_11
    const/4 v14, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_10

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 p2, v6

    if-ltz v13, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-lt v13, v6, :cond_14

    :cond_12
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_13

    move v13, v14

    goto :goto_f

    :cond_13
    const/4 v13, 0x0

    :cond_14
    :goto_f
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p3, v9

    move-object/from16 v9, v18

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v6, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    move-object/from16 v6, p3

    invoke-direct/range {v9 .. v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v9, v6

    move-object/from16 v6, p2

    goto :goto_e

    :goto_10
    if-eqz v3, :cond_15

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v9

    invoke-static {v9, v7, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    :cond_15
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;-><init>()V

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    iput-object v11, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iput-object v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    iput-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->F:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v6, v2, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v6, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->i(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->h(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e(Ljava/util/List;)V

    invoke-virtual {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->l(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->m(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    invoke-direct {v2, v5, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v0, v3, v4, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    return-object v2

    :cond_16
    invoke-static/range {v25 .. v25}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_17
    const-string v0, "Invalid sub-palette GUID. paletteGuid="

    const-string v1, ", subPaletteGuid="

    invoke-static {v0, v11, v1, v12}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16
.end method

.method public static z(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;
    .locals 18

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->BACKGROUND:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static/range {p1 .. p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/y1;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v4, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "file://"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->alignMode:Ljava/lang/String;

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-boolean v11, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->animated:Z

    const-string v12, "static"

    const-string v14, "animated"

    if-eqz v11, :cond_0

    move-object v11, v14

    goto :goto_0

    :cond_0
    move-object v11, v12

    :goto_0
    iget-object v15, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget v15, v15, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->bestDisplayFrame:I

    invoke-direct {v9, v6, v10, v11, v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->alignMode:Ljava/lang/String;

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-boolean v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->animated:Z

    if-eqz v10, :cond_1

    move-object v12, v14

    :cond_1
    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->bestDisplayFrame:I

    invoke-direct {v6, v5, v9, v12, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;-><init>()V

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-direct {v1, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;-><init>()V

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->data:Ljava/lang/String;

    iget v9, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->version:I

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->e()Ljava/util/List;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-direct {v1, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;)V

    :goto_1
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    move-object/from16 v6, p0

    invoke-direct {v5, v6, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v5, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v2

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v2

    invoke-interface {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v3, v4, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v2, v4, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->a(Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;)V

    return-object v3

    :cond_3
    const-string v0, "configuration is not valid"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_4
    const-string v1, "No background data in db. effect="

    invoke-static {v0, v1}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedApplyTaskSN("

    const-string v2, ")"

    const-string v3, "currentApplyTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget v3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k:I

    iget v4, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->p(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/perfectcorp/perfectlib/k1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/perfectcorp/perfectlib/k1;-><init>(Ljava/lang/Object;ZI)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance p3, Lcom/perfectcorp/perfectlib/l1;

    invoke-direct {p3, p0, p1}, Lcom/perfectcorp/perfectlib/l1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/m1;

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {p2, p3, p0, v0}, Lcom/perfectcorp/perfectlib/m1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final r(IZLjava/lang/Iterable;Ljava/lang/Iterable;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v1, v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->q(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;ZLjava/util/ArrayList;Ljava/lang/Iterable;II)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/perfectcorp/perfectlib/k1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, v2, p4}, Lcom/perfectcorp/perfectlib/k1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p5, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p5, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance p3, Lcom/perfectcorp/perfectlib/l1;

    invoke-direct {p3, p0, p1}, Lcom/perfectcorp/perfectlib/l1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/m1;

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object p5, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {p2, p3, p5, p4}, Lcom/perfectcorp/perfectlib/m1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/EffectId;->g:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/perfectcorp/perfectlib/ph/template/e;->a(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p2, p7}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    :goto_2
    new-instance p2, Lcom/perfectcorp/perfectlib/y;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p1
.end method

.method public final s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/v;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->post(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance p1, Lv40;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lv40;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lv40;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Lv40;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ld20;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lv40;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lv40;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lo2;

    const/16 v1, 0xa

    invoke-direct {v0, p2, v1}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    sget-object v1, Lcom/perfectcorp/common/rx/a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-object p0
.end method

.method public final w(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedDownloadTaskSN("

    const-string v2, ")"

    const-string v3, "currentDownloadTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V
    .locals 10

    move-object/from16 v8, p6

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[downloadAndApplySkusInternal] Start download. vtoSettings="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCamInternal"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v9

    new-instance v0, Lcom/perfectcorp/perfectlib/n1;

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/n1;-><init>(Ljava/lang/Object;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {v9, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v6

    new-instance v0, Lcom/perfectcorp/perfectlib/t0;

    const/4 v2, 0x2

    move v1, p2

    move-object v5, p4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0xc

    invoke-direct {v2, v8, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/w2;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v8, v4}, Lcom/perfectcorp/perfectlib/w2;-><init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v4, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
