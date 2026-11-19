.class public Lcom/batch/android/a1/l;
.super Lcom/batch/android/a1/a;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/batch/android/a1/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/a1/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->h:Lcom/batch/android/z0/z;

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

    invoke-virtual {p1, v0}, Lcom/batch/android/x0/j;->h(I)Lcom/batch/android/x0/j;

    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    invoke-virtual {p1, p0}, Lcom/batch/android/x0/j;->b([B)Lcom/batch/android/x0/j;

    return-void
.end method

.method public c0()Lcom/batch/android/z0/p;
    .locals 0

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

    invoke-interface {p1}, Lcom/batch/android/z0/x;->R()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Lcom/batch/android/a1/l;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/batch/android/a1/l;

    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    iget-object p1, p1, Lcom/batch/android/a1/a;->b:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/batch/android/a1/a;->b:[B

    invoke-interface {p1}, Lcom/batch/android/z0/x;->h()Lcom/batch/android/z0/w;

    move-result-object p1

    invoke-interface {p1}, Lcom/batch/android/z0/v;->M()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public h()Lcom/batch/android/z0/p;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic h()Lcom/batch/android/z0/w;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/l;->h()Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lcom/batch/android/a1/l;->c0()Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0
.end method
