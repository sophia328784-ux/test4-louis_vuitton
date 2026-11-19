.class Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iceteck/silicompressorr/videocompression/MP4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field public b:J

.field public c:J


# virtual methods
.method public final c(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    add-long/2addr v3, v1

    const-wide v5, 0x100000000L

    cmp-long p0, v3, v5

    if-gez p0, :cond_0

    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    const-string v3, "mdat"

    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->n(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-gez p0, :cond_1

    const/16 p0, 0x8

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public final d(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/AbstractBoxParser;)V
    .locals 0

    return-void
.end method

.method public final e(Lcom/googlecode/mp4parser/BasicContainer;)V
    .locals 0

    return-void
.end method

.method public final getSize()J
    .locals 4

    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    const-string p0, "mdat"

    return-object p0
.end method
