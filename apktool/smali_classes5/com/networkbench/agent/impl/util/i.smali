.class public Lcom/networkbench/agent/impl/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/networkbench/agent/impl/util/a/a/e;->a()V

    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .line 11
    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public static a([B)[B
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/g;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/h/d;->d([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-static {}, Lcom/networkbench/agent/impl/h/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/h/b;->b()Z

    move-result v0

    return v0
.end method
