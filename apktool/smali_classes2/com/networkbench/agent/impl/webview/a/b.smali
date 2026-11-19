.class public Lcom/networkbench/agent/impl/webview/a/b;
.super Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.source "SourceFile"


# instance fields
.field private b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/a/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getJSBridge()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRedirectUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getShareUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    return-void
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/webview/a/b;->c:Ljava/lang/String;

    const-string p0, "onPageStarted: "

    const-string p3, ", APWebView class:"

    invoke-static {p0, p2, p3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ss:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "begin add javascriptBridge"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onReceivedError below23 errorcode:"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", description:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failingUrl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p2, p3, p4}, Lcom/networkbench/agent/impl/webview/j;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "onReceivedError processErrorBelow23 error!"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedResponseHeader(Ljava/util/Map;)V

    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "onReceivedSslError up 23 "

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/webview/a/b;->c:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/networkbench/agent/impl/webview/j;->a(Landroid/net/http/SslError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "onReceivedSslError processSslError error!"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onRelease()V

    :cond_0
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    return-void
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    return-void
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    return-void
.end method

.method public setCheckingUrl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setCheckingUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V

    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/b;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
