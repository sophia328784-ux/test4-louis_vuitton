.class final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownSubtitlesExtractor"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->a:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->a:Landroidx/media3/common/Format;

    invoke-virtual {p0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v1, "text/x-unknown"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iput-object p0, p1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 0

    const p0, 0x7fffffff

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->l(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
