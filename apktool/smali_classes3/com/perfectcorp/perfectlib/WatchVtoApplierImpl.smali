.class abstract Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;
.super Lcom/perfectcorp/perfectlib/WatchVtoApplier;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;-><init>(Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    return-void
.end method

.method public static e(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v5

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SKU_SET_SKU_ID"

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v2

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->q(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->patternMask:Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/e;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    if-eqz p0, :cond_3

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->e0:Ljava/lang/String;

    :goto_2
    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v6, v5, v1, v4}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->g:F

    iget-boolean p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f0:Z

    iput-boolean p0, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->h:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {p0, v6}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string p0, "No valid watch VtoSetting"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-result-object p0

    return-object p0
.end method

.method public final applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->u(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract b(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract c()V
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/WatchVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->m(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract d()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/WatchVtoApplier$EffectIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->n(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;)V

    return-void
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/WatchVtoApplier$ProductIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->o(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;)V

    return-void
.end method
