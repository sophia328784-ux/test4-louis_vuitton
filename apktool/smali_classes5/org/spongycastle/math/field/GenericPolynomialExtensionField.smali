.class Lorg/spongycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/field/PolynomialExtensionField;


# instance fields
.field public final a:Lorg/spongycastle/math/field/FiniteField;

.field public final b:Lorg/spongycastle/math/field/Polynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/field/FiniteField;Lorg/spongycastle/math/field/Polynomial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    iput-object p2, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    iget-object v1, p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    iget-object p1, p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getCharacteristic()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {p0}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final getDimension()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    check-cast p0, Lorg/spongycastle/math/field/GF2Polynomial;

    invoke-virtual {p0}, Lorg/spongycastle/math/field/GF2Polynomial;->getDegree()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public final getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->b:Lorg/spongycastle/math/field/Polynomial;

    check-cast p0, Lorg/spongycastle/math/field/GF2Polynomial;

    iget-object p0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->h([I)I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
