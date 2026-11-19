.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x32

    .line 92
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(ILorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IIILorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(IIILorg/spongycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v1, 0x20

    if-gt p1, v1, :cond_3

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->c:I

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_1

    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->a(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->d:Lorg/spongycastle/crypto/Digest;

    return-void

    :cond_0
    const-string p0, "polynomial is not a field polynomial for GF(2^m)"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "t must be less than n = 2^m"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const-string p0, "t must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const-string p0, " m is too large"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    const-string p0, "m must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(IILorg/spongycastle/crypto/Digest;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    .line 83
    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    shl-int/2addr v0, p1

    .line 84
    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->c:I

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_0

    .line 85
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->b(I)I

    .line 86
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->d:Lorg/spongycastle/crypto/Digest;

    return-void

    .line 87
    :cond_0
    const-string p0, "t must be less than n = 2^m"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 88
    :cond_1
    const-string p0, "t must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 89
    :cond_2
    const-string p0, "m is too large"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 90
    :cond_3
    const-string p0, "m must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    .line 73
    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->c:I

    .line 74
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->c:I

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    .line 75
    iput v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->c:I

    .line 76
    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v1, 0x1

    .line 77
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->b:I

    div-int/2addr p1, v0

    .line 78
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->b(I)I

    .line 79
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->d:Lorg/spongycastle/crypto/Digest;

    return-void

    .line 80
    :cond_1
    const-string p0, "key size must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x32

    .line 69
    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    return-void
.end method
