.class public Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Curve;->i:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [I

    .line 52
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat160;->d(Ljava/math/BigInteger;)[I

    move-result-object p1

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat160;->m([I[I)V

    :cond_0
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    return-void

    :cond_1
    const-string p0, "x value invalid for SecP160R1FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/raw/Nat160;->a([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    aget p0, v1, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const p0, -0x7fffffff

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->g(II[I)I

    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->m(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    aget p0, v1, p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const p0, -0x7fffffff

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->g(II[I)I

    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat160;->c([I[I)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat160;->g([I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    const/4 v1, 0x5

    invoke-static {v1, p0}, Lorg/spongycastle/util/Arrays;->f(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat160;->h([I)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat160;->h([I)Z

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

    const/4 v1, 0x4

    aput p0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Nat160;->l([I[I[I)I

    :goto_0
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat160;->h([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat160;->g([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    new-array v1, p0, [I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->d([I[I)V

    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    new-array p0, p0, [I

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {p0, v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/4 v2, 0x4

    invoke-static {p0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/16 v2, 0x8

    invoke-static {v1, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {p0, v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/16 v2, 0x10

    invoke-static {p0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/16 v2, 0x20

    invoke-static {v1, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {p0, v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/16 v2, 0x40

    invoke-static {p0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->d([I[I)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->a([I[I[I)V

    const/16 v2, 0x1d

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->e([II[I)V

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->d([I[I)V

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat160;->c([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->d([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->f([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final r()Z
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat160;->e([I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat160;->n([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
