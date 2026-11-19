.class public Lcom/networkbench/agent/impl/webview/JsPageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static JsInjectHeight:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "JsPageUtil"

.field public static isUpdate:Z = false

.field private static jsWithResourceTiming:Ljava/lang/String; = "!function(){var e;function n(e,n){if(e)for(var t=0;t<e.length&&!1!==n.call(e[t],e[t],t);t++);}var t,r=\'navigation\',i=[\'name\',\'initiatorType\',\'entryType\',\'duration\',\'startTime\',\'fetchStart\',\'domainLookupStart\',\'domainLookupEnd\',\'connectStart\',\'secureConnectionStart\',\'connectEnd\',\'requestStart\',\'responseEnd\',\'responseStart\',\'decodedBodySize\',\'encodedBodySize\',\'transferSize\',\'serverTiming\',\'renderBlockingStatus\',\'responseStatus\'];function a(e){if(e&&0!==e.length){var a=[];if(n(e,(function(e){if(!e)return!0;if(e.responseEnd-e.startTime<=5)return!0;var t={};if(n(i,(function(n){n in e&&(t[n]=e[n])})),t.fetchStart<=0&&(t.fetchStart=t.startTime),t.entryType===r&&(t.duration=t.responseEnd,t.name=window.location.href),!t.name)return!0;a.push(t)})),a.length>0&&t){var o=window.performance.timing;t({entries:a,navigationStart:(o||{}).navigationStart})}}}function o(e,n){try{if(!window.PerformanceObserver||function(e,n,t){var r;if(null==e)return-1;var i=Object(e),a=i.length>>>0;if(0===a)return-1;var o=+t||0;if(Math.abs(o)===Infinity&&(o=0),o>=a)return-1;for(r=Math.max(o>=0?o:a-Math.abs(o),0);r<a;){if(r in i&&i[r]===n)return r;r++}return-1}(window.PerformanceObserver.supportedEntryTypes,e)<0)return;var t=new PerformanceObserver((function(e){n(e)}));return t.observe({entryTypes:[e]}),t}catch(r){}}try{window.__ty_app_inject_guard||(window.__ty_app_inject_guard=!0,function(){try{if(!window.performance)return;if(window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.nbs_performance_entries?t=function(e){try{window.webkit.messageHandlers.nbs_performance_entries.postMessage(e)}catch(n){}}:\'undefined\'!=typeof nbsJsBridge&&nbsJsBridge.logRes&&(t=function(e){try{nbsJsBridge.logRes(JSON.stringify(e))}catch(n){}}),!t)return;var e;try{e=window.performance.getEntriesByType(\'navigation\')[0]}catch(i){}e&&\'responseEnd\'in e||(e=function(){var e=window.performance.timing;if(e&&e.navigationStart>0){var t={name:window.location.href,initiatorType:r,entryType:r,startTime:0};return n([\'fetchStart\',\'domainLookupStart\',\'domainLookupEnd\',\'connectStart\',\'secureConnectionStart\',\'connectEnd\',\'requestStart\',\'responseStart\',\'responseEnd\'],(function(n){e[n]>0&&(t[n]=Math.max(e[n]-e.navigationStart,0))})),t}}()),e&&a([e]);try{a(window.performance.getEntriesByType(\'resource\'))}catch(i){}o(\'resource\',(function(e){try{a(e.getEntries())}catch(i){}}))}catch(i){}}(),function(){try{if(window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.nbsDOMChanged?e=function(e){try{window.webkit.messageHandlers.nbsDOMChanged.postMessage(e)}catch(n){}}:\'undefined\'!=typeof nbsDOMChanged&&nbsDOMChanged.postMessage&&(e=function(e){try{nbsDOMChanged.postMessage(e)}catch(n){}}),!e)return;var n=window.MutationObserver||window.WebKitMutationObserver||window.MozMutationObserver,t=window.document,r=0;if(n)new n((function(){try{var n=(new Date).getTime();n-r>1e3&&(r=n,e(\'\'))}catch(t){}})).observe(t,{childList:!0,characterData:!0,subtree:!0,attributes:!0,attributeFilter:[\'class\',\'style\']})}catch(i){}}())}catch(s){}}();\n"

.field public static progressControl:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBrsAgentJs()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->JsInjectHeight:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/networkbench/agent/impl/webview/JsPageUtil;->JsInjectHeight:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->getUserIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs formatJsWrapper([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:(function() {var parent = document.getElementsByTagName(\'head\').item(0);var script = document.createElement(\'script\');script.type = \'text/javascript\';script.innerHTML = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";if(!parent) return;parent.appendChild(script)})()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllInjectJs(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->getUUIDFromWebView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->jsWithResourceTiming:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->jsWithResourceTiming:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->formatBrsAgentJs()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static getUUIDFromWebView(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget v0, Lcom/networkbench/R$string;->webview_uuid_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ab;->b()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/networkbench/R$string;->webview_uuid_tag:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    sget v0, Lcom/networkbench/R$string;->webview_uuid_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserIdString()Ljava/lang/String;
    .locals 3

    const-string v0, "window.localStorage.setItem(\'TY_USER_ID\', \'"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\');"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static isInjectEnabled(I)Z
    .locals 2

    sget v0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->progressControl:I

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static setJSAgent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->JsInjectHeight:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isUpdate:Z

    return-void
.end method

.method public static setJSAgentCon(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->JsInjectHeight:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setJsWithResourceTiming(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->jsWithResourceTiming:Ljava/lang/String;

    :cond_0
    return-void
.end method
