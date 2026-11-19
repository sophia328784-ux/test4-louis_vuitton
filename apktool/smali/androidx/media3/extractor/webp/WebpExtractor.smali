.class public final Landroidx/media3/extractor/webp/WebpExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/extractor/SingleSampleExtractor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v1, -0x1

    const-string v2, "image/webp"

    invoke-direct {v0, v1, v1, v2}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->b:Landroidx/media3/extractor/SingleSampleExtractor;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->b:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->a(JJ)V

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->b:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7

    iget-object p0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v3

    const-wide/32 v5, 0x52494646

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v2, v2, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide p0

    const-wide/32 v0, 0x57454250

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/webp/WebpExtractor;->b:Landroidx/media3/extractor/SingleSampleExtractor;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
