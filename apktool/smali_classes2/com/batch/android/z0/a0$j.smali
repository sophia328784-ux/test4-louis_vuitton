.class Lcom/batch/android/z0/a0$j;
.super Lcom/batch/android/z0/a0$b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field final synthetic d:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$b;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$j;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->f:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public H()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public J()J
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$j;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method

.method public O()Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/16 v3, -0x80

    cmp-long v0, v3, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/16 v3, 0x7f

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public Q()Lcom/batch/android/x0/c;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/a1/d;->a(Lcom/batch/android/z0/r;)Lcom/batch/android/x0/c;

    move-result-object p0

    return-object p0
.end method

.method public V()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object p0

    sget-object v0, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public Z()Lcom/batch/android/z0/k;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Ljava/math/BigInteger;)Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/z0/y;->a(J)Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public a()Lcom/batch/android/z0/r;
    .locals 0

    .line 30
    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Lcom/batch/android/x0/j;->a(Ljava/math/BigInteger;)Lcom/batch/android/x0/j;

    return-void

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/x0/j;->a(J)Lcom/batch/android/x0/j;

    return-void
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$j;->Z()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public n()S
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$j;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method

.method public u()Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/32 v3, -0x80000000

    cmp-long v0, v3, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/32 v3, 0x7fffffff

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public v()Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/16 v3, -0x8000

    cmp-long v0, v3, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    const-wide/16 v3, 0x7fff

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public x()B
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$j;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method

.method public z()I
    .locals 3

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$j;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/z0/a0$j;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/x0/f;-><init>(J)V

    throw v0
.end method
