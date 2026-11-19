.class public Lcom/batch/android/x0/b;
.super Lcom/batch/android/x0/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/batch/android/x0/h$b;)V
    .locals 1

    new-instance v0, Lcom/batch/android/y0/b;

    invoke-direct {v0}, Lcom/batch/android/y0/b;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/b;-><init>(Lcom/batch/android/y0/b;Lcom/batch/android/x0/h$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/y0/b;Lcom/batch/android/x0/h$b;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/batch/android/x0/j;-><init>(Lcom/batch/android/y0/h;Lcom/batch/android/x0/h$b;)V

    return-void
.end method

.method private f()Lcom/batch/android/y0/b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    check-cast p0, Lcom/batch/android/y0/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/batch/android/y0/h;)Lcom/batch/android/y0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/batch/android/y0/b;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/batch/android/x0/j;->a(Lcom/batch/android/y0/h;)Lcom/batch/android/y0/h;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MessageBufferPacker accepts only ArrayBufferOutput"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/batch/android/x0/j;->a()V

    .line 17
    invoke-direct {p0}, Lcom/batch/android/x0/b;->f()Lcom/batch/android/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->a()V

    return-void
.end method

.method public g()I
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/x0/b;->f()Lcom/batch/android/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->b()I

    move-result p0

    return p0
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/msgpack/core/buffer/MessageBuffer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/batch/android/x0/b;->f()Lcom/batch/android/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->c()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()[B
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/batch/android/x0/b;->f()Lcom/batch/android/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->d()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/batch/android/x0/b;->f()Lcom/batch/android/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->e()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
