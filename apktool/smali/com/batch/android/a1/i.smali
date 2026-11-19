.class public Lcom/batch/android/a1/i;
.super Lcom/batch/android/a1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/k;


# static fields
.field private static final c:J = -0x80L

.field private static final d:J = 0x7fL

.field private static final e:J = -0x8000L

.field private static final f:J = 0x7fffL

.field private static final g:J = -0x80000000L

.field private static final h:J = 0x7fffffffL


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/a1/b;-><init>()V

    iput-wide p1, p0, Lcom/batch/android/a1/i;->b:J

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->f:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public B()F
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-float p0, v0

    return p0
.end method

.method public C()D
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public E()B
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public F()S
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public H()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public I()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public J()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    return-wide v0
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

.method public O()Z
    .locals 4

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    const-wide/16 v2, -0x80

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/16 v2, 0x7f

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic P()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->P()Z

    move-result p0

    return p0
.end method

.method public Q()Lcom/batch/android/x0/c;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/a1/d;->a(Lcom/batch/android/z0/r;)Lcom/batch/android/x0/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic R()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->R()Z

    move-result p0

    return p0
.end method

.method public T()I
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    return p0
.end method

.method public V()Z
    .locals 0

    const/4 p0, 0x1

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

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->a0()Lcom/batch/android/z0/n;

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

.method public a()Lcom/batch/android/z0/k;
    .locals 0

    .line 7
    return-object p0
.end method

.method public bridge synthetic a()Lcom/batch/android/z0/r;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/batch/android/a1/i;->a()Lcom/batch/android/z0/k;

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

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/x0/j;->a(J)Lcom/batch/android/x0/j;

    return-void
.end method

.method public a0()Lcom/batch/android/z0/n;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic b()Lcom/batch/android/z0/j;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->b()Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lcom/batch/android/z0/k;
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

    invoke-interface {p1}, Lcom/batch/android/z0/x;->o()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lcom/batch/android/z0/x;->a()Lcom/batch/android/z0/r;

    move-result-object p1

    invoke-interface {p1}, Lcom/batch/android/z0/r;->V()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/batch/android/a1/i;->b:J

    invoke-interface {p1}, Lcom/batch/android/z0/u;->t()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_4

    return v0

    :cond_4
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

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
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

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->b0()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public n()S
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-wide v1, p0, Lcom/batch/android/a1/i;->b:J

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
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

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 4

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()Z
    .locals 4

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    const-wide/16 v2, -0x8000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/16 v2, 0x7fff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic w()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->w()Z

    move-result p0

    return p0
.end method

.method public x()B
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-wide v1, p0, Lcom/batch/android/a1/i;->b:J

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method

.method public bridge synthetic y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->y()Z

    move-result p0

    return p0
.end method

.method public z()I
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/a1/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/a1/i;->b:J

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-wide v1, p0, Lcom/batch/android/a1/i;->b:J

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method
