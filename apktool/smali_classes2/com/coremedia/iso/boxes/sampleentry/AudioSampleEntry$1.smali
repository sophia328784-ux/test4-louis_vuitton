.class Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# instance fields
.field public final synthetic b:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

.field public final synthetic c:J

.field public final synthetic d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;JLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->b:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    iput-wide p2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->c:J

    iput-object p4, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->d:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final c(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public final d(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/AbstractBoxParser;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NotImplemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/googlecode/mp4parser/BasicContainer;)V
    .locals 1

    sget v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->y:I

    iget-object p0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->b:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "you cannot diswown this special box"

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry$1;->c:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    const-string p0, "----"

    return-object p0
.end method
