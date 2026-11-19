.class Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->g:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->g:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Landroidx/media3/decoder/SimpleDecoder;->m(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
