.class Lorg/spongycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/field/Polynomial;


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/field/GF2Polynomial;

    iget-object p0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    iget-object p1, p1, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->b([I[I)Z

    move-result p0

    return p0
.end method

.method public final getDegree()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public final getExponentsPresent()[I
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->a:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->h([I)I

    move-result p0

    return p0
.end method
