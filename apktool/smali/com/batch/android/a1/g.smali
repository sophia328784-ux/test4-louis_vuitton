.class public Lcom/batch/android/a1/g;
.super Lcom/batch/android/a1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/j;


# instance fields
.field private final b:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/a1/b;-><init>()V

    iput-wide p1, p0, Lcom/batch/android/a1/g;->b:D

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->g:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public B()F
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    double-to-float p0, v0

    return p0
.end method

.method public C()D
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    return-wide v0
.end method

.method public E()B
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    double-to-int p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public F()S
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    double-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public I()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/batch/android/a1/g;->b:D

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic L()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->L()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic N()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->N()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic P()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->P()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic R()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->R()Z

    move-result p0

    return p0
.end method

.method public T()I
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    double-to-int p0, v0

    return p0
.end method

.method public bridge synthetic W()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->W()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic X()Lcom/batch/android/z0/u;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/g;->a0()Lcom/batch/android/z0/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic Y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->Y()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic Z()Lcom/batch/android/z0/i;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->Z()Lcom/batch/android/z0/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lcom/batch/android/z0/k;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/batch/android/a1/b;->a()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/x0/j;->a(D)Lcom/batch/android/x0/j;

    return-void
.end method

.method public a0()Lcom/batch/android/z0/n;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic b()Lcom/batch/android/z0/e;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/g;->b()Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/batch/android/z0/j;
    .locals 0

    .line 5
    return-object p0
.end method

.method public b0()Lcom/batch/android/a1/g;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic c()Lcom/batch/android/z0/f;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->c()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d()Lcom/batch/android/z0/l;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->d()Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Lcom/batch/android/z0/g;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->e()Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/z0/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/z0/x;

    invoke-interface {p1}, Lcom/batch/android/z0/x;->Y()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/batch/android/a1/g;->b:D

    invoke-interface {p1}, Lcom/batch/android/z0/x;->b()Lcom/batch/android/z0/e;

    move-result-object p0

    invoke-interface {p0}, Lcom/batch/android/z0/u;->C()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public bridge synthetic f()Lcom/batch/android/z0/m;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->f()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Lcom/batch/android/z0/p;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->h()Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public bridge synthetic i()Lcom/batch/android/z0/o;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->i()Lcom/batch/android/z0/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j()Lcom/batch/android/z0/h;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->j()Lcom/batch/android/z0/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/g;->b0()Lcom/batch/android/a1/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->o()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic p()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->p()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic r()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->r()Z

    move-result p0

    return p0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "null"

    return-object p0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/g;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic w()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->w()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->y()Z

    move-result p0

    return p0
.end method
