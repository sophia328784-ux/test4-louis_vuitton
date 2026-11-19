.class final Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    sub-long/2addr v1, v4

    const-wide/16 v6, 0x4e20

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v1, v3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    const/4 v1, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v1

    move-wide v10, v6

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_d

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-static {v12, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    move-result v8

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v2}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v1, v14, v6

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v14

    cmp-long v1, v14, p2

    if-lez v1, :cond_2

    cmp-long v0, v10, v6

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, v14

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0

    :cond_1
    int-to-long v0, v3

    add-long v10, v4, v0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_2
    move-wide v10, v14

    const-wide/32 v14, 0x186a0

    add-long/2addr v14, v10

    cmp-long v1, v14, p2

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-lez v1, :cond_3

    int-to-long v0, v3

    add-long v10, v4, v0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_3
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_4

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_2

    :cond_4
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v14

    if-ge v14, v8, :cond_5

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    if-ge v8, v9, :cond_6

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_2

    :cond_6
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v8

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v14

    if-ge v14, v8, :cond_7

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_8
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    if-lt v8, v9, :cond_c

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    move-result v8

    if-eq v8, v13, :cond_c

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_9

    goto :goto_2

    :cond_9
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v12, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    const/4 v14, 0x2

    if-ge v8, v14, :cond_b

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v8

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_1

    :cond_c
    :goto_2
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    goto/16 :goto_0

    :cond_d
    cmp-long v0, v10, v6

    if-eqz v0, :cond_e

    int-to-long v0, v1

    add-long v12, v4, v0

    new-instance v8, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v9, -0x2

    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v8

    :cond_e
    sget-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->d:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    iget-object p0, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    return-void
.end method
