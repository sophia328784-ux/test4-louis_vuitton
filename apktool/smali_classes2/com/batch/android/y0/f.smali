.class public Lcom/batch/android/y0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/g;


# instance fields
.field private b:Ljava/io/InputStream;

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/batch/android/y0/f;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcom/batch/android/y0/f;->b:Ljava/io/InputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/batch/android/y0/f;->c:[B

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/batch/android/y0/g;
    .locals 1

    const-string v0, "InputStream is null"

    invoke-static {p0, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/batch/android/y0/d;

    invoke-direct {p0, v0}, Lcom/batch/android/y0/d;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/batch/android/y0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/y0/f;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/f;->b:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/batch/android/y0/f;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/y0/f;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/y0/f;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/batch/android/y0/f;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/y0/f;->c:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method
