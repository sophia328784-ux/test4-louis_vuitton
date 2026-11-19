.class public abstract Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder<",
        "Landroidx/media3/extractor/text/SubtitleInputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleDecoderException;",
        ">;",
        "Landroidx/media3/extractor/text/SubtitleDecoder;"
    }
.end annotation


# virtual methods
.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final g()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 0

    new-instance p0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    return-object p0
.end method

.method public final h()Landroidx/media3/decoder/DecoderOutputBuffer;
    .locals 1

    new-instance v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;-><init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 1

    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v0, "Unexpected decode error"

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final j(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/DecoderOutputBuffer;Z)Landroidx/media3/decoder/DecoderException;
    .locals 4

    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    check-cast p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    :try_start_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0, v1, p3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->n(I[BZ)Landroidx/media3/extractor/text/Subtitle;

    move-result-object p0

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v2, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->k:J

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderOutputBuffer;->c:J

    iput-object p0, p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->e:Landroidx/media3/extractor/text/Subtitle;

    const-wide p0, 0x7fffffffffffffffL

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->f:J

    const/4 p0, 0x0

    iput-boolean p0, p2, Landroidx/media3/decoder/DecoderOutputBuffer;->d:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method public abstract n(I[BZ)Landroidx/media3/extractor/text/Subtitle;
.end method
