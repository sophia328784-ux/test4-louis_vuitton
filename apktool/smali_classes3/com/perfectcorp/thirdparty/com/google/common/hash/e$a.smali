.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Funnels.asOutputStream("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(I)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/j;->d(B)V

    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/j;->b([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    invoke-interface {p0, p2, p3, p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/j;->b(II[B)V

    return-void
.end method
