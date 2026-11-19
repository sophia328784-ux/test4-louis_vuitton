.class public final Landroidx/media3/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Landroidx/media3/common/Format;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->a:Landroidx/media3/common/util/ParsableBitArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->c:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->d:I

    iput-object p3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->m:I

    iget v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0, p1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->m:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    iget-wide v6, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    iget v9, p0, Landroidx/media3/extractor/ts/Ac4Reader;->m:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    iput v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    iget v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    invoke-virtual {p1, v5, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->a:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->c(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v0

    iget v3, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->a:I

    iget-object v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->l:Landroidx/media3/common/Format;

    const-string v7, "audio/ac4"

    if-eqz v5, :cond_4

    iget v8, v5, Landroidx/media3/common/Format;->G:I

    if-ne v2, v8, :cond_4

    iget v8, v5, Landroidx/media3/common/Format;->H:I

    if-ne v3, v8, :cond_4

    iget-object v5, v5, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->f:Ljava/lang/String;

    iput-object v8, v5, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->e:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v2, v5, Landroidx/media3/common/Format$Builder;->F:I

    iput v3, v5, Landroidx/media3/common/Format$Builder;->G:I

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->c:Ljava/lang/String;

    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->d:I

    iput v3, v5, Landroidx/media3/common/Format$Builder;->f:I

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->l:Landroidx/media3/common/Format;

    iget-object v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v3}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_5
    iget v3, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->b:I

    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->m:I

    iget v0, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->c:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->l:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->H:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Landroidx/media3/extractor/ts/Ac4Reader;->k:J

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v6, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iput v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->j:Z

    const/16 v5, 0xac

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->j:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    if-ne v0, v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v4

    :goto_4
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->j:Z

    const/16 v5, 0x40

    const/16 v6, 0x41

    if-eq v0, v5, :cond_a

    if-ne v0, v6, :cond_6

    :cond_a
    if-ne v0, v6, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v4

    :goto_5
    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    iget-object v1, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v7, -0x54

    aput-byte v7, v1, v4

    if-eqz v0, :cond_c

    move v5, v6

    :cond_c
    int-to-byte v0, v5

    aput-byte v0, v1, v3

    iput v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->h:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->i:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->g:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->n:J

    return-void
.end method
