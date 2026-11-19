.class final Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# instance fields
.field public final n:Landroidx/media3/extractor/text/SubtitleParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/extractor/text/SubtitleParser;)V
    .locals 4

    const/4 p1, 0x2

    new-array v0, p1, [Landroidx/media3/extractor/text/SubtitleInputBuffer;

    new-array p1, p1, [Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-direct {p0, v0, p1}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/DecoderOutputBuffer;)V

    iget p1, p0, Landroidx/media3/decoder/SimpleDecoder;->g:I

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoder;->e:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroidx/media3/decoder/DecoderInputBuffer;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->n:Landroidx/media3/extractor/text/SubtitleParser;

    return-void
.end method


# virtual methods
.method public final n(I[BZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->n:Landroidx/media3/extractor/text/SubtitleParser;

    if-eqz p3, :cond_0

    invoke-interface {p0}, Landroidx/media3/extractor/text/SubtitleParser;->reset()V

    :cond_0
    const/4 p3, 0x0

    invoke-interface {p0, p3, p1, p2}, Landroidx/media3/extractor/text/SubtitleParser;->b(II[B)Landroidx/media3/extractor/text/Subtitle;

    move-result-object p0

    return-object p0
.end method
