.class public Lcom/networkbench/agent/impl/harvest/InitUrlConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field public static final CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_VALUE_STEAM:Ljava/lang/String; = "application/octet-stream"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final X_AES_KEY:Ljava/lang/String; = "X-Aes-Key"

.field private static final X_APP_NONCE:Ljava/lang/String; = "X-App-Nonce"

.field public static final X_APP_PROCESS:Ljava/lang/String; = "X-App-Process"

.field private static final X_APP_SIGN:Ljava/lang/String; = "X-App-Sign"

.field public static final X_APP_START:Ljava/lang/String; = "X-App-Start"

.field private static final X_APP_TIMESTAMP:Ljava/lang/String; = "X-App-Timestamp"

.field private static final X_LICENSE_KEY:Ljava/lang/String; = "X-License-Key"

.field public static final X_TINGYUN_PROTOCOL:Ljava/lang/String; = "X-Tingyun-Protocol"

.field public static port:I = 0x50

.field public static proxy:Ljava/lang/String;


# instance fields
.field private apkSha1:Ljava/lang/String;

.field private composeHeaderValue:Ljava/lang/StringBuilder;

.field private licenseKey:Ljava/lang/String;

.field private messageLen:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeaderValue:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->apkSha1:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->userAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->licenseKey:Ljava/lang/String;

    return-void
.end method

.method private addNewlensHeader(Ljava/net/HttpURLConnection;)V
    .locals 4

    const-string v0, "Content-Encoding"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-App-Sign"

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->apkSha1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-License-Key"

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->licenseKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-App-Process"

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->isMainProcess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Tingyun-Protocol"

    const-string v1, "2.0"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    const-string v1, ""

    const-string v2, "X-App-Start"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/type/b;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/a/m;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/util/r;->D:Z

    const-string v2, "X-App-Nonce"

    if-eqz v1, :cond_1

    const-string v1, "X-App-Timestamp"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeAppNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeaderValue:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->licenseKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeaderValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private composeAppNonce(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->proxy:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/net/InetSocketAddress;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->proxy:Ljava/lang/String;

    sget v1, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->port:I

    invoke-direct {p1, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v1, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "deflate"

    return-object p0
.end method

.method private initConnection(Ljava/net/HttpURLConnection;)V
    .locals 5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    long-to-int p0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static isMainProcess()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public composeHeadValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeaderValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public configureConnectionForLogTrack(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->createUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->initConnection(Ljava/net/HttpURLConnection;)V

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-License-Key"

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->licenseKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "X-Tingyun-Protocol"

    const-string v0, "2.0"

    invoke-virtual {p1, p0, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "X-Tingyun-Resource"

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public configureUrlConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeaderValue:Ljava/lang/StringBuilder;

    iput p2, p0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->messageLen:I

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->createUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->initConnection(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->addNewlensHeader(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "error"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configureUrlConnectionOfWebView(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->createUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->initConnection(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
