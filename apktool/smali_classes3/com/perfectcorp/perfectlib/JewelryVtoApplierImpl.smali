.class abstract Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;
.super Lcom/perfectcorp/perfectlib/JewelryVtoApplier;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

.field public final d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const-string v0, "#downloadTaskExecutor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const-string v0, "#applyTaskExecutor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    new-instance v1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->JEWELRY:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;-><init>(Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/ArrayList;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/e;->n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    const-string v7, "lookGuid can\'t be null"

    const-string v8, "effectExtras should not be null."

    const-string v9, "maskInfo should not be null."

    const/4 v10, 0x0

    const-string v11, "pattern info should not be null."

    const/4 v12, 0x0

    const-string v13, "pattern guid should not be null."

    if-ne v3, v4, :cond_6

    invoke-static {v2, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v10, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->o(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    move-result-object v9

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->O:Ljava/lang/String;

    iget-object v11, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->N:Ljava/lang/String;

    iget-object v13, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->M:Ljava/lang/String;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->j:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/m;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/template/m$b;->position:Ljava/lang/String;

    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "object_distance_ratio_back"

    invoke-virtual {v9, v3}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "object_distance_ratio_palm"

    invoke-virtual {v9, v3}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const-string v3, "adaptive_rotate"

    invoke-virtual {v9, v3}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/ph/template/c;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v4, v9}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v4

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v9, v4, v5, v2}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/RingPosition;->of(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RingPosition;

    move-result-object v2

    iput-object v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v9, v3}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    invoke-static {v13, v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    invoke-static {v11, v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->c:Ljava/lang/String;

    :cond_5
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {v2, v9}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    :goto_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v4, :cond_0

    :cond_7
    invoke-static {v2, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->o(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    move-result-object v9

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->L:Ljava/lang/String;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->K:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    const-string v6, "object_distance_ratio"

    invoke-virtual {v9, v6}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    const-string v8, "is_rigid_body"

    invoke-virtual {v9, v8}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/template/c;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v4, v9}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v4

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v9, v4, v5, v2}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    invoke-static {v6, v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->g:F

    invoke-static {v8, v10}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->h:Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v9, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->c:Ljava/lang/String;

    :cond_a
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {v2, v9}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    goto :goto_5

    :cond_b
    return-object v0
.end method


# virtual methods
.method public final apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 10

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->e()V

    const-string v0, "lookSetting can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[apply] lookSetting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x3

    invoke-static {v8, p2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    const/4 v9, 0x1

    if-ne v4, p2, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    new-instance v0, Lcom/perfectcorp/perfectlib/c1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p2

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance v0, Lcom/perfectcorp/perfectlib/d1;

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/perfectcorp/perfectlib/d1;-><init>(Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/d1;

    invoke-direct {v1, p0, p1, v5, v9}, Lcom/perfectcorp/perfectlib/d1;-><init>(Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_1
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v6, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p2, "downloadAndApplyLook"

    invoke-direct {v6, p2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "[cancelOnReleased] add cancelable \""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\" to taskDisposables"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Let;

    const/16 v1, 0x11

    invoke-direct {v0, v6, v1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[cancelOnReleased] cancelable \""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" cancel directly"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, v0, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    :goto_2
    new-instance v0, Lcom/perfectcorp/perfectlib/e1;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, v1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    iget-object p2, v1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/perfectlib/s0;

    invoke-direct {p2, v1, p1, v3, v9}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/d1;

    const/4 p2, 0x2

    invoke-direct {p1, v1, v3, v5, p2}, Lcom/perfectcorp/perfectlib/d1;-><init>(Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/perfectlib/d1;

    invoke-direct {p2, v1, v3, v5, v8}, Lcom/perfectcorp/perfectlib/d1;-><init>(Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v6

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/f;

    const/4 p2, 0x4

    invoke-direct {p1, v1, p0, v5, p2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;

    .line 309
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-result-object p0

    return-object p0
.end method

.method public final applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->u(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract c(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->m(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract e()V
.end method

.method public final f(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public abstract g()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$EffectIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->n(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;)V

    return-void
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ProductIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->o(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final setRingPositionAndApply(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->d(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-result-object p0

    return-object p0
.end method
