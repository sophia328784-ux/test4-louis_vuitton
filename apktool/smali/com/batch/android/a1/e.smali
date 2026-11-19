.class public Lcom/batch/android/a1/e;
.super Lcom/batch/android/a1/a;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/g;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/a1/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->i:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a1/a;->b:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/batch/android/x0/j;->e(I)Lcom/batch/android/x0/j;

    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    invoke-virtual {p1, p0}, Lcom/batch/android/x0/j;->b([B)Lcom/batch/android/x0/j;

    return-void
.end method

.method public c0()Lcom/batch/android/z0/g;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic e()Lcom/batch/android/z0/b;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/e;->e()Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/batch/android/z0/g;
    .locals 0

    .line 5
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/batch/android/z0/x;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/batch/android/z0/x;

    invoke-interface {p1}, Lcom/batch/android/z0/x;->p()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Lcom/batch/android/a1/e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/batch/android/a1/e;

    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    iget-object p1, p1, Lcom/batch/android/a1/a;->b:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    invoke-interface {p1}, Lcom/batch/android/z0/x;->e()Lcom/batch/android/z0/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/batch/android/z0/v;->M()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/e;->c0()Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method
