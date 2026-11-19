.class public Lorg/spongycastle/math/ec/ECFieldElement$Fp;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field public final d:Ljava/math/BigInteger;

.field public final e:Ljava/math/BigInteger;

.field public final f:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->t(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    return-void

    :cond_0
    const-string p0, "x value invalid in Fp field element"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static t(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->a:Ljava/math/BigInteger;

    :cond_0
    new-instance v2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v2, v1, p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v3, v2, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat;->j(ILjava/math/BigInteger;)[I

    move-result-object v4

    invoke-static {v2, p1}, Lorg/spongycastle/math/raw/Nat;->j(ILjava/math/BigInteger;)[I

    move-result-object p1

    new-array v2, v3, [I

    invoke-static {v4, p1, v2}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    invoke-static {v3, v2}, Lorg/spongycastle/math/raw/Nat;->z(I[I)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v3, v2, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat;->j(ILjava/math/BigInteger;)[I

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-static {v2, v5}, Lorg/spongycastle/math/raw/Nat;->j(ILjava/math/BigInteger;)[I

    move-result-object v2

    new-array v5, v3, [I

    invoke-static {v4, v2, v5}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    invoke-static {v3, v5}, Lorg/spongycastle/math/raw/Nat;->z(I[I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {p3, p2, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {p3, p2, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    const/4 v6, 0x2

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    sget-object v9, Lorg/spongycastle/math/ec/ECConstants;->b:Ljava/math/BigInteger;

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v8, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v1, v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    return-object v4

    :cond_2
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    sget-object v10, Lorg/spongycastle/math/ec/ECConstants;->c:Ljava/math/BigInteger;

    if-eqz v5, :cond_6

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-direct {v2, v1, v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    return-object v4

    :cond_4
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-direct {v3, v1, v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    return-object v4

    :cond_6
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v16, v4

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_8

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_8
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_9

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_9
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    :goto_0
    new-instance v14, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-direct {v14, v15, v13}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_11

    invoke-virtual {v14, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    move-object/from16 v16, v4

    invoke-virtual {v11}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    sub-int/2addr v15, v3

    move/from16 v17, v2

    move-object/from16 v18, v5

    move-object v2, v9

    move-object v3, v2

    move-object v5, v3

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object v13, v14

    :goto_1
    move-object/from16 v21, v12

    add-int/lit8 v12, v4, 0x1

    if-lt v15, v12, :cond_b

    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11, v15}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v2, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v5, v13}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v13, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object/from16 v22, v5

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v13, v5

    move-object/from16 v5, v22

    goto :goto_2

    :cond_a
    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move-object v13, v5

    move-object v5, v3

    move-object v3, v2

    :goto_2
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v12, v21

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v13, 0x1

    :goto_3
    if-gt v13, v4, :cond_c

    invoke-virtual {v0, v5, v10}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_c
    const/4 v12, 0x1

    filled-new-array {v5, v10}, [Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, v2, v17

    aget-object v2, v2, v12

    invoke-virtual {v0, v2, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_d
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_e
    move/from16 v4, v17

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :goto_4
    return-object v16

    :cond_f
    move v3, v12

    move-object/from16 v5, v18

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object v12, v2

    :goto_5
    move v2, v4

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_10
    move v2, v4

    move v3, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto/16 :goto_0

    :cond_11
    move-object/from16 v16, v4

    move v4, v2

    move-object v2, v12

    goto :goto_5

    :cond_12
    move-object/from16 v16, v4

    const-string v0, "not done yet"

    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    return-object v16

    :cond_13
    :goto_6
    return-object v0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, v1, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {p2, v0, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    if-gez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->f:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final u(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->v(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->e:Ljava/math/BigInteger;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v3, :cond_2

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_2
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_4

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
