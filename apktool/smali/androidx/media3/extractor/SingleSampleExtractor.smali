.class public final Landroidx/media3/extractor/SingleSampleExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->a:I

    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->b:I

    iput-object p3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->c:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v0, Landroidx/media3/extractor/SingleSampleSeekMap;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SingleSampleSeekMap;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->b:I

    iget p0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->a:I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    if-eq v2, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p1, v1, v1, v2, v4}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result p1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 10

    iget p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    if-ne p2, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lr81;->b()V

    return v0

    :cond_1
    iget-object p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x400

    invoke-interface {p2, p1, v4, v3}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    if-ne p1, v1, :cond_2

    iput v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    iget-object v3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    iget v7, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    return v0

    :cond_2
    iget p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
