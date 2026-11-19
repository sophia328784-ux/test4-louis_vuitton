.class public Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/networkbench/agent/impl/c/e;

.field private static injectController:Lcom/networkbench/agent/impl/webview/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/webview/n;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/n;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableJavaScript(Landroid/webkit/WebView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static getDefaultWebChromeClient(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .locals 0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0
.end method

.method public static getWebChromeClientReflect(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .locals 7

    const-string v0, "webchromeclient type is error"

    const-string v1, "mWebChromeClient class name:"

    const-string v2, "mProviderRealClass:"

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/webkit/WebView;

    const-string v5, "mProvider"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mContentsClientAdapter"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mWebChromeClient"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v1, p0, Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/webkit/WebChromeClient;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "mWebChromeClient == null"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "getWebChromeClientReflect error:"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "getWebChromeClientReflect not find webchromeclient"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object v3

    :catch_0
    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    return-object v3
.end method

.method public static initJSMonitor(Landroid/webkit/WebView;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isInjectEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "webview  initJSMonitor gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->enableJavaScript(Landroid/webkit/WebView;)V

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

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

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->injectJs(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient;->injectController:Lcom/networkbench/agent/impl/webview/n;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/n;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method private static injectJs(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->formatJsWrapper([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSWebChromeClient$1;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
