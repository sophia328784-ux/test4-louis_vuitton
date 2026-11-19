.class Lcom/batch/android/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c;


# static fields
.field private static final c:Ljava/lang/String; = "EASCryptor"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/e/j;->b:Ljavax/crypto/spec/SecretKeySpec;

    const-string p1, "AES/ECB/PKCS5Padding"

    iput-object p1, p0, Lcom/batch/android/e/j;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "key must be 16 chars (not more, not less)"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null key given"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private c([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/e/j;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/e/j;->b:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private d([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/e/j;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/e/j;->b:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string p1, "EAS cryptor doesn\'t support strings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a([B)[B
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/e/j;->d([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EASCryptor"

    const-string v0, "Error while encrypting AES bytes"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 0

    .line 15
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string p1, "EAS cryptor doesn\'t support strings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b([B)[B
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/e/j;->c([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EASCryptor"

    const-string v0, "Error while decrypting AES bytes"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string p1, "EAS cryptor doesn\'t support strings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
