.class public Lcom/networkbench/agent/impl/util/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;[C)Ljava/security/KeyStore;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    filled-new-array {p2}, [Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/util/a/a/g;->a(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;[C)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;[C)Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "PKCS12"

    const-string v0, "BC"

    invoke-static {p0, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "User Key"

    invoke-virtual {p0, v0, p1, p3, p2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-object p0
.end method
