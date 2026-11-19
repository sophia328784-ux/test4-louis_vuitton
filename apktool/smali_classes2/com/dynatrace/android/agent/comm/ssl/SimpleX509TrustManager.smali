.class public Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public final a:Ljavax/net/ssl/X509TrustManager;

.field public final b:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    return-void

    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "no trust manager found"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    iget-object v1, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    move v2, v0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v0

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method
