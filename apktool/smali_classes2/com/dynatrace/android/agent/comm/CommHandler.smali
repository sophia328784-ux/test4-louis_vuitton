.class public Lcom/dynatrace/android/agent/comm/CommHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I

.field public static final c:I


# instance fields
.field public final a:Lcom/dynatrace/android/agent/conf/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const/16 v0, 0x2710

    sput v0, Lcom/dynatrace/android/agent/comm/CommHandler;->b:I

    const/16 v0, 0x7530

    sput v0, Lcom/dynatrace/android/agent/comm/CommHandler;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/CommHandler;->a:Lcom/dynatrace/android/agent/conf/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/CommHandler;->a:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v0, p0, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/Configuration;->e:Z

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez p0, :cond_1

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;-><init>(Ljava/security/KeyStore;Z)V

    new-array p0, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    return-object p1
.end method
