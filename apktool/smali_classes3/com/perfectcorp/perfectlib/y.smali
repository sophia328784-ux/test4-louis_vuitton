.class public final synthetic Lcom/perfectcorp/perfectlib/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;
.implements Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/perfectcorp/perfectlib/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/perfectcorp/perfectlib/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Lcom/perfectcorp/perfectlib/ContentPreloader$LookVersions$LookVersion;

    iget-object p0, p2, Lcom/perfectcorp/perfectlib/ContentPreloader$LookVersions$LookVersion;->guid:Ljava/lang/String;

    iget p2, p2, Lcom/perfectcorp/perfectlib/ContentPreloader$LookVersions$LookVersion;->makeupVer:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perfectcorp/perfectlib/y;->b:I

    const-string v1, "LV"

    const-string v4, "[queryCustomFeatures] queried custom feature="

    const-string v5, "CUSTOM_FEATURE_BRAND"

    const-string v6, "No result in response."

    const-string v7, "No response from server."

    const/4 v8, 0x3

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ProductMaskHelper"

    const-string v1, "[checkNeedToUpdate] start"

    invoke-static {v8, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ProductMaskHelper;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    move-result-object v0

    new-instance v1, Lpv0;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lpv0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;

    iget-wide v0, v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;->productId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[flattenSkuItems] Flatten all items. productInfos#size()="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ShadeFinderRecommendationHandler"

    invoke-static {v8, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v5, Lct0;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lct0;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v5, Lct0;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Lct0;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v6, v1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;->shadeFinder:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;

    if-eqz v12, :cond_2

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;->shadeFinderV4ItemGuidLabMapping:Ljava/util/Map;

    if-eqz v12, :cond_2

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v12

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v12

    :goto_1
    invoke-virtual {v12}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v7, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v13

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ProductInfo;->getSkus()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v2, v15, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [F

    if-eqz v16, :cond_3

    const/16 v17, 0x2

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    const/16 v18, 0x0

    aget v9, v16, v18

    move/from16 v19, v10

    aget v10, v16, v19

    aget v8, v16, v17

    invoke-direct {v3, v9, v10, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;-><init>(FFF)V

    new-instance v8, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;->shadeFinder:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;

    if-eqz v9, :cond_4

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b$a;->shadeFinderV4ItemGuidWcldMapping:Ljava/util/Map;

    if-eqz v9, :cond_4

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-direct {v8, v7, v15, v3, v2}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v19

    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[flattenSkuItems] All items are flattened. skuDatas#size()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v5

    :cond_6
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;

    const-string v1, "skuDatas is empty."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;

    const-string v1, "productInfos is empty."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object v0, v0, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b;

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b;->result:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$b;

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$b;->customFeature:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;

    if-nez v0, :cond_8

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;-><init>()V

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/perfectcorp/perfectlib/ShadeFinder$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v2}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;->brand:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;->brand:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "CUSTOM_FEATURE_SHADE_FINDER_LV"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;->brand:Ljava/lang/String;

    const-string v3, "ShadeFinder"

    const/4 v4, 0x3

    invoke-static {v1, v2, v4, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    return-object v0

    :pswitch_5
    move/from16 v19, v10

    const/16 v18, 0x0

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v1, Lbq0;

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v1, v2, v4, v3}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_5

    :cond_a
    move/from16 v4, v19

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v2, Lbq0;

    invoke-direct {v2, v1, v4, v4}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object v1, v2

    goto :goto_5

    :cond_b
    new-instance v3, Lho0;

    invoke-direct {v3, v1, v2, v4, v4}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object v1, v3

    :goto_5
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/b3;

    invoke-direct {v1, v0, v4}, Lcom/perfectcorp/perfectlib/b3;-><init>(Lcom/perfectcorp/perfectlib/EffectId;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_6
    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v1, Lbq0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_7

    :cond_d
    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v2, Lbq0;

    invoke-direct {v2, v1, v4, v4}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object v1, v2

    goto :goto_7

    :cond_e
    new-instance v3, Lho0;

    invoke-direct {v3, v1, v2, v4, v4}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object v1, v3

    :goto_7
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/a3;

    invoke-direct {v1, v0, v4}, Lcom/perfectcorp/perfectlib/a3;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_8
    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    new-instance v2, Lcom/perfectcorp/perfectlib/c2;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_9
    const/16 v17, 0x2

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v1, Lbq0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_9

    :cond_10
    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v2, Lbq0;

    invoke-direct {v2, v1, v4, v4}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object v1, v2

    goto :goto_9

    :cond_11
    new-instance v3, Lho0;

    invoke-direct {v3, v1, v2, v4, v4}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object v1, v3

    :goto_9
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/b3;

    move/from16 v3, v17

    invoke-direct {v1, v0, v3}, Lcom/perfectcorp/perfectlib/b3;-><init>(Lcom/perfectcorp/perfectlib/EffectId;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_a
    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    goto :goto_b

    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_13

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_13
    const-string v0, "No configuration can be applied."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_b
    return-object v2

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    new-instance v2, Lcom/perfectcorp/perfectlib/c2;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_d

    :cond_14
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v1, Lbq0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_c

    :cond_15
    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v2, Lbq0;

    invoke-direct {v2, v1, v4, v4}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object v1, v2

    goto :goto_c

    :cond_16
    new-instance v3, Lho0;

    invoke-direct {v3, v1, v2, v4, v4}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object v1, v3

    :goto_c
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/b3;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/perfectcorp/perfectlib/b3;-><init>(Lcom/perfectcorp/perfectlib/EffectId;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_d
    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_f

    :cond_17
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v1, Lbq0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_e

    :cond_18
    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v2, Lbq0;

    invoke-direct {v2, v1, v4, v4}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object v1, v2

    goto :goto_e

    :cond_19
    new-instance v3, Lho0;

    invoke-direct {v3, v1, v2, v4, v4}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object v1, v3

    :goto_e
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/a3;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/perfectcorp/perfectlib/a3;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_f
    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object v0, v0, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a;

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a;->result:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$b;

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$b;->customFeature:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;-><init>()V

    goto :goto_10

    :cond_1a
    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCam$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->brand:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_BAD_LIGHTING_LV"

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->badLightingLV:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_SKINSMOOTH_LV"

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->skinsmoothLV:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_LOOK_COMPARISON_LV"

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->lookComparisonLV:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->brand:Ljava/lang/String;

    const-string v3, "MakeupCam"

    const/4 v4, 0x3

    invoke-static {v1, v2, v4, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :goto_10
    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object v0, v0, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d;

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d;->result:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$b;

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$b;->customFeature:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;-><init>()V

    goto :goto_11

    :cond_1b
    sget-object v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v2}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;->brand:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;->brand:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "CUSTOM_FEATURE_FACE_ATTRIBUTE_LV"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;->brand:Ljava/lang/String;

    const-string v3, "FaceAttributeAnalyzer"

    const/4 v4, 0x3

    invoke-static {v1, v2, v4, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :goto_11
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1294
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p1
.end method

.method public onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTaken()V
    .locals 0

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->guid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
