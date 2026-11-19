.class public final Lcom/google/crypto/tink/subtle/AesCtrJceCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/subtle/IndCpaCipher;


# static fields
.field public static final d:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final e:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->d:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher$1;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->d:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->a(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->a:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->c:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    if-gt p2, p1, :cond_0

    iput p2, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    return-void

    :cond_0
    const-string p0, "invalid IV size"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available."

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a([B)[B
    .locals 10

    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    if-lt v0, v1, :cond_0

    new-array v8, v1, [B

    const/4 v0, 0x0

    invoke-static {p1, v0, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v6, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    sub-int/2addr v0, v6

    new-array v5, v0, [B

    array-length v0, p1

    sub-int v7, v0, v6

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b(Z[B[BII[BI)V

    return-object v5

    :cond_0
    const-string p0, "ciphertext too short"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Z[B[BII[BI)V
    .locals 4

    sget-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->c:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    invoke-static {p6, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p6, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object p0, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->a:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    move-object p1, p2

    move p2, p4

    move-object p0, v0

    move-object p4, p3

    move p3, p5

    move p5, p7

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p0

    if-ne p0, p3, :cond_1

    return-void

    :cond_1
    const-string p0, "stored output\'s length does not match input\'s length"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final encrypt([B)[B
    .locals 11

    array-length v0, p1

    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    sub-int v3, v1, v2

    if-gt v0, v3, :cond_0

    array-length v0, p1

    add-int/2addr v0, v2

    new-array v6, v0, [B

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Random;->a(I)[B

    move-result-object v9

    const/4 v0, 0x0

    invoke-static {v9, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, p1

    iget v10, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b:I

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->b(Z[B[BII[BI)V

    return-object v6

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    sub-int/2addr v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "plaintext length can not exceed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
