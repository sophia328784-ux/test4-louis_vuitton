.class public Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;
    }
.end annotation


# static fields
.field private static METHOD:Ljava/lang/String;

.field private static PARAMS:Ljava/lang/String;

.field private static log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "method"

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->METHOD:Ljava/lang/String;

    const-string v0, "params"

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->PARAMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    const-string v1, "JsonToHashMap has an error : "

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->JsonToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static logJsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;JI)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static/range {p0 .. p13}, Lcom/networkbench/agent/impl/webview/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;JI)V

    return-void
.end method

.method public static logJsResult(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;-><init>()V

    const-string v1, "pageInfo"

    iput-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultType:Ljava/lang/String;

    iput-object p0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultData:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "logJsResult has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logRes(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "NBSJavascriptBrige logRes:"

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/m;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "logRes has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/m;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "postMessage has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private toggleDataCollect(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->METHOD:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->PARAMS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "setBusinessLine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "key"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setBusinessLine(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "reportError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "metaData"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "exception"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->reportErrorWeb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v0, "onEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "eventID"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "eventTag"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventProperties"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string v0, "reportEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "name"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "properties"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "toggleDataCollect has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public its()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowDomThreshold()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x834

    return p0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWebViewEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->onEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public parseArguments(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge;->toggleDataCollect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "parseArguments has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sfp()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowFirstPaintThreshold()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x578

    return p0
.end method

.method public sfs()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowFirstScreenThreshold()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xaf0

    return p0
.end method

.method public spt()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageThreshold()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x1b58

    return p0
.end method
