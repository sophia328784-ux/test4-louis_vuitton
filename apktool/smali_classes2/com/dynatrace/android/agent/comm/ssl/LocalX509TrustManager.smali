.class public Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

.field public final b:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

.field public final c:[Ljava/security/cert/X509Certificate;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->a:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->b:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->d:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    iput-object v1, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->b:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    iget-object v0, v1, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    invoke-direct {v0, p1}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->a:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    iget-object p1, v0, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->c:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public final a([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->a:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->b:Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    throw p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/dynatrace/android/agent/comm/ssl/SimpleX509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    throw p0
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->a([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->a([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/comm/ssl/LocalX509TrustManager;->c:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method
