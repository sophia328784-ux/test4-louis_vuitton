.class public final Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u001b\u0012\u0017\u0012\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002\u00a2\u0006\u0002\u0008\u00050\u0001B!\u0008\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "",
        "",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p2, p0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;

    const-string v1, "quantity"

    const-string v2, "currency"

    const-string v3, "price"

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;->g:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    const-string p0, "item_id"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;->f:Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;

    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->b:Ljava/lang/String;

    const-string v0, "item_name"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "item_category"

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->d:Ljava/lang/Double;

    const-wide/16 v5, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpl-double v0, v7, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v4

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "value"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->e:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v4

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->f:Ljava/lang/Double;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double p2, v2, v5

    if-lez p2, :cond_4

    move-object v4, p0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p1

    :cond_6
    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "productSku"

    iget-object v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->f:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->g:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->j:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "backOrder_yes"

    goto :goto_2

    :cond_7
    const-string p0, "backOrder_no"

    :goto_2
    const-string v0, "backOrderStatus"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->h:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->i:Ljava/lang/String;

    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_8
    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;

    if-eqz v0, :cond_9

    goto/16 :goto_4

    :cond_9
    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "screen_name"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_name"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "language"

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->l:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "screenOrientation"

    const-string v1, "portrait"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_type"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->EURO_LAND:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    if-ne p2, v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    return-object v0

    :cond_c
    :goto_3
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "invoicingCountryForSite"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_d
    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    if-eqz v0, :cond_e

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;

    if-eqz p0, :cond_f

    goto :goto_4

    :cond_f
    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;

    if-eqz p0, :cond_10

    goto :goto_4

    :cond_10
    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;

    if-eqz p0, :cond_11

    goto :goto_4

    :cond_11
    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    if-eqz p0, :cond_12

    goto :goto_4

    :cond_12
    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;

    if-eqz p0, :cond_13

    :goto_4
    return-object v4

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Ljava/util/LinkedHashMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "event_category"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_label"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "actionPosition"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_action"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_type"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/util/LinkedHashMap;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "environmentId"

    const-string v3, "LVPassApp"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v2}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "prd"

    const-string v3, "environmentType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "environmentVersion"

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "logged_user"

    goto :goto_1

    :cond_1
    const-string v0, "not_logged_user"

    :goto_1
    const-string v3, "user_log_status"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit;->g()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    const-string v6, "productSku"

    if-eqz v5, :cond_2

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;->a:Ljava/util/List;

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;->a:Ljava/util/List;

    const-string v5, "vtoSku"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;->a:Ljava/lang/String;

    const-string v5, "level_name"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;->a:Ljava/lang/String;

    const-string v5, "numberOfResults"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    if-eqz v5, :cond_6

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;->a:Ljava/lang/String;

    const-string v5, "internalSearchKeywords"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;->a:Ljava/lang/String;

    const-string v5, "filterId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    const-string v7, "contentId"

    if-eqz v5, :cond_8

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;->a:Ljava/lang/String;

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;->a:Ljava/lang/String;

    const-string v5, "contentType"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    const-string v8, "article_id"

    if-eqz v5, :cond_a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;->a:Ljava/lang/String;

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;->a:Ljava/lang/String;

    const-string v5, "module_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;->a:Ljava/lang/String;

    const-string v5, "look_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;

    if-eqz v5, :cond_d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;->a:Ljava/lang/String;

    const-string v5, "onlineSellable"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;

    if-eqz v5, :cond_e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;->a:Ljava/lang/String;

    const-string v5, "productStockStatus"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;

    if-eqz v5, :cond_f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;->a:Ljava/lang/String;

    const-string v5, "exclusiveSaleStatus"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    if-eqz v5, :cond_10

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    iget-boolean v6, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    iget-boolean v7, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    iget-boolean v8, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    invoke-static {v5, v6, v7, v8, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->a(ZZZZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cookie_consent"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_10
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    if-eqz v5, :cond_11

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;->a:Ljava/lang/String;

    const-string v6, "storeId"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "store_mode"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_11
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    const-string v9, "price"

    if-eqz v5, :cond_12

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;->a:Ljava/lang/String;

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_12
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    const-string v10, "currency"

    if-eqz v5, :cond_13

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;->a:Ljava/lang/String;

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_13
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    const-string v11, "SKU"

    if-eqz v5, :cond_14

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    if-eqz v5, :cond_15

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;->a:Ljava/lang/String;

    const-string v5, "step_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_15
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;

    if-eqz v5, :cond_17

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;->a:Ljava/lang/String;

    if-eqz v4, :cond_16

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    invoke-direct {v5, v4}, Lcom/vuitton/foundation/model/domain/model/product/ProductId;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    move-object v5, v2

    :goto_3
    const-string v4, "productID"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_17
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    if-eqz v5, :cond_18

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;->a:Ljava/lang/String;

    const-string v5, "certificate_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_18
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;->a:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "backOrder_yes"

    goto :goto_4

    :cond_19
    const-string v4, "backOrder_no"

    :goto_4
    const-string v5, "backOrderStatus"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    const-string v12, "quantity"

    if-eqz v5, :cond_1b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;->a:Ljava/lang/String;

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;

    if-eqz v5, :cond_1c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "myAppointmentNumberOfResults"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    if-eqz v5, :cond_1d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;->a:Ljava/lang/String;

    const-string v5, "store_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;

    if-eqz v5, :cond_1e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;->a:Ljava/lang/String;

    const-string v5, "my_appointment_date"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    if-eqz v5, :cond_1f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;->a:Ljava/lang/String;

    const-string v5, "appointment_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;

    if-eqz v5, :cond_20

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;->a:Ljava/lang/String;

    const-string v5, "my_appointment_search"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_20
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    if-eqz v5, :cond_21

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;->a:Ljava/util/List;

    const-string v5, "experience_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_21
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    if-eqz v5, :cond_22

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;->a:Ljava/lang/String;

    const-string v5, "my_prebook_appointment_date"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_22
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;

    if-eqz v5, :cond_23

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;->a:Ljava/lang/String;

    const-string v5, "my_prebook_appointment_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_23
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;

    if-eqz v5, :cond_24

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "totalDigitalOrders"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_24
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;

    if-eqz v5, :cond_25

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "totalRetailOrders"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_25
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;

    if-eqz v5, :cond_26

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;->a:Ljava/lang/String;

    const-string v5, "digitalPurchaseId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_26
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;

    if-eqz v5, :cond_27

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;->a:Ljava/lang/String;

    const-string v5, "retailPurchaseId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_27
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;

    if-eqz v5, :cond_28

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;->a:Ljava/lang/String;

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_28
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;

    if-eqz v5, :cond_29

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;->a:Ljava/util/List;

    const-string v5, "reason_key"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_29
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    if-eqz v5, :cond_2a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "number_characters_typed"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    if-eqz v5, :cond_2b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;->a:Ljava/lang/String;

    const-string v5, "collection_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    if-eqz v5, :cond_2c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;->a:Ljava/lang/String;

    const-string v5, "origin"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    if-eqz v5, :cond_2d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;->a:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "virtual_studio"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;

    if-eqz v5, :cond_2e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;->a:Ljava/lang/String;

    const-string v5, "category_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    if-eqz v5, :cond_2f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;->a:Ljava/lang/String;

    const-string v5, "channel_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    const-string v8, "total_amount"

    const-string v13, "shipping_method"

    const-string v14, "transaction_id"

    if-eqz v5, :cond_30

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->a:Ljava/lang/String;

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->b:Ljava/lang/String;

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status_id"

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->c:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->d:Ljava/lang/String;

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->e:Ljava/lang/String;

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->f:Ljava/lang/String;

    invoke-interface {v3, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "shipping_address_status"

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->h:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_30
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;

    if-eqz v5, :cond_31

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;->a:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category_with_image"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_31
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    if-eqz v5, :cond_32

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;->a:Ljava/lang/String;

    const-string v5, "search_context"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_32
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    if-eqz v5, :cond_33

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "index"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_33
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;

    if-eqz v5, :cond_34

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;->a:Ljava/lang/String;

    const-string v5, "native_share"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_34
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;

    if-eqz v5, :cond_35

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;->a:Ljava/lang/String;

    const-string v5, "marketing_channel_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_35
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    if-eqz v5, :cond_36

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;->a:Ljava/lang/String;

    const-string v5, "entry_point"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_36
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;

    if-eqz v5, :cond_37

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;->a:Ljava/lang/String;

    const-string v5, "error_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_37
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    if-eqz v5, :cond_38

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;->a:Ljava/lang/String;

    const-string v5, "context"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_38
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    if-eqz v5, :cond_39

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    move-object v15, v5

    check-cast v15, Ljava/lang/Iterable;

    sget-object v19, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;->b:Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;

    const/16 v20, 0x1e

    const-string v16, ","

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    move-object v15, v5

    check-cast v15, Ljava/lang/Iterable;

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v16, ","

    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    move-object v15, v5

    check-cast v15, Ljava/lang/Iterable;

    const-string v16, ","

    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "shipping_country"

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "shipping_state"

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "shipping_cost"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "cart_id"

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_39
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_3a
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1
.end method
