.class public Lcom/batch/android/y0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/h;


# instance fields
.field private b:Ljava/io/OutputStream;

.field private c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/batch/android/y0/i;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    invoke-static {p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    :cond_0
    iget-object p0, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0
.end method

.method public a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    .line 18
    iput-object p1, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/y0/i;->write([BII)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/y0/i;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/batch/android/y0/i;->write([BII)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/i;->b:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
