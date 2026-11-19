.class public Lcom/batch/android/e/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "WebserviceSignature"

.field private static final b:Ljava/lang/String; = "UJYLuqVx7jwx/9hIJP0U/+PwG8rZjPfC9q0WTpGGfoo="


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/batch/android/e/r0;->a()[B

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/r0;->a(Ljava/security/Key;[B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WebserviceSignature"

    const-string v1, "Error while encrypting HmacSHA256 bytes"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()[B
    .locals 3

    .line 39
    const-string v0, "QiExXW9PdC8="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 40
    sget-object v1, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    .line 41
    invoke-static {v1}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;)Lcom/batch/android/e/c;

    move-result-object v1

    .line 42
    const-string v2, "UJYLuqVx7jwx/9hIJP0U/+PwG8rZjPfC9q0WTpGGfoo="

    invoke-interface {v1, v2}, Lcom/batch/android/e/c;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/batch/android/e/b;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/Key;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
