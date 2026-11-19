.class public final Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

.field public f:Lcom/google/crypto/tink/KeyTemplate;

.field public g:Lcom/google/crypto/tink/KeysetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->f:Lcom/google/crypto/tink/KeyTemplate;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    move-object v1, v4

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Hex;->a(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_3
    new-instance v1, Ljava/io/CharConversionException;

    const-string v3, "can\'t read keyset; the pref value "

    const-string v4, " is not a valid hex string"

    invoke-static {v3, v2, v4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v1, "keysetName cannot be null"

    invoke-static {v1}, Lmd;->n(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    :try_start_4
    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    invoke-direct {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->c(Ljava/lang/String;)Z

    move-result v2
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->b(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    move-result-object v4
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    :try_start_7
    new-instance v2, Ljava/security/KeyStoreException;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    const-string v4, "the master key "

    const-string v5, " exists but is unusable"

    invoke-static {v4, v3, v5}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    :goto_3
    iput-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    goto :goto_4

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b()Lcom/google/crypto/tink/KeysetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->g:Lcom/google/crypto/tink/KeysetManager;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    :cond_5
    if-eqz v2, :cond_6

    :try_start_8
    new-instance v2, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    invoke-direct {v2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>()V

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->b(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/ProviderException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v2, Lcom/google/crypto/tink/BinaryKeysetReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/BinaryKeysetReader;-><init>(Ljava/io/ByteArrayInputStream;)V

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    invoke-static {v2, v3}, Lcom/google/crypto/tink/KeysetHandle;->d(Lcom/google/crypto/tink/BinaryKeysetReader;Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v2

    new-instance v3, Lcom/google/crypto/tink/KeysetManager;

    iget-object v2, v2, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->F()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v3, v2}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v2

    :try_start_a
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/crypto/tink/proto/Keyset;->O(Ljava/io/ByteArrayInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    new-instance v3, Lcom/google/crypto/tink/KeysetManager;

    iget-object v1, v1, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->F()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v3, v1}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_4
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_5
    move-exception v2

    :try_start_e
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/crypto/tink/proto/Keyset;->O(Ljava/io/ByteArrayInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    new-instance v3, Lcom/google/crypto/tink/KeysetManager;

    iget-object v1, v1, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->F()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v3, v1}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_5
    :try_start_11
    iput-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->g:Lcom/google/crypto/tink/KeysetManager;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v1

    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_6
    :try_start_13
    throw v2

    :cond_6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/crypto/tink/proto/Keyset;->O(Ljava/io/ByteArrayInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    new-instance v2, Lcom/google/crypto/tink/KeysetManager;

    iget-object v1, v1, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->F()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V

    iput-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->g:Lcom/google/crypto/tink/KeysetManager;

    :goto_6
    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->g:Lcom/google/crypto/tink/KeysetManager;

    iput-object v2, v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->a:Lcom/google/crypto/tink/KeysetManager;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception v1

    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1

    :goto_7
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    throw v1

    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v0
.end method

.method public final b()Lcom/google/crypto/tink/KeysetManager;
    .locals 6

    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->f:Lcom/google/crypto/tink/KeyTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/crypto/tink/KeysetManager;

    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->N()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->f:Lcom/google/crypto/tink/KeyTemplate;

    monitor-enter v0

    :try_start_0
    iget-object v2, v2, Lcom/google/crypto/tink/KeyTemplate;->a:Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/KeysetManager;->a(Lcom/google/crypto/tink/proto/KeyTemplate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->c()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle;->b()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeysetInfo;->J()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->L()I

    move-result v2

    monitor-enter v0

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    iget-object v4, v0, Lcom/google/crypto/tink/KeysetManager;->a:Lcom/google/crypto/tink/proto/Keyset$Builder;

    iget-object v4, v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/Keyset;->K()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v0, Lcom/google/crypto/tink/KeysetManager;->a:Lcom/google/crypto/tink/proto/Keyset$Builder;

    iget-object v4, v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/proto/Keyset;->J(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/Keyset$Key;->O()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/crypto/tink/KeysetManager;->a:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v3, v2}, Lcom/google/crypto/tink/proto/Keyset;->H(Lcom/google/crypto/tink/proto/Keyset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    new-instance v2, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->c()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->e:Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    invoke-virtual {v1, v2, p0}, Lcom/google/crypto/tink/KeysetHandle;->e(Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->c()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    iget-object p0, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    iget-object v3, v2, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, v2, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Hex;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "Failed to write to SharedPreferences"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set key as primary because it\'s not enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    const-string p0, "cannot read or generate keyset"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android-keystore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->d:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "key URI must start with android-keystore://"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
