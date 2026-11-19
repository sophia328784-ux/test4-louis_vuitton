.class public final Landroidx/media3/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/common/DataReader;

.field public final c:J

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.extractor"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/DataReader;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->b:Landroidx/media3/common/DataReader;

    iput-wide p2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    iput-wide p4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->a:[B

    return-void
.end method


# virtual methods
.method public final b(II[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    return-void
.end method

.method public final d(II[B)I
    .locals 7

    invoke-virtual {p0, p2}, Landroidx/media3/extractor/DefaultExtractorInput;->o(I)V

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    return p2

    :cond_0
    iget p2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    add-int/2addr p2, p0

    iput p2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v5, p2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    iget-object p2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    iget v0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    invoke-static {p2, v0, p3, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    add-int/2addr p1, p0

    iput p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    return p0
.end method

.method public final e(IZ)Z
    .locals 7

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->q(I)V

    move v6, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v6, p1, :cond_0

    if-eq v6, v0, :cond_0

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->a:[B

    array-length v0, v4

    add-int/2addr v0, v6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    neg-int v3, v6

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result v6

    goto :goto_0

    :cond_0
    move-object v1, p0

    if-eq v6, v0, :cond_1

    iget-wide p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    int-to-long v2, v6

    add-long/2addr p0, v2

    iput-wide p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    :cond_1
    if-eq v6, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    return-void
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->c:J

    return-wide v0
.end method

.method public final getPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    return-wide v0
.end method

.method public final h(ZII[B)Z
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    invoke-static {v2, v1, p4, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->q(I)V

    :goto_0
    move v7, v0

    :goto_1
    const/4 v0, -0x1

    if-ge v7, p3, :cond_1

    if-eq v7, v0, :cond_1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result v7

    goto :goto_1

    :cond_1
    move-object v2, p0

    if-eq v7, v0, :cond_2

    iget-wide p0, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    int-to-long p2, v7

    add-long/2addr p0, p2

    iput-wide p0, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    :cond_2
    if-eq v7, v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final i(ZII[B)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    sub-int/2addr p0, p3

    invoke-static {p1, p0, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final j()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final k(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    return-void
.end method

.method public final l(I)I
    .locals 7

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->q(I)V

    if-nez v0, :cond_0

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->a:[B

    array-length v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const/4 p0, -0x1

    if-eq v0, p0, :cond_1

    iget-wide p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    int-to-long v2, v0

    add-long/2addr p0, v2

    iput-wide p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    :cond_1
    return v0
.end method

.method public final m(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->e(IZ)Z

    return-void
.end method

.method public final n(IZ)Z
    .locals 7

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->o(I)V

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    sub-int/2addr v0, v1

    move v6, v0

    :goto_0
    if-ge v6, p1, :cond_1

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    move-object v1, p0

    move v5, p1

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result v6

    const/4 p0, -0x1

    if-ne v6, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    add-int/2addr p0, v6

    iput p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    move-object p0, v1

    move p2, v2

    move p1, v5

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v5, p1

    iget p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    add-int/2addr p0, v5

    iput p0, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    const/4 p0, 0x1

    return p0
.end method

.method public final o(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/Util;->j(III)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    :cond_0
    return-void
.end method

.method public final p(ZI[BII)I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/2addr p2, p5

    sub-int/2addr p4, p5

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->b:Landroidx/media3/common/DataReader;

    invoke-interface {p0, p3, p2, p4}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_1

    if-nez p5, :cond_0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/2addr p5, p0

    return p5

    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public final q(I)V
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    return-void
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->e:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->q(I)V

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;->p(ZI[BII)I

    move-result v1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    const/4 p0, -0x1

    if-eq v1, p0, :cond_2

    iget-wide p0, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    int-to-long p2, v1

    add-long/2addr p0, p2

    iput-wide p0, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    :cond_2
    return v1
.end method

.method public final readFully([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->h(ZII[B)Z

    return-void
.end method
