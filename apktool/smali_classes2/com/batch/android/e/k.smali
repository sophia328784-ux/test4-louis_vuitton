.class final Lcom/batch/android/e/k;
.super Lcom/batch/android/e/j;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "EASHexCryptor"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/e/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e/k;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    const-string p1, "EASHexCryptor"

    const-string v0, "Error while encrypting AES string"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a([B)[B
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/batch/android/e/j;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EASHexCryptor"

    const-string v0, "Error while encrypting AES bytes"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 1

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/e/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-super {p0, p1}, Lcom/batch/android/e/j;->b([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    const-string p1, "EASHexCryptor"

    const-string v0, "Error while decrypting AES string to bytes"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b([B)[B
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/e/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-super {p0, p1}, Lcom/batch/android/e/j;->b([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EASHexCryptor"

    const-string v0, "Error while decrypting AES bytes"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e/k;->b([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EASHexCryptor"

    const-string v0, "Error while decrypting AES string"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
