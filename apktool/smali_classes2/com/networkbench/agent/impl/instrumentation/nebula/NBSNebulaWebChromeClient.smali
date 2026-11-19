.class public Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static injectController:Lcom/networkbench/agent/impl/webview/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/webview/n;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/n;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/uc/webview/export/WebView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1

    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->formatJsWrapper([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient$1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static initJSMonitor(Lcom/uc/webview/export/WebView;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isInjectEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "webview  initJSMonitor gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;->a(Lcom/uc/webview/export/WebView;)V

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->getAllInjectJs(Landroid/view/View;)Ljava/util/List;

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

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;->a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/nebula/NBSNebulaWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/n;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method
