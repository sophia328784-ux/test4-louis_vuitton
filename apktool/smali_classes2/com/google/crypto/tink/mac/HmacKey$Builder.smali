.class public Lcom/google/crypto/tink/mac/HmacKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/crypto/tink/mac/HmacParameters;

.field public b:Lcom/google/crypto/tink/util/SecretBytes;

.field public c:Ljava/lang/Integer;


# virtual methods
.method public final a()Lcom/google/crypto/tink/mac/HmacKey;
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->a:Lcom/google/crypto/tink/mac/HmacParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->b:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v2, :cond_9

    iget v3, v0, Lcom/google/crypto/tink/mac/HmacParameters;->a:I

    iget-object v2, v2, Lcom/google/crypto/tink/util/SecretBytes;->a:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, v2, Lcom/google/crypto/tink/util/Bytes;->a:[B

    array-length v2, v2

    if-ne v3, v2, :cond_8

    iget-object v0, v0, Lcom/google/crypto/tink/mac/HmacParameters;->c:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->e:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->c:Ljava/lang/Integer;

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
    iget-object v3, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->c:Ljava/lang/Integer;

    if-nez v3, :cond_7

    :goto_1
    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    new-array v0, v3, [B

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->d:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const/4 v4, 0x5

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->c:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->b:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v2, :cond_5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->a:Lcom/google/crypto/tink/mac/HmacParameters;

    iget-object p0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->c:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const-string v0, "Unknown HmacParameters.Variant: "

    invoke-static {p0, v0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_6
    :goto_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->a([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/google/crypto/tink/mac/HmacKey;

    iget-object p0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->a:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-direct {v1, p0, v0}, Lcom/google/crypto/tink/mac/HmacKey;-><init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/Bytes;)V

    return-object v1

    :cond_7
    const-string p0, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string p0, "Key size mismatch"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-string p0, "Cannot build without parameters and/or key material"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1
.end method
