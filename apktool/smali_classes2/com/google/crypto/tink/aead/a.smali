.class public final synthetic Lcom/google/crypto/tink/aead/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/crypto/tink/aead/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/Key;
    .locals 9

    iget p0, p0, Lcom/google/crypto/tink/aead/a;->a:I

    const/16 v0, 0xc

    const-string v1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    const/16 v2, 0x18

    const/16 v3, 0x20

    const/16 v4, 0x10

    const-string v5, "Only version 0 keys are accepted"

    sget-object v6, Lcom/google/crypto/tink/SecretKeyAccess;->a:Lcom/google/crypto/tink/SecretKeyAccess;

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305ProtoSerialization;->a:Lcom/google/crypto/tink/internal/ParametersSerializer;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->M(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->K()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305ProtoSerialization;->a(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/google/crypto/tink/util/SecretBytes;->a([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    iget-object p1, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->f:Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->a(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object v7

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "Parsing XChaCha20Poly1305Key failed"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Wrong type URL in call to XChaCha20Poly1305Parameters.parseParameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_0
    return-object v7

    :pswitch_0
    sget-object p0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305ProtoSerialization;->a:Lcom/google/crypto/tink/internal/ParametersSerializer;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :try_start_1
    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->M(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->K()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305ProtoSerialization;->a(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/google/crypto/tink/util/SecretBytes;->a([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    iget-object p1, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->f:Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->a(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;

    move-result-object v7

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p0, "Parsing ChaCha20Poly1305Key failed"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "Wrong type URL in call to ChaCha20Poly1305Parameters.parseParameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_1
    return-object v7

    :pswitch_1
    sget-object p0, Lcom/google/crypto/tink/aead/AesGcmSivProtoSerialization;->a:Lcom/google/crypto/tink/internal/ParametersSerializer;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :try_start_2
    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->M(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmSivKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->K()I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->a:Ljava/lang/Integer;

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->d:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    iput-object v1, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->b:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v1

    if-eq v1, v4, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->a:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-static {v1}, Lcom/google/crypto/tink/aead/AesGcmSivProtoSerialization;->a(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->b:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    iget-object v1, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->b:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    invoke-direct {v2, v1, v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;-><init>(ILcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;)V

    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object v7, v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->c:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->a:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/google/crypto/tink/util/SecretBytes;->a([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    iput-object p0, v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->f:Ljava/lang/Integer;

    iput-object p0, v0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->a()Lcom/google/crypto/tink/aead/AesGcmSivKey;

    move-result-object v7

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size is not set"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string p0, "Parsing AesGcmSivKey failed"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string p0, "Wrong type URL in call to AesGcmSivParameters.parseParameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_3
    return-object v7

    :pswitch_2
    sget-object p0, Lcom/google/crypto/tink/aead/AesGcmProtoSerialization;->a:Lcom/google/crypto/tink/internal/ParametersSerializer;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a:Ljava/lang/String;

    const-string v8, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :try_start_3
    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/google/crypto/tink/proto/AesGcmKey;->M(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmKey;->K()I

    move-result v8

    if-nez v8, :cond_b

    new-instance v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->a:Ljava/lang/Integer;

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->b:Ljava/lang/Integer;

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->c:Ljava/lang/Integer;

    sget-object v8, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    iput-object v8, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmKey;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v8

    if-eq v8, v4, :cond_a

    if-eq v8, v2, :cond_a

    if-ne v8, v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->a:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->b:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->c:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesGcmProtoSerialization;->a(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    invoke-virtual {v5}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->a()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v7, v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object v7, v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->a:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmKey;->J()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/google/crypto/tink/util/SecretBytes;->a([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    iput-object p0, v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->f:Ljava/lang/Integer;

    iput-object p0, v1, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->a()Lcom/google/crypto/tink/aead/AesGcmKey;

    move-result-object v7

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string p0, "Parsing AesGcmKey failed"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string p0, "Wrong type URL in call to AesGcmParameters.parseParameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_5
    return-object v7

    :pswitch_3
    sget-object p0, Lcom/google/crypto/tink/aead/AesEaxProtoSerialization;->a:Lcom/google/crypto/tink/internal/ParametersSerializer;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->a:Ljava/lang/String;

    const-string v8, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :try_start_4
    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/google/crypto/tink/proto/AesEaxKey;->O(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesEaxKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKey;->M()I

    move-result v8

    if-nez v8, :cond_11

    new-instance v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->a:Ljava/lang/Integer;

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->b:Ljava/lang/Integer;

    iput-object v7, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->c:Ljava/lang/Integer;

    sget-object v8, Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;->d:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    iput-object v8, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->d:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKey;->K()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v8

    if-eq v8, v4, :cond_e

    if-eq v8, v2, :cond_e

    if-ne v8, v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKey;->L()Lcom/google/crypto/tink/proto/AesEaxParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesEaxParams;->J()I

    move-result v1

    if-eq v1, v0, :cond_10

    if-ne v1, v4, :cond_f

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->b:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->c:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesEaxProtoSerialization;->a(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    move-result-object v0

    iput-object v0, v5, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->d:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    invoke-virtual {v5}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->a()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v7, v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iput-object v7, v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->c:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->a:Lcom/google/crypto/tink/aead/AesEaxParameters;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKey;->K()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->m()[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/google/crypto/tink/util/SecretBytes;->a([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    iput-object p0, v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object p0, p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->f:Ljava/lang/Integer;

    iput-object p0, v1, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesEaxKey$Builder;->a()Lcom/google/crypto/tink/aead/AesEaxKey;

    move-result-object v7

    goto :goto_8

    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const-string p0, "Parsing AesEaxcKey failed"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const-string p0, "Wrong type URL in call to AesEaxParameters.parseParameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_8
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
