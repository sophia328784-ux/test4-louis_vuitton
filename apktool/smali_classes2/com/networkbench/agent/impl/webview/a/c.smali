.class public Lcom/networkbench/agent/impl/webview/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false

.field private static b:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/webview/a/c;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceError;Ljava/lang/String;)V
    .locals 8

    .line 209
    const-string v0, "nebula url:"

    const-string v1, "nebula processErrorUp23 : "

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceError;->getErrorCode()I

    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 214
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->hasGesture()Z

    .line 216
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->isForMainFrame()Z

    move-result p0

    .line 217
    new-instance v6, Lcom/networkbench/agent/impl/webview/g;

    invoke-direct {v6, v5}, Lcom/networkbench/agent/impl/webview/g;-><init>(Ljava/lang/String;)V

    .line 218
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 219
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/webview/g;->a(I)V

    .line 220
    invoke-virtual {v6, p1}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6, v4}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/util/Map;)V

    .line 222
    invoke-virtual {v6, v3}, Lcom/networkbench/agent/impl/webview/g;->b(Ljava/lang/String;)V

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isForMainFrame:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result p0

    invoke-static {v5, p0}, Lcom/networkbench/agent/impl/webview/a/c;->a(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 226
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 227
    :cond_0
    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 228
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "nebula processErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceResponse;Ljava/lang/String;)V
    .locals 10

    const-string v0, "nebula TaskQueue.webviewHttpError.put :url =  "

    const-string v1, "nebula processHttpErrorUp23 method:"

    const-string v2, "nebula filter main page: isForMainFrame: "

    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->hasGesture()Z

    move-result v6

    invoke-virtual {p0}, Lcom/uc/webview/export/WebResourceRequest;->isForMainFrame()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ",url:"

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/webview/a/c;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p2, Lcom/networkbench/agent/impl/webview/a/c;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1}, Lcom/uc/webview/export/WebResourceResponse;->getStatusCode()I

    move-result p1

    new-instance v9, Lcom/networkbench/agent/impl/webview/h;

    invoke-direct {v9, v5}, Lcom/networkbench/agent/impl/webview/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/util/Map;)V

    invoke-virtual {v9, v6}, Lcom/networkbench/agent/impl/webview/h;->a(Z)V

    iput-boolean p0, v9, Lcom/networkbench/agent/impl/webview/l;->c:Z

    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/networkbench/agent/impl/webview/l;->d:Z

    invoke-virtual {v9, p2}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/io/InputStream;)V

    invoke-virtual {v9, v1}, Lcom/networkbench/agent/impl/webview/h;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/networkbench/agent/impl/webview/h;->c(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/networkbench/agent/impl/webview/h;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/networkbench/agent/impl/webview/h;->b(Ljava/util/Map;)V

    invoke-virtual {v9, p1}, Lcom/networkbench/agent/impl/webview/h;->a(I)V

    sget-object p2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "====>code = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isForMainFrame:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/networkbench/agent/impl/webview/a/c;->a(Ljava/lang/String;I)V

    invoke-static {v9}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "nebula processHttpErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xc8

    .line 208
    :cond_1
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/String;I)V

    return-void
.end method
