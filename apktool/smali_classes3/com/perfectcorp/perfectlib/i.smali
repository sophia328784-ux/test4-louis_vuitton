.class public final synthetic Lcom/perfectcorp/perfectlib/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;Landroid/util/Pair;)V
    .locals 0

    const/16 p1, 0x8

    iput p1, p0, Lcom/perfectcorp/perfectlib/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lcom/perfectcorp/perfectlib/i;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/i;->b:I

    const-string v1, "intensity"

    const-string v2, "LOOK_LIST_ITEMS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/i;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoObject;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;->f:Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;->g:Lcom/perfectcorp/perfectlib/SubItemInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    const-string v2, ", "

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0, p0, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[createPatternInfos] can not get pattern, ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VtoPalette$SubPalette"

    invoke-static {v2, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/SubItemInfo;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)Lcom/perfectcorp/perfectlib/SubItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;->f:Lcom/perfectcorp/perfectlib/SkuInfo;

    if-ne v1, v2, :cond_4

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->d(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ApplierTarget;

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->q:Z

    if-eqz v0, :cond_6

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-direct {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;)V

    goto :goto_4

    :cond_5
    instance-of v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    if-eqz v0, :cond_6

    new-instance v4, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-direct {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;)V

    goto :goto_4

    :cond_6
    const-string p0, "Unknown instance of applier target."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_4
    return-object v4

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/TagType;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Type"

    invoke-virtual {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroid/util/Pair;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;->a:Landroid/util/Pair;

    const-string p0, "[syncServerInternal] start"

    const/4 v2, 0x3

    const-string v4, "ShadeFinderRecommendationHandler"

    invoke-static {v2, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$c;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$c;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$c;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v2, Lp3;

    const/16 v4, 0x18

    invoke-direct {v2, v1, v0, v4}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln2;

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p0, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v0, Lvv0;

    invoke-direct {v0, v1, v3}, Lvv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Lpv0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->b(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->h:Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    if-eqz v0, :cond_7

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    :cond_7
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->m()V

    const-string p0, "PhotoMakeup"

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/util/concurrent/Future;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/perfectcorp/perfectlib/CacheCleaner;

    const-string v2, "cleanUp"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v1

    const-string v2, "MAX_CACHE_SIZE_IN_MB"

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/common/utility/j;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->A()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v2, v4}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/NailLookHandler$1;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Lg7;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_5
    return-object p0

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->values()[Lcom/perfectcorp/perfectlib/ReshapeEffect;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_6
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v7

    :try_start_0
    invoke-virtual {v6, v7, v1}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move v7, v3

    :goto_7
    if-eqz v7, :cond_9

    new-instance v8, Lcom/perfectcorp/perfectlib/ReshapeEffectId;

    invoke-direct {v8, v6, v7}, Lcom/perfectcorp/perfectlib/ReshapeEffectId;-><init>(Lcom/perfectcorp/perfectlib/ReshapeEffect;I)V

    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->values()[Lcom/perfectcorp/perfectlib/ReshapeEffect;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_8
    if-ge v5, v4, :cond_c

    aget-object v6, v2, v5

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v7

    :try_start_1
    invoke-virtual {v6, v7, v1}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move v7, v3

    :goto_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v2, v4}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/JewelryLookHandler$1;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Lg7;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_a

    :cond_d
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_a
    return-object p0

    :pswitch_c
    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k:Lcom/perfectcorp/perfectlib/ph/utility/a;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
