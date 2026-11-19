.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;
.super Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;
.source "SourceFile"


# instance fields
.field aesKey:[B

.field mEncryptKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SA.SAECEncrypt"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;-><init>()V

    return-void
.end method


# virtual methods
.method public asymmetricEncryptType()Ljava/lang/String;
    .locals 0

    const-string p0, "EC"

    return-object p0
.end method

.method public decryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encryptEvent([B)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;->aesKey:[B

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->symmetricEncrypt([B[BLcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;->mEncryptKey:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->generateSymmetricKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;->aesKey:[B

    const-string v1, "EC"

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->encryptAESKey(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;->mEncryptKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;->mEncryptKey:Ljava/lang/String;

    return-object p0
.end method

.method public symmetricEncryptType()Ljava/lang/String;
    .locals 0

    const-string p0, "AES"

    return-object p0
.end method
