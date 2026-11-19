.class public Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Curve;->i:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x4

    .line 155
    new-array v0, v0, [I

    .line 156
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 13

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v0, v2

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    aget v2, v0, p1

    const/4 v3, 0x1

    ushr-int/2addr v2, v3

    const v5, 0x7ffffffe

    if-lt v2, v5, :cond_1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat128;->b([I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    aget v5, v0, v1

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    aget v9, v2, v1

    int-to-long v9, v9

    and-long/2addr v9, v7

    sub-long/2addr v5, v9

    long-to-int v9, v5

    aput v9, v0, v1

    shr-long/2addr v5, v4

    aget v1, v0, v3

    int-to-long v9, v1

    and-long/2addr v9, v7

    aget v1, v2, v3

    int-to-long v11, v1

    and-long/2addr v11, v7

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    long-to-int v1, v9

    aput v1, v0, v3

    shr-long v5, v9, v4

    const/4 v1, 0x2

    aget v3, v0, v1

    int-to-long v9, v3

    and-long/2addr v9, v7

    aget v3, v2, v1

    int-to-long v11, v3

    and-long/2addr v11, v7

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    long-to-int v3, v9

    aput v3, v0, v1

    shr-long v3, v9, v4

    aget v1, v0, p1

    int-to-long v5, v1

    and-long/2addr v5, v7

    aget v1, v2, p1

    int-to-long v1, v1

    and-long/2addr v1, v7

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    long-to-int v1, v5

    aput v1, v0, p1

    :cond_1
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    return-void

    :cond_2
    invoke-static {}, Lct0;->c()V

    throw v0

    :cond_3
    const-string p0, "x value invalid for SecP128R1FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->m(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    aget p0, v1, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7ffffffe

    if-lt p0, v0, :cond_1

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat128;->b([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->b([I)V

    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    aget v3, v3, v1

    aget v4, p1, v1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final f()I
    .locals 0

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat128;->c([I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    const/4 v1, 0x4

    invoke-static {v1, p0}, Lorg/spongycastle/util/Arrays;->f(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    aput p0, v0, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 v1, 0x3

    aput p0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Nat128;->g([I[I[I)I

    :goto_0
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat128;->c([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x4

    new-array v1, p0, [I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    new-array v2, p0, [I

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v2, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    new-array v4, p0, [I

    invoke-static {v2, p0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v4, v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v4, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v2, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    const/16 p0, 0xa

    invoke-static {v2, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v1, p0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v4, v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v4, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    const/16 p0, 0x5f

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->g([II[I)V

    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    const/4 p0, 0x3

    :goto_0
    if-ltz p0, :cond_2

    aget v1, v0, p0

    aget v3, v4, p0

    if-eq v1, v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final r()Z
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
