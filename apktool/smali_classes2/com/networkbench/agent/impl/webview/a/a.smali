.class public Lcom/networkbench/agent/impl/webview/a/a;
.super Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
.source "SourceFile"


# static fields
.field private static a:Lcom/networkbench/agent/impl/webview/n;


# instance fields
.field private b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/webview/n;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/n;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/webview/a/a;->a:Lcom/networkbench/agent/impl/webview/n;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 1

    .line 57
    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isInjectEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "webview  initJSMonitor gather  begin NBSH5WebChromeClient!!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/a/a;->a(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    sget-object v0, Lcom/networkbench/agent/impl/webview/a/a;->a:Lcom/networkbench/agent/impl/webview/n;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->getAllInjectJs(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/webview/a/a;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/webview/a/a;->a:Lcom/networkbench/agent/impl/webview/n;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/n;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 1

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->formatJsWrapper([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/webview/a/a$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/a/a$1;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p0

    return p0
.end method

.method public onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface/range {p0 .. p5}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/webview/a/a;->a(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    sget-object p0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MyWebChromeClient onProgressChanged new Progress:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onRelease()V

    :cond_0
    return-void
.end method

.method public onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;ZLcom/alipay/mobile/nebula/webview/APFileChooserParams;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/a/a;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;ZLcom/alipay/mobile/nebula/webview/APFileChooserParams;)V

    return-void
.end method
