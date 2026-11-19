.class public final Landroidx/media3/extractor/Id3Peeker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/Id3Peeker;->a:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    move v4, v0

    :cond_0
    rem-int/lit8 v5, v4, 0xa

    add-int/lit8 v6, v5, 0xa

    iget-object v7, p0, Landroidx/media3/extractor/Id3Peeker;->a:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0xa

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v10, 0x9

    invoke-static {v9, v8, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-nez v4, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_1
    :try_start_0
    iget-object v10, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    sub-int v11, v6, v9

    invoke-interface {p1, v11, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_7

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v5

    iget v9, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v9, v6

    iput v9, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const v6, 0x494433

    if-ne v5, v6, :cond_4

    const/4 v4, 0x6

    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    if-nez v3, :cond_3

    new-array v3, v5, [B

    iget-object v6, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v6, v9, v3, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v8, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    new-instance v4, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v4, p2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>(Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)V

    invoke-virtual {v4, v5, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->c(I[B)Landroidx/media3/common/Metadata;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    :goto_2
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->i()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/MpegAudioUtil;->a(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    const/16 v5, 0x14

    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->c(I)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    if-le v4, p3, :cond_0

    goto :goto_3

    :cond_7
    iget p0, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget p1, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-static {p0, p1}, Ld20;->b(II)V

    return-object v1

    :catch_0
    :goto_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    return-object v3
.end method
