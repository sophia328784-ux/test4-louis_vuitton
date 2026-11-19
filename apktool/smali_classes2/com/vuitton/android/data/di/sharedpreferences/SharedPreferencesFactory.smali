.class public abstract Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;",
        "",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/security/crypto/MasterKey$Builder;

    invoke-direct {v0, p0}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v0, v1}, Landroidx/security/crypto/MasterKey$Builder;->a(Landroidx/security/crypto/MasterKey$KeyScheme;)V

    iget-object v2, v0, Landroidx/security/crypto/MasterKey$Builder;->c:Landroidx/security/crypto/MasterKey$KeyScheme;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v4, v0, Landroidx/security/crypto/MasterKey$Builder;->b:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "build() called before setKeyGenParameterSpec or setKeyScheme."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    const/16 v4, 0x100

    const/4 v5, 0x3

    if-ne v2, v1, :cond_2

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v2, v0, Landroidx/security/crypto/MasterKey$Builder;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    iput-object v1, v0, Landroidx/security/crypto/MasterKey$Builder;->b:Landroid/security/keystore/KeyGenParameterSpec;

    :cond_2
    iget-object v0, v0, Landroidx/security/crypto/MasterKey$Builder;->b:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_c

    sget-object v1, Landroidx/security/crypto/MasterKeys;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v1

    if-ne v1, v4, :cond_b

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "per-operation authentication is not supported (UserAuthenticationValidityDurationSeconds must be >0)"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_4
    :goto_1
    sget-object v1, Landroidx/security/crypto/MasterKeys;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AndroidKeyStore"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_5

    :try_start_1
    const-string v4, "AES"

    const-string v5, "AndroidKeyStore"

    invoke-static {v4, v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->a:I

    sget-object v5, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->b:Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;

    invoke-static {v5}, Lcom/google/crypto/tink/Registry;->h(Lcom/google/crypto/tink/PrimitiveWrapper;)V

    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/crypto/tink/daead/AesSivKeyManager;

    invoke-direct {v5}, Lcom/google/crypto/tink/daead/AesSivKeyManager;-><init>()V

    invoke-static {v5, v2}, Lcom/google/crypto/tink/Registry;->f(Lcom/google/crypto/tink/internal/KeyTypeManager;Z)V

    :goto_3
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->a()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v2}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->a()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1

    iput-object v1, v2, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->f:Lcom/google/crypto/tink/KeyTemplate;

    const-string v1, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    if-eqz p0, :cond_7

    iput-object p0, v2, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iput-object v1, v2, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iput-object p1, v2, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "android-keystore://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->a:Lcom/google/crypto/tink/KeysetManager;

    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetManager;->c()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    invoke-virtual {v4}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->a()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v4

    iput-object v4, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->f:Lcom/google/crypto/tink/KeyTemplate;

    const-string v4, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    iput-object p0, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iput-object v4, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object v1, v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->a:Lcom/google/crypto/tink/KeysetManager;

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetManager;->c()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    const-class v0, Lcom/google/crypto/tink/DeterministicAead;

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/KeysetHandle;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/DeterministicAead;

    const-class v2, Lcom/google/crypto/tink/Aead;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/KeysetHandle;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/Aead;

    new-instance v2, Landroidx/security/crypto/EncryptedSharedPreferences;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v2, p1, p0, v1, v0}, Landroidx/security/crypto/EncryptedSharedPreferences;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/DeterministicAead;)V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_7
    const-string p0, "need an Android context"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_8
    const-string p0, "invalid padding mode, want NoPadding got "

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_9
    const-string p0, "invalid purposes mode, want PURPOSE_ENCRYPT | PURPOSE_DECRYPT got "

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p1

    invoke-static {p1, p0}, Lmd;->g(ILjava/lang/String;)V

    return-object v3

    :cond_a
    const-string p0, "invalid block mode, want GCM got "

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_b
    const-string p0, "invalid key size, want 256 bits got "

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p1

    const-string v0, " bits"

    invoke-static {p0, p1, v0}, Lb21;->r(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v3

    :cond_c
    const-string p0, "KeyGenParameterSpec was null after build() check"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v3
.end method
