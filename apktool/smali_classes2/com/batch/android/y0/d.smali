.class public Lcom/batch/android/y0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/g;


# instance fields
.field private b:Ljava/nio/channels/ReadableByteChannel;

.field private final c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    const/16 v0, 0x2000

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/batch/android/y0/d;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input channel is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lcom/batch/android/y0/d;->b:Ljava/nio/channels/ReadableByteChannel;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer size must be > 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(ZLjava/lang/Object;)V

    invoke-static {p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/d;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/ReadableByteChannel;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/d;->b:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lcom/batch/android/y0/d;->b:Ljava/nio/channels/ReadableByteChannel;

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/d;->b:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/d;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/y0/d;->b:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/batch/android/y0/d;->c:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->slice(II)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method
