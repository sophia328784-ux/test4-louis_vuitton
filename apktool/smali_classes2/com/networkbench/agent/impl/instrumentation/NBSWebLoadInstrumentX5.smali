.class public Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configNBSWebChromeClient(Lcom/tencent/smtt/sdk/WebView;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getWebChromeClient()Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    instance-of v1, v0, Lcom/networkbench/agent/impl/webview/f;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, " nbs webchromeclientX5 already existed  "

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/webview/f;

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/webview/f;-><init>(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    invoke-virtual {p0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "set nbs webchromeclientX5 success"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeX5Client;->addWebViewBridge(Lcom/tencent/smtt/sdk/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "set nbs webchromeclientX5 failed:"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static loadDataWithBaseURL(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->configNBSWebChromeClient(Lcom/tencent/smtt/sdk/WebView;)V

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadDataWithBaseURL(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "webViewProxy instanceof WebView"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-static/range {p0 .. p5}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->loadDataWithBaseURL(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static loadUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->configNBSWebChromeClient(Lcom/tencent/smtt/sdk/WebView;)V

    .line 20
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static loadUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->configNBSWebChromeClient(Lcom/tencent/smtt/sdk/WebView;)V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static loadUrl(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "webViewProxy instanceof x5WebView"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->loadUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loadUrl(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "webViewProxy instanceof WebView"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 23
    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSWebLoadInstrumentX5;->loadUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
