.class public abstract Lcom/perfectcorp/perfectlib/ApplyEffectUtility;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;,
        Lcom/perfectcorp/perfectlib/ApplyEffectUtility$LookCacheFirstThenUpdateStrategy;,
        Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static A(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;
    .locals 3

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty look guid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object v0

    :goto_0
    new-instance v1, Lq7;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p4, v2}, Lq7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;I)V

    new-instance p4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p4, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lm7;

    invoke-direct {v0, p3, p0, p2, p1}, Lm7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public static B(ILjava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;-><init>()V

    sget-object v1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;)V

    invoke-static {p1, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a(Ljava/util/Collection;ILcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lx1;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lx1;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lg7;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->p(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;
    .locals 5

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wearingStyleGuid:Ljava/lang/String;

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_1
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->patterns:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "[getMatchedSkuSetWearingStyle] colorReferences and patterns are empty!"

    :goto_0
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    const-string p0, "[getMatchedSkuSetWearingStyle] supportedPatterns is empty!"

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;
    .locals 5

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->supportedPatternGuid:Ljava/lang/String;

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_1
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    const-string p0, "[getMatchedSkuSetSupportedPattern] colorReferences is empty!"

    :goto_0
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string p0, "[getMatchedSkuSetSupportedPattern] supportedPatterns is empty!"

    goto :goto_0
.end method

.method public static F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->B(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    const-string v9, ""

    if-nez v8, :cond_2

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v9

    :goto_1
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v8

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v10

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x3

    const-string v13, "ApplyEffectUtility"

    if-eqz v11, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[generateApplySkuInfoForSkuSetInternal] Use sku set. beautyMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skuSetGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->r(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    invoke-static {v0, v8, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    const-string v7, ""

    const/4 v9, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-object v0

    :cond_3
    invoke-static {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v11

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v14

    const-string v15, "1"

    const-string v12, "PatternPaletteInfoDao"

    move/from16 v16, v14

    const-string v14, ", paletteGuid="

    move-object/from16 v17, v2

    const-string v2, ", patternGuid="

    const-string v1, ", subSubItemGuid="

    move-object/from16 v18, v10

    const-string v10, ", subItemGuid="

    move/from16 v19, v11

    const-string v11, ", skuItemGuid="

    const/16 v20, 0x0

    move-object/from16 v21, v12

    const-string v12, ", skuGuid="

    move-object/from16 v22, v9

    if-eqz v16, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "[generateSubPaletteApplySkuInfo] Input sku parameters. Try to find first item. beautyMode="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5, v10, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v3, v14}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", intensities"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    invoke-static {v9, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->o(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v8

    move-object v8, v0

    goto :goto_2

    :cond_4
    move-object v9, v8

    move-object v8, v5

    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v8, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v8, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object/from16 v0, v20

    :cond_7
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v7

    move-object/from16 v7, v22

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 p1, v4

    array-length v4, v0

    const/16 v17, 0x3

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, v0

    move-object/from16 p0, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_8

    move/from16 v17, v0

    aget-object v0, p0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v17, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v24

    const-string v32, "1"

    const-string v4, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, v7

    :cond_9
    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a()[Ljava/lang/String;

    move-result-object v26

    filled-new-array {v8, v0}, [Ljava/lang/String;

    move-result-object v28

    const-string v25, "PatternPaletteInfo"

    const-string v27, "PaletteGUID=? AND PaletteColorIndex=?"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v32}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_b
    :try_start_2
    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_a

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v4, v20

    :goto_6
    :try_start_3
    sget v7, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v13, v21

    invoke-static {v13, v7, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v8, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_c
    move-object/from16 p1, v4

    move-object/from16 v23, v7

    :cond_d
    :goto_8
    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    move-object/from16 v4, p1

    goto :goto_a

    :cond_e
    move-object/from16 p1, v4

    move-object/from16 v23, v7

    :cond_f
    move-object/from16 v4, p1

    :goto_9
    move-object v0, v3

    goto :goto_a

    :cond_10
    move-object/from16 v23, v7

    goto :goto_9

    :goto_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    move/from16 v7, v19

    invoke-static {v0, v8, v4, v6, v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    const/4 v13, 0x0

    move-object v10, v8

    move-object v11, v4

    move-object v6, v9

    move-object/from16 v7, v23

    move-object v9, v0

    invoke-direct/range {v5 .. v13}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-object v5

    :cond_11
    move-object v6, v0

    move-object v0, v4

    move-object v4, v8

    move-object/from16 v8, v23

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "[generateSubPaletteApplySkuInfo] Fallback sku parameters. No item can be applied. beautyMode="

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v10, v0, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v3, v2, v6, v14}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lbm;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v20

    :cond_12
    move-object/from16 v9, v21

    move-object/from16 v21, v6

    move-object v6, v9

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, v22

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v22, v0

    move-object v0, v4

    goto :goto_b

    :cond_13
    move-object/from16 v22, v0

    move-object v0, v5

    :goto_b
    invoke-static/range {v22 .. v22}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v22, v5

    goto :goto_c

    :cond_14
    move-object/from16 v22, v4

    :goto_c
    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v23

    move-object/from16 v24, v15

    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-object/from16 v25, v6

    move-object/from16 v6, v18

    if-ne v6, v15, :cond_15

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v6, v20

    :goto_d
    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v9, v15, :cond_17

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v15

    invoke-virtual {v15}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    move-object/from16 v18, v6

    invoke-virtual {v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    if-eqz v6, :cond_16

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    :goto_e
    move-object/from16 v22, v6

    goto :goto_f

    :cond_16
    iget-object v6, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    goto :goto_e

    :goto_f
    move-object/from16 v6, v22

    goto :goto_10

    :cond_17
    move-object/from16 v18, v6

    goto :goto_f

    :goto_10
    if-eqz v18, :cond_18

    move-object/from16 v15, v18

    goto :goto_11

    :cond_18
    move-object v15, v6

    :goto_11
    invoke-static {v9, v15, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->y(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_28

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v7

    const-string v7, "[generateApplySkuInfo] Invalid sku parameter. Try to find first item. beautyMode="

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v5, v10, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v3, v2, v6, v14}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    invoke-static {v15, v0, v7, v13}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v23, :cond_23

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_19

    move-object/from16 v7, v22

    goto :goto_12

    :cond_19
    sget-object v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->q:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-object/from16 v15, p1

    if-eq v15, v6, :cond_22

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v6

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v6

    new-instance v15, Lg7;

    const/16 v7, 0x8

    invoke-direct {v15, v7}, Lg7;-><init>(I)V

    invoke-virtual {v6, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v7, v22

    invoke-virtual {v6, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_12
    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v9, v15, :cond_1c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v4

    move-object/from16 p1, v6

    goto :goto_13

    :cond_1a
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 p1, v6

    const/4 v6, 0x1

    invoke-static {v0, v15, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_13

    :cond_1b
    move-object v0, v7

    :goto_13
    move-object/from16 v6, p1

    move-object/from16 v22, v13

    move-object/from16 v13, v25

    goto/16 :goto_1c

    :cond_1c
    move-object/from16 p1, v6

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isAccessory()Z

    move-result v6

    if-nez v6, :cond_21

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, v4

    goto/16 :goto_19

    :cond_1d
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const-string v0, "PaletteGUID"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v29

    const-string v30, "PatternPaletteInfo.PatternGUID=? AND PaletteInfo.GUID = PaletteGUID"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v31

    const-string v28, "PatternPaletteInfo, PaletteInfo"

    const-string v32, "PatternPaletteInfo.PaletteGUID"

    const-string v34, "MIN(PatternPaletteInfo._id)"

    const/16 v35, 0x0

    const/16 v27, 0x1

    const/16 v33, 0x0

    invoke-virtual/range {v26 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v15}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v22, :cond_1e

    invoke-static {v15}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v22, v13

    :goto_14
    move-object/from16 v13, v25

    goto :goto_17

    :cond_1e
    move-object/from16 v22, v13

    :cond_1f
    :try_start_6
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v13, :cond_1f

    invoke-static {v15}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_14

    :catchall_3
    move-exception v0

    :goto_15
    move-object/from16 v13, v25

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object/from16 v22, v13

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v22, v13

    move-object/from16 v15, v20

    goto :goto_15

    :goto_16
    :try_start_7
    invoke-static {v13, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-static {v15}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_20
    move-object v0, v7

    :goto_18
    move-object/from16 v6, p1

    goto :goto_1c

    :catchall_6
    move-exception v0

    invoke-static {v15}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_21
    :goto_19
    move-object/from16 v22, v13

    move-object/from16 v13, v25

    goto :goto_18

    :cond_22
    const-string v0, "Invalid product"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_23
    move-object/from16 v15, p1

    move-object/from16 v7, v22

    move-object/from16 v22, v13

    move-object/from16 v13, v25

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_1a

    :cond_24
    invoke-static {v15}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->o(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    move-object v6, v4

    goto :goto_1b

    :cond_25
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v15, 0x1

    invoke-static {v6, v0, v7, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1b
    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v9, v15, :cond_26

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object/from16 v15, v24

    invoke-static {v6, v0, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v15, 0x0

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    :cond_26
    :goto_1c
    invoke-static {v9, v6, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->y(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_27

    :goto_1d
    move-object v2, v0

    goto :goto_1e

    :cond_27
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "[generateApplySkuInfo] Invalid sku parameter. No item can be applied. beautyMode="

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v10, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v3, v2, v6, v14}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lbm;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v20

    :cond_28
    move-object/from16 v22, v13

    move-object/from16 v13, v25

    goto :goto_1d

    :goto_1e
    if-eqz v23, :cond_29

    move-object v14, v6

    goto :goto_1f

    :cond_29
    move-object v14, v2

    :goto_1f
    if-eqz v23, :cond_2a

    move-object v15, v2

    goto :goto_20

    :cond_2a
    move-object v15, v6

    :goto_20
    if-eqz v18, :cond_2b

    move-object/from16 v6, v18

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v25, v13

    const-string v13, "[generateApplySkuInfo] Usable IDs : beautyMode="

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5, v10, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", finalSkuItemGuid="

    const-string v4, ", finalSubItemGuid="

    invoke-static {v0, v3, v1, v14, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v22

    const/4 v1, 0x3

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->a:Ljava/util/List;

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v4, v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->b:I

    iput v4, v10, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;->a:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->c:I

    iput v0, v10, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;->b:I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const-string v0, "ColorIntensities"

    :try_start_8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v28

    filled-new-array {v6, v2, v7}, [Ljava/lang/String;

    move-result-object v30

    const-string v27, "PatternPaletteInfo"

    const-string v29, "PatternGUID=? AND PaletteGUID=? AND PaletteColorIndex=?"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v26 .. v34}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-static {v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-nez v11, :cond_2c

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v0, v20

    :goto_21
    move-object/from16 v13, v25

    goto :goto_24

    :cond_2c
    :try_start_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_21

    :catchall_7
    move-exception v0

    :goto_22
    move-object/from16 v13, v25

    goto :goto_23

    :catchall_8
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_22

    :goto_23
    :try_start_b
    invoke-static {v13, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v0, v7

    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :goto_25
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_28

    :cond_2d
    :try_start_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    move-object/from16 p1, v0

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v11, :cond_2e

    aget-object v18, p1, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    add-int/lit8 v0, v22, 0x1

    goto :goto_26

    :catchall_9
    move-exception v0

    goto :goto_27

    :cond_2e
    move-object v0, v4

    goto :goto_28

    :goto_27
    const-string v4, "TemplateUtils"

    const-string v11, "getPatternPaletteIntensities"

    invoke-static {v4, v11, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :goto_28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v11, -0x1

    if-nez v4, :cond_2f

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_29

    :cond_2f
    const/4 v4, 0x0

    move v0, v11

    :goto_29
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v16

    if-ne v0, v11, :cond_31

    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_2a

    :cond_30
    move v0, v11

    :cond_31
    :goto_2a
    move v4, v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    const-string v0, "HiddenIntensity"

    :try_start_d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v24

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v26

    const-string v23, "PatternPaletteInfo"

    const-string v25, "PatternGUID=? AND PaletteGUID=?"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    invoke-static {v11}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-nez v18, :cond_32

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v18, v1

    move-object/from16 v0, v20

    goto :goto_2c

    :cond_32
    :try_start_f
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v18, v1

    goto :goto_2c

    :catchall_a
    move-exception v0

    goto :goto_2b

    :catchall_b
    move-exception v0

    move-object/from16 v11, v20

    :goto_2b
    :try_start_10
    sget v18, Lcom/perfectcorp/common/utility/Log;->a:I

    move-object/from16 v18, v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v0, v7

    :goto_2c
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2d
    const/4 v1, -0x1

    goto :goto_2e

    :cond_33
    const/4 v0, -0x1

    goto :goto_2d

    :goto_2e
    if-ne v0, v1, :cond_34

    iget v0, v10, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;->a:I

    :cond_34
    invoke-static {v6, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v1, :cond_35

    iget v7, v10, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;->b:I

    :cond_35
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->a:Ljava/util/List;

    iput v0, v1, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->b:I

    iput v7, v1, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->c:I

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iget v13, v1, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->c:I

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v9, v1, :cond_36

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->c(Ljava/util/List;Ljava/util/List;)V

    :goto_2f
    move/from16 v7, v19

    goto :goto_30

    :cond_36
    move-object/from16 v1, v18

    goto :goto_2f

    :goto_30
    invoke-static {v7, v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    move-object/from16 v4, v21

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->c(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[generateApplySkuInfo] Start apply. beautyMode:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", skuSetGuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skuGuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", patternGuid:"

    const-string v7, ", paletteGuid:"

    invoke-static {v0, v8, v4, v6, v7}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", intensity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "N/A"

    goto :goto_31

    :cond_37
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",radiusIntensity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    invoke-static {v7, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v5, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    move-object v7, v9

    move-object v9, v6

    move-object v6, v7

    move-object v12, v1

    move-object v7, v8

    move-object v10, v14

    move-object v11, v15

    move-object v8, v2

    invoke-direct/range {v5 .. v13}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-object v5

    :cond_38
    move-object v7, v8

    const-string v0, "The SKU isn\'t presented in publish list. productGuid="

    invoke-static {v0, v7, v12, v5}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[generateApplySkuInfoInternal] "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :catchall_c
    move-exception v0

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :catchall_d
    move-exception v0

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;
    .locals 5

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v0

    if-ltz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ", paletteGuid="

    const-string v3, ", colors.size()="

    const-string v4, "color index out of bounds, skuSetGuid="

    invoke-static {v4, p1, v2, p2, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", paletteColorIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "-1"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/common/guava/predicate/StringPredicates;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lg7;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lg7;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    const-string v1, ", "

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a()[Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, p1, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "PatternPaletteInfo"

    const-string v4, "PaletteGUID=? AND PatternGUID=? AND PaletteColorIndex=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object p0, p3

    :goto_1
    :try_start_3
    const-string p2, "PatternPaletteInfoDao"

    sget v0, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p3

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p1

    :catchall_3
    move-exception v0

    move-object p0, v0

    const-string p1, "ApplyEffectUtility"

    const-string p2, "[getPatternPaletteInfo] failed."

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public static cacheCleanerDeleteById(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->e(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;

    move-result-object v0

    const-string v1, "SKU_SET_SKU_ID"

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->j:J

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->c:Ljava/lang/String;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->g:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;)V

    return-object p0

    :cond_0
    const-string p0, "Can\'t find skuSet, id="

    invoke-static {p0, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Can\'t find sku="

    if-nez v0, :cond_3

    const-string v0, "N/A"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0

    :cond_2
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;

    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;

    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/m;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->g(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3

    const/4 v0, 0x3

    const-string v1, "ApplyEffectUtility"

    const-string v2, "[transformToRelatedSkuGuidObservable] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lv7;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lv7;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lv7;

    invoke-direct {v1, v0}, Lv7;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Ln7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doFinally(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "queryBackgroundMetadataObservable guids is empty"

    const/4 v0, 0x3

    const-string v1, "ApplyEffectUtility"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$a;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lv7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lv7;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lv7;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lv7;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 7

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    const-string v2, "ApplyEffectUtility"

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "[useSkuByCacheStrategy] Check sku download state. skuGuid="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldGetSkuByShadeId="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, v2, p4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[useSkuByCacheStrategy] Sku downloaded. skuGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[useSkuByCacheStrategy] CacheStrategy is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$1;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v3, :cond_0

    new-instance p0, Lh7;

    invoke-direct {p0, p4, p2, p3, v0}, Lh7;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->z(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Unknown strategy="

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "downloadIfSkuUpdated start."

    invoke-static {v3, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, p4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {p3, p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->d(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lp7;

    invoke-direct {p1, p5, p4}, Lp7;-><init>(ZLcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)V

    new-instance p4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p4, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ly81;

    invoke-direct {p0, p3, p2, p6, v0}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, p4, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :cond_2
    invoke-static {p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "[useSkuByCacheStrategy] Start download. skuGuid="

    invoke-static {v3, p1, p0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->n(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 10

    const/4 v0, 0x3

    const-string v1, "ApplyEffectUtility"

    const-string v2, "[downloadSkuSets] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$1;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-ne v2, v0, :cond_0

    const-string v2, "[downloadSkuSets] CACHE_FIRST_THEN_UPDATE"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4, p3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->k(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "[downloadSkuSets] Unsupported strategy="

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v2, "[downloadSkuSets] UPDATE_FIRST"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3, p3, v3}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->d(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->f(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, "[downloadSkuSets] CACHE_FIRST"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v3, p3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->k(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    move-result-object p0

    :goto_0
    new-instance v4, Lm7;

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lm7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Ln7;

    invoke-direct {p1, v3}, Ln7;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doFinally(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[handleNoSkuGuidSettings] withNetworkQuery="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ApplyEffectUtility"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ls7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls7;-><init>(Ljava/lang/Object;ZI)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static k(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[handleSkuSetCacheFirst] start, skuSetIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thenUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ApplyEffectUtility"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lv7;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lv7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lv7;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lv7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lw7;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lw7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {p1, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1
.end method

.method public static l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getDownloadAndApplyLookSingle] cacheStrategy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ApplyEffectUtility"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$1;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    new-instance p2, Ll7;

    invoke-direct {p2, p4, p1, p3, p0}, Ll7;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_0
    const-string p0, "[getDownloadAndApplyLookSingle] Unknown strategy="

    invoke-static {p2, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ll7;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Ll7;-><init>(Ljava/lang/String;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v1, p4

    new-instance p0, Ll7;

    const/4 v6, 0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ll7;-><init>(Ljava/lang/String;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

.method public static m(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;
    .locals 1

    invoke-virtual {p4}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/camera/panel/a;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p2

    new-instance p3, Lo2;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Lo2;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    check-cast p2, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p2, p3, p1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance p2, Lx1;

    const/16 p3, 0x1c

    invoke-direct {p2, p3}, Lx1;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lo2;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p1

    new-instance p2, Lb8;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lb8;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public static n(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty sku guid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    goto :goto_2

    :cond_0
    const-string v0, "[downloadSkuByProtocolMethod] id="

    const/4 v1, 0x3

    const-string v2, "ApplyEffectUtility"

    invoke-static {v1, v0, p0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->b:Li8;

    if-eqz p5, :cond_3

    if-ne p5, v0, :cond_1

    :goto_0
    move-object v6, p5

    goto :goto_1

    :cond_1
    instance-of v0, p5, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;

    invoke-direct {v0, p5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;)V

    :cond_3
    move-object v6, v0

    :goto_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p5

    new-instance v0, Lx7;

    const/4 v7, 0x0

    invoke-direct {v0, v6, p4, p0, v7}, Lx7;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v1, p5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p5

    new-instance v1, Ly7;

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Ly7;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p5, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lz7;

    invoke-direct {p1, v7, v2, p4}, Lz7;-><init>(ILjava/lang/String;Z)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object p0, p2

    :goto_2
    new-instance p1, Lx1;

    const/16 p2, 0x1c

    invoke-direct {p1, p2}, Lx1;-><init>(I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p2
.end method

.method public static o(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->q:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Lg7;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    const-string p0, "Invalid product"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->skuGuid:Ljava/lang/String;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->itemGuid:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/e;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const-string v7, "skuSetId can\'t be null"

    if-ne v6, p0, :cond_1

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v6, p0, v3, v4}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    iget v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatioBack:F

    iput v3, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->i:F

    iget v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatioPalm:F

    iput v3, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->j:F

    iget-boolean v3, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->i0:Z

    iput-boolean v3, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->k:Z

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->position:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/RingPosition;->of(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RingPosition;

    move-result-object v2

    iput-object v2, v6, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {v2, v6}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v6, p0, :cond_2

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v8, p0, :cond_0

    :cond_2
    new-instance v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {v8, v6, v3, v4}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a(Ljava/lang/String;)V

    iget v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->objectDistanceRatio:F

    iput v2, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->g:F

    iget-boolean v2, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f0:Z

    iput-boolean v2, v8, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->h:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {v2, v8}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static r(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->E(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    iget v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    invoke-static {v5, p1, v4}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-result-object v4

    iget v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shineIntensity:I

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iput v5, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->g:I

    iget v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shimmerIntensity:I

    iput v5, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->d:I

    iget v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->metallicIntensity:I

    iput v5, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->e:I

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    iget v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->colorIntensity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result p0

    invoke-static {p0, p1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    iget v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteColorIndex:I

    invoke-static {v5, p1, v4}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    iget v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->colorIntensity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result p0

    invoke-static {p0, p1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_3
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no color info available for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported SKU set type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lg7;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lg7;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "ApplyEffectUtility"

    const-string v0, "[extractPaletteColorIndexes] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 5

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, p0, p1, p2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "] colorIntensities=["

    const-string v3, "]"

    const-string v4, "[getSubPaletteIntensities] colorIndex=["

    invoke-static {v4, p0, v2, p1, v3}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "ApplyEffectUtility"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lxx0;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :goto_1
    if-ge v3, v1, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_0

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    move p0, p4

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_4
    if-ge v3, v1, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_4
    move v2, p4

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_6
    invoke-static {p4, v0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static u(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;ZLjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v1, " patternGuid="

    const-string v2, " paletteGuid"

    const-string v3, "[fillFaceContourParameters] skuGuid="

    move-object/from16 v7, p2

    invoke-static {v3, v7, v1, v4, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subPaletteGuid="

    const-string v3, " itemSubType="

    invoke-static {v1, v5, v2, v6, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " colorSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "ApplyEffectUtility"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p6 .. p6}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v8

    if-eqz v8, :cond_d

    iget v8, v8, Lcom/perfectcorp/perfectlib/ph/template/m;->o:I

    invoke-static {v1, v4, v5, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move-result-object v1

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    :cond_0
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    invoke-virtual {v1, v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->b(I)Z

    move-result v1

    sget-object v10, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->CONTOUR:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    invoke-virtual {v10, v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->b(I)Z

    move-result v8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v9, "[fillFaceContourParameters] colorIndexList is empty"

    invoke-static {v2, v3, v9}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v11, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[fillFaceContourParameters] colors.size()="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", intensities.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", colorIndexList="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ltz v13, :cond_3

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_3

    move-object/from16 v14, p6

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-object/from16 v15, p9

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_1

    :cond_3
    move-object/from16 v14, p6

    move-object/from16 v15, p9

    const-string v9, "[fillFaceContourParameters] colorIndex="

    const-string v2, ", colors.size()="

    invoke-static {v13, v9, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", intensityIndex="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    move-object/from16 v14, p6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "[fillFaceContourParameters] pattern withHighlight="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " withContour="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    invoke-static {v9, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    if-nez p8, :cond_5

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v3, p10

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v12

    goto :goto_2

    :cond_5
    move-object/from16 v3, p10

    :cond_6
    const/4 v2, 0x0

    :goto_2
    const/4 v9, 0x0

    if-eqz v2, :cond_7

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    move-result-object v10

    move-object v13, v10

    goto :goto_3

    :cond_7
    move-object v13, v9

    :goto_3
    if-eqz v2, :cond_9

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :cond_9
    :goto_4
    move-object v15, v9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a

    if-eqz v1, :cond_a

    if-eqz v8, :cond_a

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v8, p7

    move-object v3, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    move-object v13, v1

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    :goto_5
    move-object v15, v1

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    move-object v13, v1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    if-eqz v8, :cond_c

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    goto :goto_5

    :goto_6
    iput-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    return-void

    :cond_c
    invoke-virtual/range {p7 .. p7}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, " is not supported"

    const-string v2, "[fillFaceContourParameters] itemSubType="

    invoke-static {v2, v0, v1}, Laz;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v0, "[fillFaceContourParameters] pattern is not in database, guid="

    invoke-static {v0, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "[fillFaceContourParameters] color is empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "lookGuid="

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string v2, "Empty URI. lookGuid="

    const-string v3, ", statusCode="

    invoke-static {v2, v1, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotSupportedException;

    invoke-static {v3, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/LookNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    invoke-static {v3, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V
    .locals 2

    new-instance v0, Ln2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->z(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static x(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->m:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->p(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_2
    new-instance v0, Lx5;

    invoke-direct {v0, v1}, Lx5;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->m:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static y(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0, p2, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static z(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_0
    const-string p0, "SkuHandler is null. SDK might be released."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
