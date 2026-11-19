.class public Lcom/networkbench/agent/impl/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NBSAgent"

.field private static final b:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICQDCCAeWgAwIBAgIUEccQ1pQAHHi/b2ls8Z5y8QWCn+MwCgYIKoZIzj0EAwIw\ngZQxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFP\nWUFORzEiMCAGA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UE\nCwwDREVWMQ0wCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5\ndW4uY29tMB4XDTIxMDcxNjA3NTUwNloXDTMxMDcxNDA3NTUwNlowgZQxCzAJBgNV\nBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFPWUFORzEiMCAG\nA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UECwwDREVWMQ0w\nCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5dW4uY29tMFkw\nEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEhyEn2tgeg99EHANIEJood9CMqxn2sO1C\nfKviQFOqsY2xyHpKy803ZMpMrnGNzHVdhE5nYuiwhTCyrmEyAfXEnKMTMBEwDwYD\nVR0TAQH/BAUwAwEB/zAKBggqhkjOPQQDAgNJADBGAiEA9ynsJejokMdc7w/BI6Lx\nz55TSnloc1i6X1FMdfyK1p8CIQCYAsABkPu8Z4QsSTl/iiYH0oT8Kayot451Ot4e\nEf02xw==\n-----END CERTIFICATE-----\n"

.field private static c:Lcom/networkbench/agent/impl/h/b;


# instance fields
.field private d:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/h/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/h/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/h/b;->c:Lcom/networkbench/agent/impl/h/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-----BEGIN CERTIFICATE-----\nMIICQDCCAeWgAwIBAgIUEccQ1pQAHHi/b2ls8Z5y8QWCn+MwCgYIKoZIzj0EAwIw\ngZQxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFP\nWUFORzEiMCAGA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UE\nCwwDREVWMQ0wCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5\ndW4uY29tMB4XDTIxMDcxNjA3NTUwNloXDTMxMDcxNDA3NTUwNlowgZQxCzAJBgNV\nBAYTAkNOMRAwDgYDVQQIDAdCRUlKSU5HMREwDwYDVQQHDAhDSEFPWUFORzEiMCAG\nA1UECgwZQmVpamluZyBOZXR3b3JrQmVuY2ggSW5jLjEMMAoGA1UECwwDREVWMQ0w\nCwYDVQQDDARBUkNIMR8wHQYJKoZIhvcNAQkBFhBhcmNoQHRpbmd5dW4uY29tMFkw\nEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEhyEn2tgeg99EHANIEJood9CMqxn2sO1C\nfKviQFOqsY2xyHpKy803ZMpMrnGNzHVdhE5nYuiwhTCyrmEyAfXEnKMTMBEwDwYD\nVR0TAQH/BAUwAwEB/zAKBggqhkjOPQQDAgNJADBGAiEA9ynsJejokMdc7w/BI6Lx\nz55TSnloc1i6X1FMdfyK1p8CIQCYAsABkPu8Z4QsSTl/iiYH0oT8Kayot451Ot4e\nEf02xw==\n-----END CERTIFICATE-----\n"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/h/b;->d:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/h/b;
    .locals 1

    .line 57
    sget-object v0, Lcom/networkbench/agent/impl/h/b;->c:Lcom/networkbench/agent/impl/h/b;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "-----BEGIN CERTIFICATE-----\n"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-----END CERTIFICATE-----"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/networkbench/agent/impl/h/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :cond_0
    const-string p0, "convertPemCert is error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "NBSAgent"

    const-string v0, "encryptString content is "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/h/c;->a([B)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;[B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string p2, "encryptString error:"

    invoke-static {p0, p2, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    const-string v0, "NBSAgent"

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/h/b;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    const-string p1, "getCertificate ioException:"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string p1, "getCertificate error:"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/networkbench/agent/impl/h/b;->d:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/networkbench/agent/impl/h/b;->d:Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/h/c;->a([B)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 41
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/a/a/e;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
