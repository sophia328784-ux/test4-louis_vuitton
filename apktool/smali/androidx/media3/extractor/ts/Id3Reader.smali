.class public final Landroidx/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public c:Landroidx/media3/extractor/TrackOutput;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->e:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v4, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget-object v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v7, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    invoke-static {v3, v4, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v3, 0x49

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v3, 0x44

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v3, 0x33

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->f:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Discarding invalid ID3 tag"

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->f:I

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0, p1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->e:J

    return-void
.end method

.method public final d(Z)V
    .locals 8

    iget-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->f:I

    if-eqz p1, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->c:Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->e:J

    iget v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->c:Landroidx/media3/extractor/TrackOutput;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object p2, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/extractor/ts/Id3Reader;->a:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string p0, "application/id3"

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->d:Z

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Id3Reader;->e:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->f:I

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->g:I

    return-void
.end method
