.class public Lcom/batch/android/y0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/h;


# instance fields
.field private b:Ljava/nio/channels/WritableByteChannel;

.field private c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    const/16 v0, 0x2000

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/batch/android/y0/e;-><init>(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output channel is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/WritableByteChannel;

    iput-object p1, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-static {p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/e;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

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

    iget-object v0, p0, Lcom/batch/android/y0/e;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/e;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    :cond_0
    iget-object p0, p0, Lcom/batch/android/y0/e;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

    .line 18
    iput-object p1, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/y0/e;->write([BII)V

    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/e;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/batch/android/y0/e;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    return-void
.end method
