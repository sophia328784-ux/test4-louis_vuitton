.class public final Landroidx/media3/extractor/text/pgs/PgsParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    return-void
.end method


# virtual methods
.method public final a([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v4, p1

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    move-result v2

    const/16 v4, 0x78

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->I(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v2, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v3, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->b:[I

    iget-object v4, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->a:Landroidx/media3/common/util/ParsableByteArray;

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iput-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_15

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v9

    iget v10, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/2addr v10, v9

    if-le v10, v5, :cond_2

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    move-object v12, v2

    move-object/from16 p0, v6

    const/4 v11, 0x0

    move v6, v1

    goto/16 :goto_d

    :cond_2
    const/16 v5, 0x80

    if-eq v8, v5, :cond_c

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    move-object v12, v2

    move-object/from16 p0, v6

    goto/16 :goto_4

    :pswitch_0
    const/16 v5, 0x13

    if-ge v9, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    goto :goto_1

    :pswitch_1
    const/4 v8, 0x4

    if-ge v9, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    and-int/2addr v5, v7

    if-eqz v5, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    move v12, v1

    :goto_2
    add-int/lit8 v5, v9, -0x4

    if-eqz v12, :cond_9

    const/4 v7, 0x7

    if-ge v5, v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v5

    if-ge v5, v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v7

    iput v7, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v7

    iput v7, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    add-int/lit8 v5, v9, -0xb

    :cond_9
    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v8, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-ge v7, v8, :cond_3

    if-lez v5, :cond_3

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v8, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v3, v7, v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    add-int/2addr v7, v5

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_1

    :pswitch_2
    rem-int/lit8 v7, v9, 0x5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v9, v9, 0x5

    move v7, v1

    :goto_3
    if-ge v7, v9, :cond_b

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v14

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v15

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v16

    move/from16 p1, v5

    move-object/from16 p0, v6

    int-to-double v5, v13

    add-int/lit8 v14, v14, -0x80

    int-to-double v13, v14

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v13

    add-double v11, v17, v5

    double-to-int v11, v11

    add-int/lit8 v15, v15, -0x80

    move-object v12, v2

    int-to-double v1, v15

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v17, v17, v1

    sub-double v17, v5, v17

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v13, v13, v19

    sub-double v13, v17, v13

    double-to-int v13, v13

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v1, v14

    add-double/2addr v1, v5

    double-to-int v1, v1

    shl-int/lit8 v2, v16, 0x18

    const/16 v5, 0xff

    const/4 v6, 0x0

    invoke-static {v11, v6, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v2, v11

    invoke-static {v13, v6, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v2, v11

    invoke-static {v1, v6, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, v12, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    move-object/from16 v6, p0

    move/from16 v5, p1

    move-object v2, v12

    goto :goto_3

    :cond_b
    move-object v12, v2

    move-object/from16 p0, v6

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    :goto_4
    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_c
    move-object v12, v2

    move-object/from16 p0, v6

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    if-eqz v1, :cond_d

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    if-eqz v1, :cond_d

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    if-eqz v1, :cond_d

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    if-eqz v1, :cond_d

    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-eqz v1, :cond_d

    iget v2, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ne v2, v1, :cond_d

    iget-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_e
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    const/4 v5, 0x0

    :cond_f
    :goto_5
    if-ge v5, v1, :cond_13

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v7, v5, 0x1

    aget v6, v12, v6

    aput v6, v2, v5

    :goto_6
    move v5, v7

    goto :goto_5

    :cond_10
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    if-eqz v6, :cond_f

    and-int/lit8 v7, v6, 0x40

    if-nez v7, :cond_11

    and-int/lit8 v7, v6, 0x3f

    goto :goto_7

    :cond_11
    and-int/lit8 v7, v6, 0x3f

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    or-int/2addr v7, v8

    :goto_7
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_12

    const/4 v6, 0x0

    aget v8, v12, v6

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    aget v8, v12, v6

    :goto_8
    add-int/2addr v7, v5

    invoke-static {v2, v5, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    :cond_13
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    iget v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v2}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object v1, v2, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    int-to-float v1, v1

    iget v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->h:F

    const/4 v6, 0x0

    iput v6, v2, Landroidx/media3/common/text/Cue$Builder;->i:I

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    int-to-float v1, v1

    iget v7, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput v6, v2, Landroidx/media3/common/text/Cue$Builder;->f:I

    iput v6, v2, Landroidx/media3/common/text/Cue$Builder;->g:I

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->l:F

    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->m:F

    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v11

    :goto_9
    const/4 v6, 0x0

    goto :goto_b

    :goto_a
    move-object v11, v1

    goto :goto_9

    :goto_b
    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iput-boolean v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    :goto_c
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :goto_d
    move-object/from16 v1, p0

    if-eqz v11, :cond_14

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v2, v6

    move-object v6, v1

    move v1, v2

    move-object v2, v12

    goto/16 :goto_0

    :cond_15
    move-object v1, v6

    new-instance v5, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
