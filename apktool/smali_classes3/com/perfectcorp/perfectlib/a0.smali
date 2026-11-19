.class public final synthetic Lcom/perfectcorp/perfectlib/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/a0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/perfectcorp/perfectlib/a0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ContentPreloader"

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, v1, :cond_1

    const-string p0, "hairdye_pattern_one_color_full"

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoObject;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/perfectcorp/perfectlib/SkuHandler$1;->b:[I

    iget v5, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->statusCode:I

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->b(I)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-wide v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->j:J

    iget-wide v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->UPDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    :goto_2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_SUPPORTED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_FOUND:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_2

    :goto_3
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v1

    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "productId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "inventory"

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->getQuantity()I

    move-result v2

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "RECOMMENDATION_EXTRA_INFO"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    const-string p1, "SkinCare3RecommendationHandler"

    const-string v0, "[updateInventory] json parse failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_6
    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/perfectcorp/perfectlib/m1;

    invoke-direct {v2, v1, v0, v4}, Lcom/perfectcorp/perfectlib/m1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/z0;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, p0, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v2

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Looks:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v1, v3, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v4, "look_guid"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/LookInfo;

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_7
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_7

    :cond_a
    :goto_8
    return-object p1

    :pswitch_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "preload ID system content failed, id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v1, p1}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lg8;

    invoke-direct {p1, p0, v2}, Lg8;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[preloadLook] failed, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v2, p1}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[preloadSku] failed, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v2, p1}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a0;->d:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/graphics/Bitmap;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    sget p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    .line 614
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-virtual {v6, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget v3, v3, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    const-string v3, "applyEffectIdsInfo can\'t be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget p1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->q:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    iget-object p2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    const-string v1, "leftTop can\'t be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rightTop can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "leftDown can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rightDown can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v2, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    int-to-float p1, v1

    invoke-virtual {v4, p0, p1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    int-to-float p2, v2

    invoke-virtual {v4, p0, v5, p2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p0, p1, p2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v3

    :cond_0
    return-object v1
.end method
