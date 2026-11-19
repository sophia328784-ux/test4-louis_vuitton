.class public final synthetic Ln2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln2;->b:I

    iput-object p1, p0, Ln2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryApplierTarget;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier;->a(Lcom/perfectcorp/perfectlib/AccessoryApplierTarget;)Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ln2;->b:I

    const-string v1, "[queryCustomFeatures] start"

    const-string v2, "MakeupCam"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    sget v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->h(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    sget-object v3, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->c(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const-string v1, "Guid=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    const-string v2, ""

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->c(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :pswitch_4
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->SKIN_TONE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lp3;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v0, v3}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapCompletable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->j:Z

    if-nez v0, :cond_2

    iput-boolean v5, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->j:Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->h:Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    goto :goto_3

    :cond_2
    const-string p0, "Face is detecting."

    :goto_2
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p0, "Face already detected."

    goto :goto_2

    :goto_3
    return-object v1

    :pswitch_6
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->removeApplier()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "LiveMakeupCtrl"

    const-string v4, "onPause"

    invoke-static {v1, v4, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v0, Lxw;

    invoke-direct {v0, p0, v3}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    sget-object v3, Lcom/perfectcorp/common/rx/a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-direct {v1, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onDestroyed()V

    return-object v2

    :pswitch_7
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lfc0;

    invoke-direct {v0, p0, v6}, Lfc0;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Lfc0;

    invoke-direct {v1, p0, v5}, Lfc0;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object p0

    :pswitch_8
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;-><init>()V

    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    new-instance v3, Lo2;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2, v3, v6, p0}, Lcom/perfectcorp/perfectlib/MakeupCam;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    new-instance v2, Lfw;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lfw;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f:Lcom/cyberlink/clgpuimage/GlInvalidator;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->b()V

    return-object p0

    :pswitch_a
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    const-string v0, "FaceAttributeAnalyzer"

    invoke-static {v4, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/a;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/y;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lvw;

    invoke-direct {v0, p0, v6}, Lvw;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Lvw;

    invoke-direct {v1, p0, v5}, Lvw;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object p0

    :pswitch_b
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/appsflyer/sdk_base/util/ContentProviderFetcher;

    invoke-static {p0}, Lcom/appsflyer/sdk_base/util/ContentProviderFetcher;->a(Lcom/appsflyer/sdk_base/util/ContentProviderFetcher;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v1, Lg7;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lg7;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[queryForCacheFirstThenUpdate] start::skuSetIds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkuCacheStrategyHelper"

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lyw0;

    invoke-direct {v2, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Lzw0;

    invoke-direct {v2, p0, v5}, Lzw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lq2;

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lyw0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lyw0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    new-instance v0, Ln7;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ln7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    new-instance v0, Ln7;

    invoke-direct {v0, v4}, Ln7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Ln7;

    invoke-direct {v0, v3}, Ln7;-><init>(I)V

    new-instance v1, Ld8;

    invoke-direct {v1, v6}, Ld8;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-object v2

    :pswitch_d
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-object p0

    :pswitch_e
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->a(Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-direct {p0}, Ln2;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
