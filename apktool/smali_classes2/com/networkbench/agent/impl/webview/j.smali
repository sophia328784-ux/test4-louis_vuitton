.class public Lcom/networkbench/agent/impl/webview/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Z = false

.field private static c:Lcom/networkbench/agent/impl/c/e;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/webview/j;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "webview-->"

    sput-object v0, Lcom/networkbench/agent/impl/webview/j;->a:Ljava/lang/String;

    const/4 v0, -0x4

    sput v0, Lcom/networkbench/agent/impl/webview/j;->d:I

    const/16 v0, -0xc

    sput v0, Lcom/networkbench/agent/impl/webview/j;->e:I

    const/4 v0, -0x6

    sput v0, Lcom/networkbench/agent/impl/webview/j;->f:I

    const/16 v0, -0xb

    sput v0, Lcom/networkbench/agent/impl/webview/j;->g:I

    const/16 v0, -0xd

    sput v0, Lcom/networkbench/agent/impl/webview/j;->h:I

    const/16 v0, -0xe

    sput v0, Lcom/networkbench/agent/impl/webview/j;->i:I

    const/4 v0, -0x2

    sput v0, Lcom/networkbench/agent/impl/webview/j;->j:I

    const/4 v0, -0x7

    sput v0, Lcom/networkbench/agent/impl/webview/j;->k:I

    const/4 v0, -0x5

    sput v0, Lcom/networkbench/agent/impl/webview/j;->l:I

    const/16 v0, -0x9

    sput v0, Lcom/networkbench/agent/impl/webview/j;->m:I

    const/4 v0, -0x8

    sput v0, Lcom/networkbench/agent/impl/webview/j;->n:I

    const/16 v0, -0xf

    sput v0, Lcom/networkbench/agent/impl/webview/j;->o:I

    const/4 v0, -0x1

    sput v0, Lcom/networkbench/agent/impl/webview/j;->p:I

    const/16 v0, -0x10

    sput v0, Lcom/networkbench/agent/impl/webview/j;->q:I

    const/4 v0, -0x3

    sput v0, Lcom/networkbench/agent/impl/webview/j;->r:I

    const/16 v0, -0xa

    sput v0, Lcom/networkbench/agent/impl/webview/j;->s:I

    const/4 v0, 0x4

    sput v0, Lcom/networkbench/agent/impl/webview/j;->t:I

    const/4 v0, 0x1

    sput v0, Lcom/networkbench/agent/impl/webview/j;->u:I

    const/4 v0, 0x2

    sput v0, Lcom/networkbench/agent/impl/webview/j;->v:I

    const/4 v0, 0x5

    sput v0, Lcom/networkbench/agent/impl/webview/j;->w:I

    const/4 v0, 0x6

    sput v0, Lcom/networkbench/agent/impl/webview/j;->x:I

    const/4 v0, 0x0

    sput v0, Lcom/networkbench/agent/impl/webview/j;->y:I

    const/4 v0, 0x3

    sput v0, Lcom/networkbench/agent/impl/webview/j;->z:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 204
    sget v0, Lcom/networkbench/agent/impl/webview/j;->e:I

    if-ne p0, v0, :cond_0

    const/16 p0, 0x384

    return p0

    .line 205
    :cond_0
    sget v0, Lcom/networkbench/agent/impl/webview/j;->d:I

    if-eq p0, v0, :cond_6

    sget v0, Lcom/networkbench/agent/impl/webview/j;->l:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    sget v0, Lcom/networkbench/agent/impl/webview/j;->f:I

    if-ne p0, v0, :cond_2

    const/16 p0, 0x386

    return p0

    .line 207
    :cond_2
    sget v0, Lcom/networkbench/agent/impl/webview/j;->g:I

    if-ne p0, v0, :cond_3

    const/16 p0, 0x38c

    return p0

    .line 208
    :cond_3
    sget v0, Lcom/networkbench/agent/impl/webview/j;->j:I

    if-ne p0, v0, :cond_4

    const/16 p0, 0x385

    return p0

    .line 209
    :cond_4
    sget v0, Lcom/networkbench/agent/impl/webview/j;->n:I

    if-ne p0, v0, :cond_5

    const/16 p0, 0x387

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_0
    const/16 p0, 0x38b

    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 2

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->OPTIONS:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 216
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->HEAD:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 218
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->POST:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 220
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->PUT:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 222
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->DELETE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 224
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 225
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->TRACE:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0

    .line 226
    :cond_7
    sget-object p0, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 227
    new-instance v0, Lcom/networkbench/agent/impl/webview/g;

    invoke-direct {v0, p2}, Lcom/networkbench/agent/impl/webview/g;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/webview/g;->a(I)V

    .line 229
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V

    .line 231
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "TaskQueue.webviewHttpError.put :url =  "

    const-string v2, "====>code = "

    .line 232
    invoke-static {v1, p2, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 233
    invoke-static {p0}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    .line 234
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/net/http/SslError;Ljava/lang/String;)V
    .locals 6

    .line 261
    const-string v0, "====>code = 908"

    const-string v1, "TaskQueue.webviewHttpError.put :url =  "

    const-string v2, "processHttpErrorUp23 primaryError:"

    :try_start_0
    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    .line 262
    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    .line 263
    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 264
    sget-object v4, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 265
    new-instance v2, Lcom/networkbench/agent/impl/webview/i;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/webview/i;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/webview/i;->a(I)V

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 268
    iput-boolean p1, v2, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 269
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    .line 270
    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    const/16 p1, 0x38c

    .line 271
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 272
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processSslError error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {p0, v0, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;Ljava/lang/String;)V
    .locals 8

    .line 235
    const-string v0, "url:"

    const-string v1, "processErrorUp23 : "

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    .line 237
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 240
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    .line 242
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p0

    .line 243
    new-instance v6, Lcom/networkbench/agent/impl/webview/g;

    invoke-direct {v6, v5}, Lcom/networkbench/agent/impl/webview/g;-><init>(Ljava/lang/String;)V

    .line 244
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 245
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/webview/g;->a(I)V

    .line 246
    invoke-virtual {v6, p1}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v6, v4}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/util/Map;)V

    .line 248
    invoke-virtual {v6, v3}, Lcom/networkbench/agent/impl/webview/g;->b(Ljava/lang/String;)V

    .line 249
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

    .line 250
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result p0

    invoke-static {v5, p0}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 251
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 252
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 253
    :cond_0
    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 254
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Ljava/lang/String;)V
    .locals 10

    const-string v0, "TaskQueue.webviewHttpError.put :url =  "

    const-string v1, "processHttpErrorUp23 method:"

    const-string v2, "filter main page: isForMainFrame: "

    :try_start_0
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v6

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

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

    sget-object p1, Lcom/networkbench/agent/impl/webview/j;->c:Lcom/networkbench/agent/impl/c/e;

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
    sget-object p2, Lcom/networkbench/agent/impl/webview/j;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

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

    invoke-static {v5, p1}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V

    invoke-static {v9}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processHttpErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static a(Lcom/tencent/smtt/export/external/interfaces/SslError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 274
    const-string v0, "====>code = 908"

    const-string v1, "TaskQueue.webviewHttpError.put :url =  "

    const-string v2, "processHttpErrorUp23 primaryError:"

    :try_start_0
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/SslError;->getPrimaryError()I

    move-result p0

    .line 275
    sget-object v3, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 276
    new-instance v2, Lcom/networkbench/agent/impl/webview/i;

    invoke-direct {v2, p1}, Lcom/networkbench/agent/impl/webview/i;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/webview/i;->a(I)V

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 279
    iput-boolean p0, v2, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 280
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    .line 281
    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    const/16 p0, 0x38c

    .line 282
    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 283
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processSslError error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {p0, p2, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static a(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;Ljava/lang/String;)V
    .locals 8

    .line 316
    const-string v0, "url:"

    const-string v1, "processErrorUp23 : "

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceError;->getErrorCode()I

    move-result v1

    .line 318
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 321
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->hasGesture()Z

    .line 323
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->isForMainFrame()Z

    move-result p0

    .line 324
    new-instance v6, Lcom/networkbench/agent/impl/webview/g;

    invoke-direct {v6, v5}, Lcom/networkbench/agent/impl/webview/g;-><init>(Ljava/lang/String;)V

    .line 325
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 326
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/webview/g;->a(I)V

    .line 327
    invoke-virtual {v6, p1}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v6, v4}, Lcom/networkbench/agent/impl/webview/g;->a(Ljava/util/Map;)V

    .line 329
    invoke-virtual {v6, v3}, Lcom/networkbench/agent/impl/webview/g;->b(Ljava/lang/String;)V

    .line 330
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

    .line 331
    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/j;->a(I)I

    move-result p0

    invoke-static {v5, p0}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 332
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 333
    iput-boolean p0, v6, Lcom/networkbench/agent/impl/webview/l;->c:Z

    .line 334
    :cond_0
    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 335
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;Ljava/lang/String;)V
    .locals 10

    .line 285
    const-string v0, "TaskQueue.webviewHttpError.put :url =  "

    const-string v1, "processHttpErrorUp23 method:"

    const-string v2, "filter main page: isForMainFrame: "

    :try_start_0
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 287
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->hasGesture()Z

    move-result v6

    .line 289
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->isForMainFrame()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    const-string v7, ",url:"

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    .line 291
    sget-object p1, Lcom/networkbench/agent/impl/webview/j;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    sget-object p2, Lcom/networkbench/agent/impl/webview/j;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    .line 294
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 298
    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->getStatusCode()I

    move-result p1

    .line 299
    new-instance v9, Lcom/networkbench/agent/impl/webview/h;

    invoke-direct {v9, v5}, Lcom/networkbench/agent/impl/webview/h;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v9, v3}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v9, v4}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/util/Map;)V

    .line 302
    invoke-virtual {v9, v6}, Lcom/networkbench/agent/impl/webview/h;->a(Z)V

    .line 303
    iput-boolean p0, v9, Lcom/networkbench/agent/impl/webview/l;->c:Z

    const/4 v3, 0x1

    .line 304
    iput-boolean v3, v9, Lcom/networkbench/agent/impl/webview/l;->d:Z

    .line 305
    invoke-virtual {v9, p2}, Lcom/networkbench/agent/impl/webview/h;->a(Ljava/io/InputStream;)V

    .line 306
    invoke-virtual {v9, v1}, Lcom/networkbench/agent/impl/webview/h;->b(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v9, v2}, Lcom/networkbench/agent/impl/webview/h;->c(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v9, v7}, Lcom/networkbench/agent/impl/webview/h;->d(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v9, v8}, Lcom/networkbench/agent/impl/webview/h;->b(Ljava/util/Map;)V

    .line 310
    invoke-virtual {v9, p1}, Lcom/networkbench/agent/impl/webview/h;->a(I)V

    .line 311
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

    .line 312
    invoke-static {v5, p1}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;I)V

    .line 313
    invoke-static {v9}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 314
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processHttpErrorUp23 error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-static {p0, p2, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xc8

    .line 259
    :cond_1
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 260
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function (window) {\n  if (!window.nbsJsBridge) {\n    window.nbsJsBridge = {}\n}nbsJsBridge.context={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sessionId : \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "webviewId : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recordEnable : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userId : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->T()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceId : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",context:{"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appVersion : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform : \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}};})(window);"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sessionJs: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    return-object p0
.end method
