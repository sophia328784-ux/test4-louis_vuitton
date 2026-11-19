.class public abstract Lcom/vuitton/android/presentation/screen/webview/WebViewDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iget-boolean v9, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    const/4 v11, 0x0

    const/16 v12, 0x740

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;->a:Ljava/lang/String;

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

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
