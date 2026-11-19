.class public final Lcom/google/crypto/tink/KeysetHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Entry;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/crypto/tink/proto/Keyset;

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle;->b:Ljava/util/List;

    sget-object p1, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->c:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    return-void
.end method

.method public static final a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->K()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->K()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->L()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->N()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v5

    sget-object v6, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v5, v6, :cond_0

    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->L()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/KeyData;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->L()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/KeyData;->N()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->L()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/crypto/tink/proto/KeyData;->L()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->N()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v8

    invoke-static {v5, v6, v7, v8, v4}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->b:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    invoke-virtual {v5, v4}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->a(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/Key;

    move-result-object v4

    new-instance v5, Lcom/google/crypto/tink/KeysetHandle$Entry;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset$Key;->O()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    sget-object v6, Lcom/google/crypto/tink/KeysetHandle$1;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "Unknown key status"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_2
    invoke-direct {v5, v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/crypto/tink/internal/TinkBugException;

    const-string v1, "Creating a protokey serialization failed"

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/internal/TinkBugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/KeysetHandle;

    invoke-direct {v1, p0, v0}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;)V

    return-object v1

    :cond_4
    const-string p0, "empty keyset"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(Lcom/google/crypto/tink/BinaryKeysetReader;Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/google/crypto/tink/BinaryKeysetReader;->a:Ljava/io/ByteArrayInputStream;

    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->L(Ljava/io/ByteArrayInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p0

    const/4 v2, 0x0

    const-string v3, "empty keyset"

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decrypt([B[B)[B

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->P([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->K()I

    move-result p1
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "invalid keyset, corrupted key material"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {v3}, Lv40;->j(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method


# virtual methods
.method public final b()Lcom/google/crypto/tink/proto/KeysetInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {p0}, Lcom/google/crypto/tink/Util;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/google/crypto/tink/Registry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->b:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/PrimitiveWrapper;

    invoke-interface {v1}, Lcom/google/crypto/tink/PrimitiveWrapper;->b()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No input primitive class for "

    const-string v3, " available"

    invoke-static {p1, v2, v3}, Lpq0;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v1, v0

    :goto_0
    const-string v2, "No wrapper found for "

    if-eqz v1, :cond_16

    sget v3, Lcom/google/crypto/tink/Util;->a:I

    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset;->M()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset;->L()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, v6

    move v9, v8

    move v10, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->O()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v12

    sget-object v13, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v12, v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->P()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->N()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v12

    sget-object v13, Lcom/google/crypto/tink/proto/OutputPrefixType;->UNKNOWN_PREFIX:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq v12, v13, :cond_6

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->O()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v12

    sget-object v13, Lcom/google/crypto/tink/proto/KeyStatusType;->UNKNOWN_STATUS:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v12, v13, :cond_5

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result v12

    if-ne v12, v4, :cond_3

    if-nez v9, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    const-string p0, "keyset contains multiple primary keys"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_2
    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->L()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/KeyData;->L()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v11

    sget-object v12, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v11, v12, :cond_4

    move v10, v6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has unknown status"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has unknown prefix"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v11}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has no key data"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v8, :cond_15

    if-nez v9, :cond_a

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const-string p0, "keyset doesn\'t contain a valid primary key"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v0

    :cond_a
    :goto_3
    new-instance v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;

    invoke-direct {v4, v1}, Lcom/google/crypto/tink/PrimitiveSet$Builder;-><init>(Ljava/lang/Class;)V

    iget-object v5, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/google/crypto/tink/KeysetHandle;->c:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iput-object v5, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->d:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    move v5, v6

    :goto_4
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset;->K()I

    move-result v8

    if-ge v5, v8, :cond_10

    invoke-virtual {v3, v5}, Lcom/google/crypto/tink/proto/Keyset;->J(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/crypto/tink/proto/Keyset$Key;->O()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v9

    sget-object v10, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :try_start_1
    invoke-virtual {v8}, Lcom/google/crypto/tink/proto/Keyset$Key;->L()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v9

    sget-object v10, Lcom/google/crypto/tink/Registry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Lcom/google/crypto/tink/proto/KeyData;->M()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/crypto/tink/proto/KeyData;->N()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v9

    invoke-static {v10, v9, v1}, Lcom/google/crypto/tink/Registry;->b(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "No key manager found for key type "

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, " not supported by key manager of type "

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_5

    :cond_b
    throw v9

    :cond_c
    :goto_5
    move-object v9, v0

    :goto_6
    iget-object v10, p0, Lcom/google/crypto/tink/KeysetHandle;->b:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/crypto/tink/KeysetHandle$Entry;

    iget-object v10, v10, Lcom/google/crypto/tink/KeysetHandle$Entry;->a:Lcom/google/crypto/tink/Key;

    :try_start_2
    sget-object v11, Lcom/google/crypto/tink/Registry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v11, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->b:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    invoke-virtual {v11, v10, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->a(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    :cond_d
    move-object v10, v0

    :goto_7
    invoke-virtual {v8}, Lcom/google/crypto/tink/proto/Keyset$Key;->M()I

    move-result v11

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/Keyset;->M()I

    move-result v12

    if-ne v11, v12, :cond_e

    invoke-virtual {v4, v10, v9, v8, v7}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {v4, v10, v9, v8, v6}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)V

    :cond_f
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    iget-object p0, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_13

    new-instance v1, Lcom/google/crypto/tink/PrimitiveSet;

    iget-object v3, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->c:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    iget-object v5, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->d:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v6, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->a:Ljava/lang/Class;

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/google/crypto/tink/PrimitiveSet;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/crypto/tink/PrimitiveSet$Entry;Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/lang/Class;)V

    iput-object v0, v4, Lcom/google/crypto/tink/PrimitiveSet$Builder;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p0, Lcom/google/crypto/tink/Registry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->b:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    iget-object p0, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    iget-object p0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/PrimitiveWrapper;

    invoke-interface {p0}, Lcom/google/crypto/tink/PrimitiveWrapper;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Lcom/google/crypto/tink/PrimitiveWrapper;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0, v1}, Lcom/google/crypto/tink/PrimitiveWrapper;->a(Lcom/google/crypto/tink/PrimitiveSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "Input primitive type of the wrapper doesn\'t match the type of primitives in the provided PrimitiveSet"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v0

    :cond_12
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {p1, v2}, Lpq0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string p0, "build cannot be called twice"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_14
    const-string p0, "setAnnotations cannot be called after build"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_15
    const-string p0, "keyset must contain at least one ENABLED key"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v0

    :cond_16
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->a([B[B)[B

    move-result-object v2

    :try_start_0
    invoke-virtual {p2, v2, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decrypt([B[B)[B

    move-result-object p2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/crypto/tink/proto/Keyset;->P([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->K()Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p2

    array-length v1, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->h(II[B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object v1, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/crypto/tink/proto/EncryptedKeyset;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->H(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    invoke-static {p0}, Lcom/google/crypto/tink/Util;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object v0, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EncryptedKeyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->I(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/proto/KeysetInfo;)V

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->j()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EncryptedKeyset;

    iget-object p2, p1, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->a:Landroid/content/SharedPreferences$Editor;

    iget-object p1, p1, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Hex;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed to write to SharedPreferences"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot encrypt keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string p0, "invalid keyset, corrupted key material"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/KeysetHandle;->a:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {p0}, Lcom/google/crypto/tink/Util;->a(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
