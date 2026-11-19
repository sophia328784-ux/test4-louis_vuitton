.class abstract Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;
.super Lcom/perfectcorp/perfectlib/RingVtoApplier;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;-><init>(Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v5

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SKU_SET_SKU_ID"

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

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

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_back:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_back:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->g0:Ljava/lang/String;

    :goto_2
    if-eqz p0, :cond_4

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_palm:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_palm:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->h0:Ljava/lang/String;

    :goto_3
    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v8, v7, v1, v4}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v6, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v4

    iput v4, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    iget-boolean p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->i0:Z

    iput-boolean p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RingPosition;

    iput-object p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {p0, v8}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const-string p0, "No valid ring VtoSetting"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public static g(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v6

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v6, v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SKU_SET_SKU_ID"

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

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

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v6

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    if-eqz v6, :cond_2

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

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    if-eqz p0, :cond_3

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_back:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_back:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->g0:Ljava/lang/String;

    :goto_2
    if-eqz p0, :cond_4

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_palm:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_object_distance_ratio_palm:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->h0:Ljava/lang/String;

    :goto_3
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of v8, v1, Lcom/perfectcorp/perfectlib/RingParameter;

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    check-cast v1, Lcom/perfectcorp/perfectlib/RingParameter;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v8, p0, v4, v5}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    invoke-static {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    invoke-static {v7, v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    iget-boolean p0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->i0:Z

    iput-boolean p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/RingParameter;->a:Lcom/perfectcorp/perfectlib/RingPosition;

    iput-object p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {p0, v8}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v8, v1, v4, v5}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    invoke-static {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v1

    iput v1, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    invoke-static {v7, v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v1

    iput v1, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    iget-boolean v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->i0:Z

    iput-boolean v1, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_position:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/RingPosition;->of(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RingPosition;

    move-result-object p0

    goto :goto_5

    :cond_6
    sget-object p0, Lcom/perfectcorp/perfectlib/RingPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    :goto_5
    iput-object p0, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {p0, v8}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    goto :goto_4

    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string p0, "No valid ring VtoSetting"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-result-object p0

    return-object p0
.end method

.method public final applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->u(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract c(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->m(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/RingVtoApplier$EffectIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->n(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;)V

    return-void
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/RingVtoApplier$ProductIdCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->o(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final setRingPositionAndApply(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->a:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->d(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-result-object p0

    return-object p0
.end method
