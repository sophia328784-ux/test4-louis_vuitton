.class public final Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "Landroid/os/Bundle;",
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

    iput-object p1, p0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p2, p0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method

.method public static d(Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "item_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_category"

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->d:Ljava/lang/Double;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-string v1, "price"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->f:Ljava/lang/Double;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v1, v5, v3

    if-lez v1, :cond_3

    move-object v2, p0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p0, "quantity"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;

    const-string v4, "value"

    const-wide/16 v5, 0x0

    const-string v7, "currency"

    const-string v8, "items"

    const/4 v9, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;->f:Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->d(Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;)Landroid/os/Bundle;

    move-result-object v1

    filled-new-array {v1}, [Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v9

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;->d:Ljava/lang/Double;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_d

    :cond_3
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;

    const-string v10, "quantity"

    const/16 v11, 0xa

    const-string v12, "price"

    if-eqz v3, :cond_6

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productSku"

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->g:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->j:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "backOrder_yes"

    goto :goto_2

    :cond_4
    const-string v1, "backOrder_no"

    :goto_2
    const-string v3, "backOrderStatus"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->h:Ljava/lang/String;

    invoke-virtual {v0, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->i:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;->k:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;

    invoke-static {v3}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->d(Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :cond_6
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;

    const-string v13, "index"

    const-string v14, "item_list_name"

    const-string v15, "item_list_id"

    const-string v5, "item_name"

    const-string v6, "item_id"

    if-eqz v3, :cond_b

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;->h:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;->j:Ljava/util/List;

    invoke-virtual {v0, v15, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;->i:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v9

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    check-cast v3, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->c:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->b:Ljava/lang/String;

    invoke-virtual {v4, v14, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->a:Ljava/lang/String;

    invoke-virtual {v4, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->e:Ljava/lang/Double;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_6

    :cond_9
    const-wide/16 v10, 0x0

    :goto_6
    invoke-virtual {v4, v12, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget v3, v3, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;->f:I

    invoke-virtual {v4, v13, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :cond_b
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;

    if-eqz v3, :cond_10

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;->h:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;->j:Ljava/util/List;

    invoke-virtual {v0, v15, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;->i:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;->g:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    move-object v1, v9

    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    check-cast v3, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->c:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->b:Ljava/lang/String;

    invoke-virtual {v4, v14, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->a:Ljava/lang/String;

    invoke-virtual {v4, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->e:Ljava/lang/Double;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_9

    :cond_e
    const-wide/16 v10, 0x0

    :goto_9
    invoke-virtual {v4, v12, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget v3, v3, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;->g:I

    invoke-virtual {v4, v13, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :cond_10
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_term"

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_11
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;

    if-eqz v3, :cond_12

    move-object v0, v9

    goto/16 :goto_d

    :cond_12
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;

    if-eqz v3, :cond_15

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "screen_name"

    invoke-interface {v2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "page_name"

    invoke-interface {v2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "environmentLanguage"

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "screenOrientation"

    const-string v4, "portrait"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "page_type"

    invoke-interface {v2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->EURO_LAND:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    if-ne v3, v4, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->e:Z

    if-eqz v2, :cond_21

    :cond_14
    :goto_a
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "invoicingCountryForSite"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    if-eqz v3, :cond_16

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_d

    :cond_16
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;

    if-eqz v3, :cond_17

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "experience_id"

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "variant_id"

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_17
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;

    if-eqz v3, :cond_25

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_19
    const-string v2, "transaction_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string v2, "page_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v2, "payment_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v3, :cond_20

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v6, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v5

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v14, v12, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_c

    :cond_1d
    move-object/from16 v16, v5

    :goto_c
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v10, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v16

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    new-array v1, v4, [Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_21
    :goto_d
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    const/16 v4, 0x64

    invoke-static {v4, v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_23
    return-object v0

    :cond_24
    return-object v9

    :cond_25
    invoke-static {}, Lv40;->g()V

    return-object v9
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "event_category"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event_label"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "actionPosition"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event_action"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "page_type"

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Landroid/os/Bundle;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "environmentId"

    const-string v3, "LVPassApp"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v2}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "prd"

    const-string v3, "environmentType"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "environmentVersion"

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "platform_name"

    const-string v3, "LV_APP"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "platform_type"

    const-string v3, "APP"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

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
    const-string v3, "userLogStatus"

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit;->g()Ljava/util/List;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    const-string v7, "productSku"

    const/16 v8, 0xa

    const-string v9, ""

    if-eqz v5, :cond_5

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_3

    check-cast v5, Ljava/util/List;

    if-lez v6, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_2
    move-object v6, v9

    :goto_4
    invoke-static {v6, v7}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v5

    check-cast v10, Ljava/lang/Iterable;

    sget-object v14, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$1$1;->b:Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$1$1;

    const/16 v15, 0x1e

    const-string v11, ","

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    goto :goto_3

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v2

    :cond_4
    :goto_5
    move-object/from16 p0, v2

    goto/16 :goto_11

    :cond_5
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    if-eqz v5, :cond_8

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    if-ltz v6, :cond_7

    check-cast v5, Ljava/util/List;

    if-lez v6, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_7

    :cond_6
    move-object v6, v9

    :goto_7
    const-string v8, "vtoSku"

    invoke-static {v6, v8}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v5

    check-cast v10, Ljava/lang/Iterable;

    sget-object v14, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$2$1;->b:Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$2$1;

    const/16 v15, 0x1e

    const-string v11, ","

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_6

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v2

    :cond_8
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;->a:Ljava/lang/String;

    const-string v5, "level_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;->a:Ljava/lang/String;

    const-string v5, "numberOfResults"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;->a:Ljava/lang/String;

    const-string v5, "internalSearchKeywords"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;->a:Ljava/lang/String;

    const-string v5, "filterId"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    const-string v10, "contentId"

    if-eqz v5, :cond_d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;->a:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    if-eqz v5, :cond_e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;->a:Ljava/lang/String;

    const-string v5, "contentType"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    const-string v11, "article_id"

    if-eqz v5, :cond_f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    if-eqz v5, :cond_10

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;->a:Ljava/lang/String;

    const-string v5, "module_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    if-eqz v5, :cond_11

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;->a:Ljava/lang/String;

    const-string v5, "look_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;->a:Ljava/lang/String;

    const-string v5, "onlineSellable"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;

    if-eqz v5, :cond_13

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;->a:Ljava/lang/String;

    const-string v5, "productStockStatus"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;->a:Ljava/lang/String;

    const-string v5, "exclusiveSaleStatus"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    if-eqz v5, :cond_15

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    iget-boolean v6, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    iget-boolean v7, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    iget-boolean v8, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    invoke-static {v5, v6, v7, v8, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->a(ZZZZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cookie_consent"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    if-eqz v5, :cond_16

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;->a:Ljava/lang/String;

    const-string v6, "storeId"

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;->b:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "store_mode"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    const-string v12, "price"

    if-eqz v5, :cond_17

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;->a:Ljava/lang/String;

    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    const-string v13, "currency"

    if-eqz v5, :cond_18

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;->a:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    const-string v14, "SKU"

    if-eqz v5, :cond_19

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;->a:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;->a:Ljava/lang/String;

    const-string v5, "step_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;

    if-eqz v5, :cond_1c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;->a:Ljava/lang/String;

    if-nez v4, :cond_1b

    move-object v4, v2

    :cond_1b
    const-string v5, "productID"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    if-eqz v5, :cond_1d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;->a:Ljava/lang/String;

    const-string v5, "certificate_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    if-eqz v5, :cond_1f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;->a:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "backOrder_yes"

    goto :goto_8

    :cond_1e
    const-string v4, "backOrder_no"

    :goto_8
    const-string v5, "backOrderStatus"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    const-string v15, "quantity"

    if-eqz v5, :cond_20

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;->a:Ljava/lang/String;

    invoke-virtual {v3, v15, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_20
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;

    if-eqz v5, :cond_21

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;->a:I

    const-string v5, "myAppointmentNumberOfResults"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_21
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    if-eqz v5, :cond_22

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;->a:Ljava/lang/String;

    const-string v5, "store_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_22
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;

    if-eqz v5, :cond_23

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;->a:Ljava/lang/String;

    const-string v5, "my_appointment_date"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_23
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    if-eqz v5, :cond_24

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;->a:Ljava/lang/String;

    const-string v5, "appointment_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_24
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;

    if-eqz v5, :cond_25

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;->a:Ljava/lang/String;

    const-string v5, "my_appointment_search"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_25
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    if-eqz v5, :cond_28

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    if-ltz v6, :cond_27

    check-cast v5, Ljava/lang/String;

    if-lez v6, :cond_26

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_a

    :cond_26
    move-object v6, v9

    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "experience_id"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_9

    :cond_27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v2

    :cond_28
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    if-eqz v5, :cond_29

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;->a:Ljava/lang/String;

    const-string v5, "my_prebook_appointment_date"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_29
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;

    if-eqz v5, :cond_2a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;->a:Ljava/lang/String;

    const-string v5, "my_prebook_appointment_type"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;

    if-eqz v5, :cond_2b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;->a:I

    const-string v5, "totalDigitalOrders"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_2b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;

    if-eqz v5, :cond_2c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;->a:I

    const-string v5, "totalRetailOrders"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_2c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;

    if-eqz v5, :cond_2d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;->a:Ljava/lang/String;

    const-string v5, "digitalPurchaseId"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;

    if-eqz v5, :cond_2e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;->a:Ljava/lang/String;

    const-string v5, "retailPurchaseId"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;

    if-eqz v5, :cond_2f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;

    if-eqz v5, :cond_30

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;->a:Ljava/util/List;

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v6, ","

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reason_key"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_30
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    if-eqz v5, :cond_31

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    iget v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;->a:I

    const-string v5, "number_characters_typed"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_31
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    if-eqz v5, :cond_32

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;->a:Ljava/lang/String;

    const-string v5, "collection_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_32
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    if-eqz v5, :cond_33

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;->a:Ljava/lang/String;

    const-string v5, "origin"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_33
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    if-eqz v5, :cond_34

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;->a:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "virtual_studio"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_34
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;

    if-eqz v5, :cond_35

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;->a:Ljava/lang/String;

    const-string v5, "category_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_35
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    if-eqz v5, :cond_36

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;->a:Ljava/lang/String;

    const-string v5, "channel_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_36
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    const-string v11, "total_amount"

    move-object/from16 p0, v2

    const-string v2, "shipping_method"

    const-string v6, "transaction_id"

    if-eqz v5, :cond_37

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status_id"

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->d:Ljava/lang/String;

    invoke-virtual {v3, v11, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->e:Ljava/lang/String;

    invoke-virtual {v3, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->f:Ljava/lang/String;

    invoke-virtual {v3, v14, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->g:I

    invoke-virtual {v3, v15, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "shipping_address_status"

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;->h:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_37
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;

    if-eqz v5, :cond_38

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;

    iget-boolean v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "category_with_image"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_38
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    if-eqz v5, :cond_39

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;->a:Ljava/lang/String;

    const-string v4, "search_context"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_39
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    if-eqz v5, :cond_3a

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;->a:I

    const-string v4, "index"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11

    :cond_3a
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;

    if-eqz v5, :cond_3b

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;->a:Ljava/lang/String;

    const-string v4, "native_share"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3b
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;

    if-eqz v5, :cond_3c

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;->a:Ljava/lang/String;

    const-string v4, "marketing_channel_type"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3c
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    if-eqz v5, :cond_3d

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;->a:Ljava/lang/String;

    const-string v4, "entry_point"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3d
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;

    if-eqz v5, :cond_3e

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;->a:Ljava/lang/String;

    const-string v4, "error_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3e
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    if-eqz v5, :cond_3f

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;->a:Ljava/lang/String;

    const-string v4, "context"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3f
    instance-of v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    if-eqz v5, :cond_49

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v14, 0x1

    if-ltz v14, :cond_41

    check-cast v16, Ljava/util/List;

    if-lez v14, :cond_40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_c

    :cond_40
    move-object v14, v9

    :goto_c
    invoke-static {v14, v7}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v16

    check-cast v18, Ljava/lang/Iterable;

    sget-object v22, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$4$1;->b:Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder$buildAdditionalProperties$1$1$4$1;

    const/16 v23, 0x1e

    const-string v19, ","

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v14, v17

    const/16 v8, 0xa

    goto :goto_b

    :cond_41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p0

    :cond_42
    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v14, v7, 0x1

    if-ltz v7, :cond_44

    check-cast v8, Ljava/util/List;

    if-lez v7, :cond_43

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_e

    :cond_43
    move-object v7, v9

    :goto_e
    invoke-static {v7, v12}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v17, ","

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v14

    goto :goto_d

    :cond_44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p0

    :cond_45
    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v12, v7, 0x1

    if-ltz v7, :cond_47

    check-cast v8, Ljava/util/List;

    if-lez v7, :cond_46

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_10

    :cond_46
    move-object v7, v9

    :goto_10
    invoke-static {v7, v15}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v17, ","

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v12

    goto :goto_f

    :cond_47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p0

    :cond_48
    iget-wide v7, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    invoke-virtual {v3, v11, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    invoke-virtual {v3, v13, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "shipping_country"

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "shipping_state"

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "shipping_cost"

    iget v5, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    invoke-virtual {v3, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cart_id"

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v2, p0

    goto/16 :goto_2

    :cond_49
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_4a
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v1
.end method
