.class public Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebViewConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSNebulaWebViewConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configWebView(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/webview/APWebViewClient;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 6

    const-string v0, "NBSNebulaWebViewConfig"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebChromeClient()Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    new-instance v3, Lcom/networkbench/agent/impl/webview/a/a;

    invoke-direct {v3, v1}, Lcom/networkbench/agent/impl/webview/a/a;-><init>(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    new-instance v1, Lcom/networkbench/agent/impl/webview/a/b;

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/webview/a/b;-><init>(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaJsBridge;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaJsBridge;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v4

    const-string v5, "nbsJsBridge"

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSJSBridgeDom;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSJSBridgeDom;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v4

    const-string v5, "nbsDOMChanged"

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    new-instance v3, Lcom/networkbench/agent/impl/webview/a/a;

    invoke-direct {v3, p2}, Lcom/networkbench/agent/impl/webview/a/a;-><init>(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p0

    new-instance p2, Lcom/networkbench/agent/impl/webview/a/b;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/webview/a/b;-><init>(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    :try_start_2
    const-string p1, "config error"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    const-string p0, "webview switch is close, skip"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_3
    const-string p1, "error config H5Page"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method
