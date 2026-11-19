.class public final Landroidx/media3/extractor/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:F

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->c:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d:I

    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v5, v0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v0, "Serif"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->e:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->g:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->b:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->f:F

    return-void

    :cond_3
    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->f:F

    return-void

    :cond_4
    iput v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->c:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d:I

    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->e:Ljava/lang/String;

    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->b:Z

    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->f:F

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->g:I

    return-void
.end method

.method public static d(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    add-int v3, v1, p3

    iget-object v4, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v5, p1

    invoke-virtual {v4, v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_2

    :cond_1
    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->J()Ljava/nio/charset/Charset;

    move-result-object v8

    iget v9, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v9, v7

    sub-int/2addr v1, v9

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {v4, v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v8, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v8}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/high16 v14, 0xff0000

    iget v10, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    iget v10, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d:I

    const/4 v11, -0x1

    invoke-static/range {v9 .. v14}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d(Landroid/text/SpannableStringBuilder;IIIII)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-string v7, "sans-serif"

    iget-object v8, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->e:Ljava/lang/String;

    if-eq v8, v7, :cond_4

    new-instance v7, Landroid/text/style/TypefaceSpan;

    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v8, 0xff0021

    invoke-virtual {v9, v7, v5, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->f:F

    :goto_3
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_c

    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    const v11, 0x7374796c

    if-ne v10, v11, :cond_9

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v10

    if-lt v10, v6, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move v10, v5

    :goto_4
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v15

    move v10, v5

    :goto_5
    if-ge v10, v15, :cond_b

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v11

    const/16 v12, 0xc

    if-lt v11, v12, :cond_6

    move v11, v3

    goto :goto_6

    :cond_6
    move v11, v5

    :goto_6
    invoke-static {v11}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v12

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v11

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move v13, v10

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v10

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v16

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const-string v3, ")."

    if-le v11, v14, :cond_7

    const-string v14, "Truncating styl end ("

    const-string v5, ") to cueText.length() ("

    invoke-static {v11, v14, v5}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    :cond_7
    if-lt v12, v11, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring styl with start ("

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") >= end ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move v5, v13

    goto :goto_7

    :cond_8
    move v5, v13

    move v13, v11

    iget v11, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->c:I

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v11, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d:I

    move/from16 v10, v16

    invoke-static/range {v9 .. v14}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->d(Landroid/text/SpannableStringBuilder;IIIII)V

    :goto_7
    add-int/lit8 v10, v5, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const v3, 0x74626f78

    if-ne v10, v3, :cond_b

    iget-boolean v3, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->b:Z

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-lt v1, v6, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->g:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/4 v3, 0x0

    const v5, 0x3f733333    # 0.95f

    invoke-static {v1, v3, v5}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result v1

    :cond_b
    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_c
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object v9, v0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->e:F

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->f:I

    iput v1, v0, Landroidx/media3/common/text/Cue$Builder;->g:I

    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v0

    new-instance v3, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
