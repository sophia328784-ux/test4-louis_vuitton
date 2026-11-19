.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u00c5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/TextLayout;",
        "",
        "",
        "charSequence",
        "",
        "width",
        "Landroid/text/TextPaint;",
        "textPaint",
        "",
        "alignment",
        "Landroid/text/TextUtils$TruncateAt;",
        "ellipsize",
        "textDirectionHeuristic",
        "lineSpacingMultiplier",
        "lineSpacingExtra",
        "",
        "includePadding",
        "fallbackLineSpacing",
        "maxLines",
        "breakStrategy",
        "lineBreakStyle",
        "lineBreakWordStyle",
        "hyphenationFrequency",
        "justificationMode",
        "",
        "leftIndents",
        "rightIndents",
        "Landroidx/compose/ui/text/android/LayoutIntrinsics;",
        "layoutIntrinsics",
        "<init>",
        "(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V",
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
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextUtils$TruncateAt;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public f:Landroidx/compose/ui/text/android/selection/WordIterator;

.field public final g:Landroid/text/Layout;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:F

.field public final m:Z

.field public final n:Landroid/graphics/Paint$FontMetricsInt;

.field public final o:I

.field public final p:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

.field public final q:Landroid/graphics/Rect;

.field public r:Landroidx/compose/ui/text/android/LayoutHelper;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v3, p4

    move/from16 v14, p9

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p3

    iput-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    move-object/from16 v7, p5

    iput-object v7, v0, Landroidx/compose/ui/text/android/TextLayout;->b:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->c:Z

    move/from16 v15, p10

    iput-boolean v15, v0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->q:Landroid/graphics/Rect;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v12

    sget-object v6, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->a:Landroid/text/Layout$Alignment;

    const/4 v13, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v13, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->b:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->a:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    instance-of v6, v2, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, v2

    check-cast v6, Landroid/text/Spanned;

    const/4 v8, -0x1

    const-class v9, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-interface {v6, v8, v5, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    if-ge v6, v5, :cond_5

    move v5, v13

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    const-string v6, "TextLayout:initLayout"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p19 .. p19}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a()Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v6, v13

    float-to-int v6, v6

    const/16 v13, 0x21

    if-eqz v8, :cond_9

    invoke-virtual/range {p19 .. p19}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    move-result v9

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_9

    if-nez v5, :cond_9

    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->m:Z

    if-ltz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "negative width"

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_2
    if-ltz v6, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "negative ellipsized width"

    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_8

    move-object v5, v8

    move v8, v6

    move-object v1, v2

    move-object v2, v4

    move v9, v15

    move-object v4, v3

    move v3, v6

    move/from16 v6, p9

    invoke-static/range {v1 .. v9}, Lxg;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    move-object v4, v3

    move v3, v6

    move-object v5, v8

    new-instance v1, Landroid/text/BoringLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v11, v3

    move-object/from16 v2, p1

    move-object/from16 v10, p5

    move/from16 v9, p9

    move-object v8, v5

    const/4 v15, 0x0

    move-object v5, v4

    move v4, v3

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v2, v1

    :goto_4
    move/from16 v8, p11

    move-object v6, v12

    move v1, v15

    goto :goto_5

    :cond_9
    move-object v4, v3

    move v3, v6

    const/4 v14, 0x1

    const/4 v15, 0x0

    iput-boolean v15, v0, Landroidx/compose/ui/text/android/TextLayout;->m:Z

    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v10, v1

    move-object/from16 v2, p1

    move-object/from16 v9, p5

    move/from16 v11, p7

    move/from16 v14, p9

    move/from16 v8, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v13, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object v7, v4

    move-object v6, v12

    move v1, v15

    move/from16 v12, p8

    move/from16 v15, p10

    move v4, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v21}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;

    move-result-object v3

    move-object v2, v3

    :goto_5
    iput-object v2, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v4, v3, -0x1

    if-ge v3, v8, :cond_b

    :cond_a
    move v13, v1

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    if-gtz v5, :cond_c

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v5, v7, :cond_a

    :cond_c
    const/4 v13, 0x1

    :goto_6
    iput-boolean v13, v0, Landroidx/compose/ui/text/android/TextLayout;->e:Z

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/Spanned;

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/text/Spanned;

    const-class v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-static {v5, v8}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_e

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/text/Spanned;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v5, v1, v9, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    :goto_8
    iput-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->p:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v5, :cond_10

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v8, :cond_10

    iget-boolean v9, v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->e:Z

    if-eqz v9, :cond_f

    iget v8, v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->h:I

    sget-object v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->d:I

    if-ne v8, v9, :cond_f

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    move v13, v1

    :goto_9
    move v10, v13

    goto :goto_a

    :cond_10
    move v10, v1

    :goto_a
    if-eqz v5, :cond_11

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v8, :cond_11

    iget-boolean v9, v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    if-eqz v9, :cond_11

    iget v8, v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->h:I

    sget-object v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->d:I

    if-ne v8, v9, :cond_11

    const/4 v13, 0x1

    goto :goto_b

    :cond_11
    move v13, v1

    :goto_b
    if-eqz v10, :cond_12

    if-eqz v13, :cond_12

    sget-wide v2, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    const-wide p2, 0xffffffffL

    const/16 p4, 0x20

    goto/16 :goto_15

    :cond_12
    sget-wide v14, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    if-nez p9, :cond_1b

    iget-boolean v12, v0, Landroidx/compose/ui/text/android/TextLayout;->m:Z

    if-eqz v12, :cond_14

    move-object v12, v2

    check-cast v12, Landroid/text/BoringLayout;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide p2, 0xffffffffL

    const/16 v8, 0x21

    if-lt v7, v8, :cond_13

    invoke-static {v12}, Landroidx/compose/ui/text/android/BoringLayoutFactory33;->b(Landroid/text/BoringLayout;)Z

    move-result v7

    goto :goto_c

    :cond_13
    move v7, v1

    goto :goto_c

    :cond_14
    const-wide p2, 0xffffffffL

    const/16 v8, 0x21

    sget-object v7, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    move-object v7, v2

    check-cast v7, Landroid/text/StaticLayout;

    sget-object v9, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_15

    invoke-static {v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->a(Landroid/text/StaticLayout;)Z

    move-result v7

    goto :goto_c

    :cond_15
    move/from16 v7, p10

    :goto_c
    if-eqz v7, :cond_16

    :goto_d
    const/16 p4, 0x20

    goto :goto_12

    :cond_16
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    invoke-static {v7, v8, v9, v12}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v12

    const/16 p4, 0x20

    iget v11, v9, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_17

    sub-int/2addr v12, v11

    :goto_e
    const/4 v11, 0x1

    goto :goto_f

    :cond_17
    invoke-virtual {v2}, Landroid/text/Layout;->getTopPadding()I

    move-result v12

    goto :goto_e

    :goto_f
    if-ne v3, v11, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-static {v7, v8, v3, v9}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v9

    :goto_10
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    if-le v7, v3, :cond_19

    sub-int/2addr v7, v3

    goto :goto_11

    :cond_19
    invoke-virtual {v2}, Landroid/text/Layout;->getBottomPadding()I

    move-result v7

    :goto_11
    if-nez v12, :cond_1a

    if-nez v7, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-static {v12, v7}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v14

    goto :goto_12

    :cond_1b
    const-wide p2, 0xffffffffL

    goto :goto_d

    :goto_12
    if-eqz v10, :cond_1c

    move v10, v1

    goto :goto_13

    :cond_1c
    shr-long v2, v14, p4

    long-to-int v10, v2

    :goto_13
    if-eqz v13, :cond_1d

    move v2, v1

    goto :goto_14

    :cond_1d
    and-long v2, v14, p2

    long-to-int v2, v2

    :goto_14
    invoke-static {v10, v2}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v2

    :goto_15
    if-eqz v5, :cond_22

    array-length v7, v5

    move v8, v1

    move v9, v8

    move v10, v9

    :goto_16
    if-ge v10, v7, :cond_20

    aget-object v11, v5, v10

    iget v12, v11, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:I

    if-gez v12, :cond_1e

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_1e
    iget v11, v11, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->n:I

    if-gez v11, :cond_1f

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_20
    if-nez v8, :cond_21

    if-nez v9, :cond_21

    sget-wide v7, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    goto :goto_17

    :cond_21
    invoke-static {v8, v9}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v7

    goto :goto_17

    :cond_22
    sget-wide v7, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    :goto_17
    shr-long v9, v2, p4

    long-to-int v5, v9

    shr-long v9, v7, p4

    long-to-int v9, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    and-long v2, v2, p2

    long-to-int v2, v2

    and-long v7, v7, p2

    long-to-int v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/ui/text/android/TextLayout;->j:I

    iget-object v7, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    iget-object v2, v0, Landroidx/compose/ui/text/android/TextLayout;->p:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v3, v0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    iget-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    if-ne v8, v5, :cond_25

    if-eqz v2, :cond_25

    array-length v5, v2

    if-nez v5, :cond_23

    goto/16 :goto_19

    :cond_23
    move-object v10, v6

    new-instance v6, Landroid/text/SpannableString;

    const-string v5, "\u200b"

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-eqz v3, :cond_24

    iget-boolean v3, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    if-eqz v3, :cond_24

    move v3, v1

    goto :goto_18

    :cond_24
    iget-boolean v3, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    :goto_18
    new-instance v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v9, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->b:F

    iget-boolean v11, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    iget v12, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->g:F

    iget v2, v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->h:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 p8, v2

    move/from16 p5, v3

    move/from16 p4, v5

    move-object/from16 p1, v8

    move/from16 p2, v9

    move/from16 p6, v11

    move/from16 p7, v12

    move-object/from16 p9, v13

    move/from16 p3, v14

    invoke-direct/range {p1 .. p9}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p1

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v8, 0x21

    invoke-virtual {v6, v2, v1, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v2, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    iget-boolean v2, v0, Landroidx/compose/ui/text/android/TextLayout;->c:Z

    iget-boolean v3, v0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    sget-object v11, Landroidx/compose/ui/text/android/LayoutCompat;->a:Landroid/text/Layout$Alignment;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v8, 0x7fffffff

    const v12, 0x7fffffff

    const v14, 0x7fffffff

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-static/range {v6 .. v25}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;

    move-result-object v2

    new-instance v7, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v7}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    iput v3, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v3

    iput v3, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    iput v3, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v7, 0x0

    :goto_1a
    if-eqz v7, :cond_26

    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v2

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v10, v1, v2

    goto :goto_1b

    :cond_26
    move v10, v1

    :goto_1b
    iput v10, v0, Landroidx/compose/ui/text/android/TextLayout;->o:I

    iput-object v7, v0, Landroidx/compose/ui/text/android/TextLayout;->n:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->a(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->b(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->l:F

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    move v9, v1

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    move v10, v1

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v11, v1

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v13, v1

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    const v1, 0x7fffffff

    move v14, v1

    goto :goto_7

    :cond_7
    move/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move v15, v2

    goto :goto_8

    :cond_8
    move/from16 v15, p12

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    move/from16 v16, v2

    goto :goto_9

    :cond_9
    move/from16 v16, p13

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_a

    move/from16 v17, v2

    goto :goto_a

    :cond_a
    move/from16 v17, p14

    :goto_a
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_b

    move/from16 v18, v2

    goto :goto_b

    :cond_b
    move/from16 v18, p15

    :goto_b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move/from16 v19, v2

    goto :goto_c

    :cond_c
    move/from16 v19, p16

    :goto_c
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v20, v3

    goto :goto_d

    :cond_d
    move-object/from16 v20, p17

    :goto_d
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v21, v3

    goto :goto_e

    :cond_e
    move-object/from16 v21, p18

    :goto_e
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 893
    new-instance v0, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct {v0, v4, v6, v9}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    move-object/from16 v22, v0

    :goto_f
    move-object/from16 v3, p0

    move/from16 v5, p2

    goto :goto_10

    :cond_f
    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v22, p19

    goto :goto_f

    .line 894
    :goto_10
    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    return-void
.end method


# virtual methods
.method public final a(III[F)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "startOffset must be > 0"

    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    if-ge v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "startOffset must be less than text length"

    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_1
    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "endOffset must be greater than startOffset"

    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_2
    if-gt v2, v5, :cond_3

    goto :goto_3

    :cond_3
    const-string v5, "endOffset must be smaller or equal to text length"

    invoke-static {v5}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_3
    sub-int v5, v2, v1

    mul-int/lit8 v5, v5, 0x4

    array-length v6, v3

    sub-int v6, v6, p3

    if-lt v6, v5, :cond_4

    goto :goto_4

    :cond_4
    const-string v5, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    invoke-static {v5}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    new-instance v7, Landroidx/compose/ui/text/android/HorizontalPositionCache;

    invoke-direct {v7, v0}, Landroidx/compose/ui/text/android/HorizontalPositionCache;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    if-gt v5, v6, :cond_a

    move v8, v5

    move/from16 v5, p3

    :goto_5
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    move-result v10

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result v11

    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v12

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v13, v15, :cond_5

    move v13, v15

    goto :goto_6

    :cond_5
    move v13, v14

    :goto_6
    if-ge v9, v10, :cond_9

    invoke-virtual {v4, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v16

    if-eqz v13, :cond_6

    if-nez v16, :cond_6

    invoke-virtual {v7, v9, v14, v14, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v16

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v7, v14, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v14

    move v0, v14

    :goto_7
    const/4 v14, 0x0

    goto :goto_8

    :cond_6
    if-eqz v13, :cond_7

    if-eqz v16, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14, v14, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v16

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0, v15, v15, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v0

    move/from16 v17, v16

    move/from16 v16, v0

    move/from16 v0, v17

    goto :goto_8

    :cond_7
    const/4 v14, 0x0

    if-nez v13, :cond_8

    if-eqz v16, :cond_8

    invoke-virtual {v7, v9, v14, v14, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v0

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v7, v14, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v16

    goto :goto_7

    :cond_8
    invoke-virtual {v7, v9, v14, v14, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v16

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0, v15, v15, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    move-result v0

    :goto_8
    aput v16, v3, v5

    add-int/lit8 v16, v5, 0x1

    aput v11, v3, v16

    add-int/lit8 v16, v5, 0x2

    aput v0, v3, v16

    add-int/lit8 v0, v5, 0x3

    aput v12, v3, v0

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_9
    if-eq v8, v6, :cond_a

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_a
    return-void
.end method

.method public final b()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->e:Z

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->j:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final c(I)F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->l:F

    add-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Landroidx/compose/ui/text/android/LayoutHelper;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->r:Landroidx/compose/ui/text/android/LayoutHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/android/LayoutHelper;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/LayoutHelper;-><init>(Landroid/text/Layout;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->r:Landroidx/compose/ui/text/android/LayoutHelper;

    :cond_0
    return-object v0
.end method

.method public final e(I)F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->n:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)F

    move-result p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final f(I)F
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->n:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    int-to-float v1, v1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->j:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method

.method public final g(I)I
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a:Ljava/lang/ThreadLocal;

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->b:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    return p0
.end method

.method public final h(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final i(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->c(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final j(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->c(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final k()Landroidx/compose/ui/text/android/selection/WordIterator;
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroidx/compose/ui/text/android/selection/WordIterator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroidx/compose/ui/text/android/selection/WordIterator;

    return-object v0
.end method
