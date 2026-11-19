.class public Lcom/networkbench/agent/impl/util/a/h;
.super Lcom/networkbench/agent/impl/util/a/b;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SM4"

.field public static final b:Ljava/lang/String; = "SM4/ECB/PKCS5Padding"

.field public static final c:Ljava/lang/String; = "SM4/ECB/NoPadding"

.field public static final d:Ljava/lang/String; = "SM4/CBC/PKCS5Padding"

.field public static final e:Ljava/lang/String; = "SM4/CBC/NoPadding"

.field public static final f:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/a/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 60
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "SM4"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;I[B[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 63
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "SM4"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 65
    invoke-virtual {p0, p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p0
.end method

.method public static a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 49
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/a/h;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "SM4"

    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 42
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/security/Key;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 57
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 58
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/bouncycastle/crypto/Mac;[B[B[B)[B
    .locals 1

    .line 50
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 51
    new-instance p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 52
    array-length p1, p3

    const/4 p2, 0x0

    invoke-interface {p0, p3, p2, p1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 53
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    .line 54
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object p1
.end method

.method public static a([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 43
    const-string v0, "SM4/ECB/PKCS5Padding"

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[BI[B)[B
    .locals 3

    .line 47
    new-instance v0, Lorg/bouncycastle/crypto/macs/GMac;

    new-instance v1, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/SM4Engine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/SM4Engine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/macs/GMac;-><init>(Lorg/bouncycastle/crypto/modes/GCMModeCipher;I)V

    .line 48
    invoke-static {v0, p0, p1, p3}, Lcom/networkbench/agent/impl/util/a/h;->a(Lorg/bouncycastle/crypto/Mac;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[BLorg/bouncycastle/crypto/paddings/BlockCipherPadding;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/engines/SM4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;-><init>()V

    if-nez p2, :cond_1

    array-length v1, p3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->getBlockSize()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "if no padding, data length must be multiple of SM4 BlockSize"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v0, v2, p2}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-static {v1, p0, p1, p3}, Lcom/networkbench/agent/impl/util/a/h;->a(Lorg/bouncycastle/crypto/Mac;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 45
    const-string v0, "SM4/CBC/PKCS5Padding"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "SM4/ECB/NoPadding"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 12
    const-string v0, "SM4/CBC/PKCS5Padding"

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const-string v0, "SM4/ECB/NoPadding"

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 12
    const-string v0, "SM4/CBC/NoPadding"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "SM4"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "SM4-CMAC"

    invoke-static {p0, v0, p1}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;Ljava/security/Key;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 14
    const-string v0, "SM4/CBC/NoPadding"

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static e([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 26
    const-string v0, "SM4/ECB/PKCS5Padding"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/a/h;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static e([B[B[B)[B
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/engines/SM4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    new-instance v3, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-static {v1, p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/h;->a(Lorg/bouncycastle/crypto/Mac;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method
