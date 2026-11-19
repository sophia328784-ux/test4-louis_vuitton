.class public Lcom/google/crypto/tink/aead/AesGcmKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/crypto/tink/aead/AesGcmParameters;

.field public b:Lcom/google/crypto/tink/util/SecretBytes;

.field public c:Ljava/lang/Integer;


# virtual methods
.method public final a()Lcom/google/crypto/tink/aead/AesGcmKey;
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->a:Lcom/google/crypto/tink/aead/AesGcmParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v2, :cond_8

    iget v3, v0, Lcom/google/crypto/tink/aead/AesGcmParameters;->a:I

    iget-object v2, v2, Lcom/google/crypto/tink/util/SecretBytes;->a:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, v2, Lcom/google/crypto/tink/util/Bytes;->a:[B

    array-length v2, v2

    if-ne v3, v2, :cond_7

    iget-object v0, v0, Lcom/google/crypto/tink/aead/AesGcmParameters;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    if-nez v3, :cond_6

    :goto_1
    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    new-array p0, v3, [B

    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->c:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const/4 v4, 0x5

    if-ne v0, v2, :cond_4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p0, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->b:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    if-ne v0, v2, :cond_5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p0, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    :goto_2
    new-instance p0, Lcom/google/crypto/tink/aead/AesGcmKey;

    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->a:Lcom/google/crypto/tink/aead/AesGcmParameters;

    iget-object p0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->d:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const-string v0, "Unknown AesGcmParameters.Variant: "

    invoke-static {p0, v0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-string p0, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_7
    const-string p0, "Key size mismatch"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string p0, "Cannot build without parameters and/or key material"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1
.end method
