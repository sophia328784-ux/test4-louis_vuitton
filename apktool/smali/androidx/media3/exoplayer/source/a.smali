.class public final synthetic Landroidx/media3/exoplayer/source/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

.field public final synthetic c:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final j()[Landroidx/media3/extractor/Extractor;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/common/Format;

    invoke-interface {v1, p0}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->b(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/extractor/text/SubtitleExtractor;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p0}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->c(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Landroidx/media3/extractor/text/SubtitleExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser;Landroidx/media3/common/Format;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Landroidx/media3/common/Format;)V

    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [Landroidx/media3/extractor/Extractor;

    const/4 v0, 0x0

    aput-object v1, p0, v0

    return-object p0
.end method
