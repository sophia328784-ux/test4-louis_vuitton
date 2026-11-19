.class public abstract Lcom/vuitton/android/presentation/screen/orders/OrderDestinationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 12

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;->a:Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p0, "TRACKING_SCREEN_NAME"

    const-string p1, "my_order_details"

    invoke-virtual {v4, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TRACKING_EVENT_CATEGORY"

    const-string p1, "my_orders"

    invoke-virtual {v4, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    const/4 v6, 0x4

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
