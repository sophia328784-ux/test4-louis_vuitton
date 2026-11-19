.class abstract Lcom/google/common/hash/AbstractStreamingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->a:Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->b:I

    iput v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->c:I

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/hash/HashCode;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/common/hash/AbstractStreamingHasher;->d()V

    iget-object v1, v0, Lcom/google/common/hash/AbstractStreamingHasher;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x21

    const/16 v4, 0x10

    if-lez v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;

    iget v5, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->f:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->f:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    const/16 v6, 0x18

    const/16 v7, 0x20

    const/16 v8, 0x28

    const/16 v9, 0x30

    const/16 v10, 0x8

    const-wide/16 v11, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "Should never get here."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v11, v5

    shl-long/2addr v11, v9

    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v13, v5

    shl-long v8, v13, v8

    xor-long/2addr v11, v8

    :pswitch_2
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v8, v5

    shl-long v7, v8, v7

    xor-long/2addr v11, v7

    :pswitch_3
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v7, v5

    shl-long v5, v7, v6

    xor-long/2addr v11, v5

    :pswitch_4
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v4

    xor-long/2addr v11, v5

    :pswitch_5
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    xor-long/2addr v11, v5

    :pswitch_6
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    xor-long/2addr v11, v5

    :pswitch_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    goto/16 :goto_6

    :pswitch_8
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v13, v5

    shl-long/2addr v13, v9

    goto :goto_0

    :pswitch_9
    move-wide v13, v11

    :goto_0
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    move v15, v6

    move v9, v7

    int-to-long v6, v5

    shl-long v5, v6, v8

    xor-long/2addr v5, v13

    goto :goto_1

    :pswitch_a
    move v15, v6

    move v9, v7

    move-wide v5, v11

    :goto_1
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    goto :goto_2

    :pswitch_b
    move v15, v6

    move-wide v5, v11

    :goto_2
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v15

    xor-long/2addr v5, v7

    goto :goto_3

    :pswitch_c
    move-wide v5, v11

    :goto_3
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v4

    xor-long/2addr v5, v7

    goto :goto_4

    :pswitch_d
    move-wide v5, v11

    :goto_4
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v7, v10

    xor-long/2addr v5, v7

    goto :goto_5

    :pswitch_e
    move-wide v5, v11

    :goto_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    int-to-long v7, v7

    xor-long/2addr v5, v7

    :goto_6
    iget-wide v7, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->d:J

    const-wide v9, -0x783c846eeebdac2bL

    mul-long/2addr v5, v9

    const/16 v13, 0x1f

    invoke-static {v5, v6, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const-wide v13, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v5, v13

    xor-long/2addr v5, v7

    iput-wide v5, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->d:J

    iget-wide v5, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->e:J

    mul-long/2addr v11, v13

    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    iput-wide v5, v2, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->e:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    check-cast v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;

    iget-wide v1, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->d:J

    iget v5, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->f:I

    int-to-long v5, v5

    xor-long/2addr v1, v5

    iget-wide v7, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->e:J

    xor-long/2addr v5, v7

    add-long/2addr v1, v5

    add-long/2addr v5, v1

    ushr-long v7, v1, v3

    xor-long/2addr v1, v7

    const-wide v7, -0xae502812aa7333L

    mul-long/2addr v1, v7

    ushr-long v9, v1, v3

    xor-long/2addr v1, v9

    const-wide v9, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v1, v9

    ushr-long v11, v1, v3

    xor-long/2addr v1, v11

    ushr-long v11, v5, v3

    xor-long/2addr v5, v11

    mul-long/2addr v5, v7

    ushr-long v7, v5, v3

    xor-long/2addr v5, v7

    mul-long/2addr v5, v9

    ushr-long v7, v5, v3

    xor-long/2addr v5, v7

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->d:J

    add-long/2addr v5, v1

    iput-wide v5, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->e:J

    new-array v1, v4, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-instance v1, Lcom/google/common/hash/HashCode$BytesHashCode;

    invoke-direct {v1, v0}, Lcom/google/common/hash/HashCode$BytesHashCode;-><init>([B)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/google/common/hash/Hasher;
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->d()V

    :cond_0
    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/common/hash/AbstractStreamingHasher;->c:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public abstract e(Ljava/nio/ByteBuffer;)V
.end method
