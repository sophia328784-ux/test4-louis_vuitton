.class public Lcom/googlecode/mp4parser/AbstractContainerBox;
.super Lcom/googlecode/mp4parser/BasicContainer;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# instance fields
.field public final i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/BasicContainer;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/BasicContainer;->m(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public d(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/AbstractBoxParser;)V
    .locals 1

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->j:Z

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/AbstractContainerBox;->o(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V

    return-void
.end method

.method public final e(Lcom/googlecode/mp4parser/BasicContainer;)V
    .locals 0

    return-void
.end method

.method public getSize()J
    .locals 6

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->j()J

    move-result-wide v0

    iget-boolean p0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->j:Z

    if-nez p0, :cond_1

    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x10

    :goto_1
    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final n()Ljava/nio/ByteBuffer;
    .locals 15

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->j:Z

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getSize()J

    move-result-wide v11

    const-wide v13, 0x100000000L

    cmp-long v0, v11, v13

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v7, [B

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aget-byte v5, v7, v5

    aput-byte v5, v0, v6

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v9

    aput-byte v5, v0, v4

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v8

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getSize()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v9, v0, v8

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    aget-byte v5, v11, v5

    aput-byte v5, v0, v6

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v9

    aput-byte v5, v0, v4

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v8

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public final o(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V
    .locals 4

    iput-object p1, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->e:J

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->j:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    :cond_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/mp4parser/BasicContainer;->f:J

    iput-object p4, p0, Lcom/googlecode/mp4parser/BasicContainer;->b:Lcom/coremedia/iso/BoxParser;

    return-void
.end method
