.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBk\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0014\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00120\u00110\u0010\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00110\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\n\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/text/AndroidParagraph;",
        "Landroidx/compose/ui/text/Paragraph;",
        "Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;",
        "paragraphIntrinsics",
        "",
        "maxLines",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "overflow",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "<init>",
        "(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "text",
        "Landroidx/compose/ui/text/TextStyle;",
        "style",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
        "annotations",
        "Landroidx/compose/ui/text/Placeholder;",
        "placeholders",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IIJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field public final b:I

.field public final c:J

.field public final d:Landroidx/compose/ui/text/android/TextLayout;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v4, p2

    move/from16 v11, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    move-wide/from16 v12, p4

    iput-wide v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->c:J

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v14, 0x1

    if-lt v4, v14, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "maxLines should be greater than 0"

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v15, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    const/16 v16, 0x0

    if-ne v11, v15, :cond_a

    iget-object v5, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v7, v5, Landroidx/compose/ui/text/SpanStyle;->h:J

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v3, v3, Landroidx/compose/ui/text/SpanStyle;->h:J

    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/unit/TextUnit;->d:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, v6, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    sget-object v4, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget v3, v6, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->g:I

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    sget v4, Landroidx/compose/ui/text/style/TextAlign;->f:I

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    goto :goto_2

    :cond_6
    move-object/from16 v3, v16

    :goto_2
    if-nez v3, :cond_7

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_7
    const-class v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-static {v3, v2}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-direct {v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan;-><init>()V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v14

    const/16 v6, 0x21

    invoke-interface {v3, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    move-object v2, v3

    :cond_9
    :goto_3
    move-object v9, v2

    goto :goto_4

    :cond_a
    const/16 p6, 0x0

    goto :goto_3

    :goto_4
    iput-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    iget-object v2, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    sget-object v4, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->c:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v17, 0x2

    if-ne v3, v4, :cond_b

    move-object v3, v1

    move v1, v6

    goto :goto_6

    :cond_b
    sget v4, Landroidx/compose/ui/text/style/TextAlign;->d:I

    if-ne v3, v4, :cond_c

    move-object v3, v1

    move v1, v5

    goto :goto_6

    :cond_c
    sget v4, Landroidx/compose/ui/text/style/TextAlign;->e:I

    if-ne v3, v4, :cond_d

    move-object v3, v1

    move/from16 v1, v17

    goto :goto_6

    :cond_d
    sget v4, Landroidx/compose/ui/text/style/TextAlign;->g:I

    if-ne v3, v4, :cond_e

    goto :goto_5

    :cond_e
    sget v4, Landroidx/compose/ui/text/style/TextAlign;->h:I

    if-ne v3, v4, :cond_f

    move-object v3, v1

    move v1, v14

    goto :goto_6

    :cond_f
    :goto_5
    move-object v3, v1

    move/from16 v1, p6

    :goto_6
    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    iget v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    sget v8, Landroidx/compose/ui/text/style/TextAlign;->f:I

    if-ne v4, v8, :cond_10

    move v4, v14

    goto :goto_7

    :cond_10
    move/from16 v4, p6

    :goto_7
    iget v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    sget-object v8, Landroidx/compose/ui/text/style/Hyphens;->b:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/Hyphens;->d:I

    move/from16 v18, v14

    const/16 v14, 0x20

    if-ne v2, v8, :cond_11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v14, :cond_12

    move/from16 v5, v17

    goto :goto_8

    :cond_11
    move/from16 v5, p6

    :cond_12
    :goto_8
    sget-object v2, Landroidx/compose/ui/text/style/LineBreak;->b:Landroidx/compose/ui/text/style/LineBreak$Companion;

    and-int/lit16 v2, v7, 0xff

    sget-object v8, Landroidx/compose/ui/text/style/LineBreak$Strategy;->a:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/LineBreak$Strategy;->b:I

    if-ne v2, v8, :cond_13

    goto :goto_9

    :cond_13
    sget v8, Landroidx/compose/ui/text/style/LineBreak$Strategy;->c:I

    if-ne v2, v8, :cond_14

    move v2, v6

    move/from16 v6, v18

    goto :goto_a

    :cond_14
    sget v8, Landroidx/compose/ui/text/style/LineBreak$Strategy;->d:I

    if-ne v2, v8, :cond_15

    move v2, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_15
    :goto_9
    move v2, v6

    move/from16 v6, p6

    :goto_a
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    sget-object v19, Landroidx/compose/ui/text/style/LineBreak$Strictness;->a:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->b:I

    if-ne v8, v2, :cond_16

    goto :goto_b

    :cond_16
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->c:I

    if-ne v8, v2, :cond_17

    move v2, v7

    move/from16 v7, v18

    goto :goto_c

    :cond_17
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->d:I

    if-ne v8, v2, :cond_18

    move v2, v7

    move/from16 v7, v17

    goto :goto_c

    :cond_18
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->e:I

    if-ne v8, v2, :cond_19

    move v2, v7

    const/4 v7, 0x3

    goto :goto_c

    :cond_19
    :goto_b
    move v2, v7

    move/from16 v7, p6

    :goto_c
    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    sget-object v8, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->a:Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->b:I

    if-ne v2, v8, :cond_1a

    goto :goto_d

    :cond_1a
    sget v8, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->c:I

    if-ne v2, v8, :cond_1b

    move/from16 v8, v18

    goto :goto_e

    :cond_1b
    :goto_d
    move/from16 v8, p6

    :goto_e
    if-ne v11, v15, :cond_1c

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_f
    move-object/from16 v21, v3

    move/from16 v20, v14

    move-object v3, v2

    move v2, v4

    :goto_10
    move/from16 v4, p2

    goto :goto_11

    :cond_1c
    sget v2, Landroidx/compose/ui/text/style/TextOverflow;->f:I

    if-ne v11, v2, :cond_1d

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_f

    :cond_1d
    sget v2, Landroidx/compose/ui/text/style/TextOverflow;->e:I

    if-ne v11, v2, :cond_1e

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_f

    :cond_1e
    move-object/from16 v21, v3

    move v2, v4

    move/from16 v20, v14

    move-object/from16 v3, v16

    goto :goto_10

    :goto_11
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->y(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v14

    iget-object v0, v14, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v1

    const/16 v1, 0x23

    if-ge v4, v1, :cond_1f

    iget-object v1, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-nez v1, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v1, v19

    goto :goto_14

    :cond_20
    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->e:I

    if-ne v11, v1, :cond_21

    :goto_12
    const/4 v1, 0x0

    goto :goto_13

    :cond_21
    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->f:I

    if-ne v11, v1, :cond_1f

    goto :goto_12

    :goto_13
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-interface {v9, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v9, v0, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v4, v9, v1

    const-string v1, "\u2026"

    aput-object v1, v9, v18

    aput-object v0, v9, v17

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v1, v19

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->y(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v14

    :goto_14
    iget v9, v14, Landroidx/compose/ui/text/android/TextLayout;->h:I

    if-ne v11, v15, :cond_26

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    move-result v10

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v11

    if-le v10, v11, :cond_26

    move/from16 v10, v18

    if-le v4, v10, :cond_26

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v9, :cond_23

    invoke-virtual {v14, v10}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v11

    int-to-float v12, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_22

    move v9, v10

    goto :goto_16

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_23
    :goto_16
    if-ltz v9, :cond_25

    iget v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    if-eq v9, v4, :cond_25

    const/4 v10, 0x1

    if-ge v9, v10, :cond_24

    const/4 v4, 0x1

    goto :goto_17

    :cond_24
    move v4, v9

    :goto_17
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->y(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v14

    :cond_25
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_18

    :cond_26
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    :goto_18
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-object/from16 v3, v21

    iget-object v2, v3, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->e()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v6, v6, v20

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, v1, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_28

    :cond_27
    move-object/from16 v1, v16

    goto :goto_19

    :cond_28
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/text/Spanned;

    const/4 v3, -0x1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v3, v2, :cond_27

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    :goto_19
    if-eqz v1, :cond_29

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v10, v10, v20

    and-long/2addr v5, v8

    or-long/2addr v5, v10

    iget-object v4, v4, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/MutableState;

    new-instance v7, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_29
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_2a

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto/16 :goto_28

    :cond_2a
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_34

    aget-object v6, v1, v5

    check-cast v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v9, v9, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    iget v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    if-lt v9, v10, :cond_2b

    const/4 v10, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v10, 0x0

    :goto_1c
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    if-lez v11, :cond_2c

    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v12, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    add-int/2addr v12, v11

    if-le v8, v12, :cond_2c

    const/4 v11, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v11, 0x0

    :goto_1d
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    move-result v12

    if-le v8, v12, :cond_2d

    const/4 v8, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v8, 0x0

    :goto_1e
    if-nez v11, :cond_2e

    if-nez v8, :cond_2e

    if-eqz v10, :cond_2f

    :cond_2e
    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_26

    :cond_2f
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v8, v8, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_30

    move v8, v10

    goto :goto_1f

    :cond_30
    const/4 v8, 0x0

    :goto_1f
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v11, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v11

    if-eqz v8, :cond_31

    if-nez v11, :cond_31

    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    const/4 v12, 0x0

    invoke-virtual {v8, v7, v12}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    move-result v8

    :goto_20
    int-to-float v8, v8

    add-float/2addr v8, v7

    goto :goto_22

    :cond_31
    const/4 v12, 0x0

    if-eqz v8, :cond_32

    if-eqz v11, :cond_32

    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v8, v7, v12}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    move-result v7

    :goto_21
    int-to-float v7, v7

    sub-float v7, v8, v7

    goto :goto_22

    :cond_32
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    if-eqz v11, :cond_33

    invoke-virtual {v8, v7, v12}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    move-result v7

    goto :goto_21

    :cond_33
    invoke-virtual {v8, v7, v12}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    move-result v8

    goto :goto_20

    :goto_22
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget v13, v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->h:I

    packed-switch v13, :pswitch_data_0

    const-string v0, "unexpected verticalAlignment"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    throw v16

    :pswitch_0
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v14, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v14, v13

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v13

    sub-int/2addr v14, v13

    div-int/lit8 v14, v14, 0x2

    int-to-float v13, v14

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result v9

    :goto_23
    add-float/2addr v9, v13

    goto :goto_25

    :pswitch_1
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v13, v13

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result v9

    add-float/2addr v9, v13

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v11

    :goto_24
    int-to-float v11, v11

    sub-float/2addr v9, v11

    goto :goto_25

    :pswitch_2
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v13, v13

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result v9

    goto :goto_23

    :pswitch_3
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v13

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v9

    add-float/2addr v9, v13

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    goto :goto_25

    :pswitch_4
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v11

    goto :goto_24

    :pswitch_5
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v9

    goto :goto_25

    :pswitch_6
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v11

    goto :goto_24

    :goto_25
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v11, v7, v9, v8, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_27

    :goto_26
    move-object/from16 v11, v16

    :goto_27
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b

    :cond_34
    move-object v1, v3

    :goto_28
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->f:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IIJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 1044
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v6, 0x0

    move v2, p5

    move v3, p6

    move-wide v4, p7

    move-object v1, v0

    move-object v0, p0

    .line 1045
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0
.end method

.method public final b(I)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result p0

    return p0
.end method

.method public final c(I)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "offset("

    const-string v2, ") is out of bounds [0,"

    invoke-static {p1, v1, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result p0

    invoke-direct {v1, v0, v2, v0, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public final d(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v2, v1, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(J)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->z(Landroidx/compose/ui/graphics/Canvas;)V

    iget-object p0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    return-void
.end method

.method public final e(I)J
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->k()Landroidx/compose/ui/text/android/selection/WordIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    move v0, p1

    :goto_0
    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    if-ne v0, v1, :cond_7

    move v0, p1

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    move v2, p1

    :goto_3
    if-eq v2, v1, :cond_e

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    move-result v2

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->d(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move v2, p1

    goto :goto_6

    :cond_b
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    move-result p0

    :goto_5
    move v2, p0

    goto :goto_6

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    move-result p0

    goto :goto_5

    :cond_d
    move v2, v1

    :cond_e
    :goto_6
    if-ne v2, v1, :cond_f

    goto :goto_7

    :cond_f
    move p1, v2

    :goto_7
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final f()F
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result p0

    return p0
.end method

.method public final g(J)I
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    iget v2, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->c(I)F

    move-result p0

    mul-float/2addr p0, v1

    add-float/2addr p0, p1

    invoke-virtual {p2, v0, p0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method public final getHeight()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getWidth()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->c:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final h(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public final i(IZ)I
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->b:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object p0

    iget-object p2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->a:Landroid/text/Layout;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->f(II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    move-result p0

    return p0
.end method

.method public final j(I)F
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->l:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final k(I)F
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final l(F)I
    .locals 1

    float-to-int p1, p1

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method public final m(II)Landroidx/compose/ui/graphics/AndroidPath;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ") or end("

    const-string v2, ") is out of range [0.."

    const-string v3, "start("

    invoke-static {p1, p2, v3, v1, v2}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], or start > end!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1, p1, p2, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Path;->offset(FF)V

    :cond_1
    new-instance p0, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    return-object p0
.end method

.method public final n(IZ)F
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result p0

    return p0
.end method

.method public final o(I)F
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final p(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v2, v1, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    sget-object v5, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v1, p2, v3, v4, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move/from16 p2, p7

    invoke-virtual {v1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/text/AndroidParagraph;->z(Landroidx/compose/ui/graphics/Canvas;)V

    iget-object p0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    return-void
.end method

.method public final q(J[FI)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, v0, p1, p4, p3}, Landroidx/compose/ui/text/android/TextLayout;->a(III[F)V

    return-void
.end method

.method public final r()F
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    move-result p0

    return p0
.end method

.method public final s(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    return p0
.end method

.method public final t(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 10

    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/TextGranularity;->b:I

    if-ne p2, v0, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v8

    :goto_1
    new-instance v6, Lc;

    const/4 v0, 0x5

    invoke-direct {v6, p3, v0}, Lc;-><init>(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x22

    if-lt p0, p3, :cond_2

    invoke-static {v0, v4, p2, v6}, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->a(Landroidx/compose/ui/text/android/TextLayout;Landroid/graphics/RectF;ILc;)[I

    move-result-object p0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object v2

    if-ne p2, p1, :cond_3

    new-instance p0, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->k()Landroidx/compose/ui/text/android/selection/WordIterator;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V

    move-object v5, p0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iget-object p2, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    new-instance p3, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;

    invoke-direct {p3, p0, p2}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    move-object v5, p3

    :goto_2
    iget p0, v4, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    iget p2, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    add-int/lit8 p0, p0, 0x1

    iget p2, v0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    if-lt p0, p2, :cond_4

    goto :goto_5

    :cond_4
    move v3, p0

    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    if-nez p0, :cond_5

    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Lc;Z)I

    move-result p2

    :goto_3
    move p3, v3

    const/4 v9, -0x1

    if-ne p2, v9, :cond_6

    if-ge p3, p0, :cond_6

    add-int/lit8 v3, p3, 0x1

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Lc;Z)I

    move-result p2

    goto :goto_3

    :cond_6
    if-ne p2, v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    move v3, p0

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Lc;Z)I

    move-result p0

    :goto_4
    if-ne p0, v9, :cond_8

    if-ge p3, v3, :cond_8

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Lc;Z)I

    move-result p0

    goto :goto_4

    :cond_8
    if-ne p0, v9, :cond_9

    :goto_5
    const/4 p0, 0x0

    goto :goto_6

    :cond_9
    add-int/2addr p2, p1

    invoke-interface {v5, p2}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->b(I)I

    move-result p2

    sub-int/2addr p0, p1

    invoke-interface {v5, p0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->c(I)I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    :goto_6
    if-nez p0, :cond_a

    sget-object p0, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/text/TextRange;->c:J

    return-wide p0

    :cond_a
    aget p2, p0, v8

    aget p0, p0, p1

    invoke-static {p2, p0}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final u(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0
.end method

.method public final v(I)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result p0

    return p0
.end method

.method public final w(I)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "offset("

    const-string v4, ") is out of bounds [0,"

    invoke-static {p1, v3, v4}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v1, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result p0

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result p0

    :goto_2
    move v6, v1

    move v1, p0

    move p0, v6

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->i(IZ)F

    move-result p0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->j(IZ)F

    move-result p0

    :goto_3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v4, p0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p0
.end method

.method public final x()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->f:Ljava/util/List;

    return-object p0
.end method

.method public final y(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/text/PlatformTextStyle;->b:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/compose/ui/text/android/TextLayout;

    const v20, 0x30080

    const/16 v21, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v4, p1

    move/from16 v16, p2

    move-object/from16 v5, p3

    move/from16 v11, p4

    move/from16 v15, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v19, v1

    move-object/from16 v1, p9

    invoke-direct/range {v0 .. v21}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final z(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 5

    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result p0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    int-to-float v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    invoke-direct {v3}, Landroidx/compose/ui/text/android/TextAndroidCanvas;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    iput-object p1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    if-eqz p0, :cond_4

    const/high16 v1, -0x40800000    # -1.0f

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/ui/text/android/TextLayout;->e:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    throw p0
.end method
