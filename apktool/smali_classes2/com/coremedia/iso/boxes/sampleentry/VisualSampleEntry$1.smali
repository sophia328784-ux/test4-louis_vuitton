.class Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/DataSource;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/googlecode/mp4parser/DataSource;


# direct methods
.method public constructor <init>(JLcom/googlecode/mp4parser/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->b:J

    iput-object p3, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final f(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 0

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface/range {p0 .. p5}, Lcom/googlecode/mp4parser/DataSource;->f(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final position()J
    .locals 2

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p0}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public final position(J)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p0, p1, p2}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 7

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->b:J

    cmp-long p0, v3, v1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v5

    sub-long v5, v3, v5

    cmp-long p0, v1, v5

    if-lez p0, :cond_1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->a(J)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0

    :cond_1
    invoke-interface {v0, p1}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final s1(JJ)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/DataSource;->s1(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final size()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry$1;->b:J

    return-wide v0
.end method
