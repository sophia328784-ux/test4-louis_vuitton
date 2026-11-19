.class public Lorg/spongycastle/pqc/crypto/rainbow/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[[[S

.field public final e:[[[S

.field public final f:[[S

.field public final g:[S


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    .line 186
    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    and-int/lit16 p2, p2, 0xff

    .line 187
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    sub-int/2addr p2, p1

    .line 188
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    .line 189
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    .line 190
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    .line 191
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    .line 192
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    sub-int v0, p2, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x2

    aput p1, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[S

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    new-array v1, v1, [I

    aput p1, v1, v3

    aput p1, v1, v4

    aput v0, v1, v5

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    new-array p1, v3, [I

    aput p2, p1, v4

    aput v0, p1, v5

    invoke-static {v6, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    new-array p1, v0, [S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    move p1, v5

    :goto_0
    if-ge p1, v0, :cond_2

    move p2, v5

    :goto_1
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    if-ge p2, v1, :cond_1

    move v1, v5

    :goto_2
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_3
    if-ge p1, v0, :cond_5

    move p2, v5

    :goto_4
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    if-ge p2, v1, :cond_4

    move v1, v5

    :goto_5
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    move p1, v5

    :goto_6
    if-ge p1, v0, :cond_7

    move p2, v5

    :goto_7
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    aget-object v1, v1, p1

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    if-ge v5, v0, :cond_8

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    int-to-short p2, p2

    aput-short p2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    iget v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    iget v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    iget v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    array-length v3, v2

    array-length v4, v1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v5

    move v4, v5

    :goto_0
    if-ltz v3, :cond_2

    aget-object v6, v2, v3

    aget-object v7, v1, v3

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v6

    and-int/2addr v4, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    array-length v3, v2

    sub-int/2addr v3, v5

    move v4, v5

    :goto_2
    if-ltz v3, :cond_4

    aget-object v6, v2, v3

    aget-object v7, v1, v3

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v6

    and-int/2addr v4, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->g([S[S)Z

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    :goto_4
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->d:[[[S

    array-length v5, v4

    if-eq v2, v5, :cond_0

    mul-int/lit16 v3, v3, 0x101

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x25

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->e:[[[S

    array-length v4, v2

    if-eq v1, v4, :cond_1

    mul-int/lit16 v0, v0, 0x101

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->f:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->g:[S

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->j([S)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
