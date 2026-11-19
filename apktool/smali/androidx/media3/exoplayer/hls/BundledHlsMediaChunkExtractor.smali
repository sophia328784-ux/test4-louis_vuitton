.class public final Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;


# static fields
.field public static final f:Landroidx/media3/extractor/PositionHolder;


# instance fields
.field public final a:Landroidx/media3/extractor/Extractor;

.field public final b:Landroidx/media3/common/Format;

.field public final c:Landroidx/media3/common/util/TimestampAdjuster;

.field public final d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->f:Landroidx/media3/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 6

    .line 14
    sget-object v4, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->b:Landroidx/media3/common/Format;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->c:Landroidx/media3/common/util/TimestampAdjuster;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->e:Z

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public final c(Landroidx/media3/extractor/DefaultExtractorInput;)Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    sget-object v0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->f:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {p0, p1, v0}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1, v0, v1}, Landroidx/media3/extractor/Extractor;->a(JJ)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->c()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    instance-of v0, p0, Landroidx/media3/extractor/ts/TsExtractor;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->e()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->c()Landroidx/media3/extractor/Extractor;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    instance-of v1, v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->b:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->e:Z

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->c:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    instance-of v1, v0, Landroidx/media3/extractor/ts/AdtsExtractor;

    if-eqz v1, :cond_2

    new-instance v0, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    if-eqz v1, :cond_3

    new-instance v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    if-eqz v1, :cond_4

    new-instance v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_5

    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    goto :goto_1

    :goto_2
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v6, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->e:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->b:Landroidx/media3/common/Format;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->c:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected extractor type for recreation: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_6
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Can\'t recreate wrapped extractors. Outer type: %s"

    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3
.end method
