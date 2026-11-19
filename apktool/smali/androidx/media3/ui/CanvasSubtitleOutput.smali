.class final Landroidx/media3/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/List;

.field public d:I

.field public e:F

.field public f:Landroidx/media3/ui/CaptionStyleCompat;

.field public g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->d:I

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->e:F

    sget-object p1, Landroidx/media3/ui/CaptionStyleCompat;->g:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->f:Landroidx/media3/ui/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->g:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->f:Landroidx/media3/ui/CaptionStyleCompat;

    iput p3, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->e:F

    iput p4, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->d:I

    iput p5, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->g:F

    :goto_0
    iget-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p3, Landroidx/media3/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/media3/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_28

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    if-le v7, v5, :cond_3a

    if-gt v6, v4, :cond_1

    goto/16 :goto_28

    :cond_1
    sub-int v8, v7, v5

    iget v9, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->d:I

    iget v10, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->e:F

    invoke-static {v9, v3, v8, v10}, Landroidx/media3/ui/SubtitleViewUtils;->b(IIIF)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v11, v9, v10

    if-gtz v11, :cond_2

    goto/16 :goto_28

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_3a

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/common/text/Cue;

    iget v15, v14, Landroidx/media3/common/text/Cue;->p:I

    move/from16 v16, v10

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v10, -0x80000000

    if-eq v15, v10, :cond_6

    invoke-virtual {v14}, Landroidx/media3/common/text/Cue;->a()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v15

    const v12, -0x800001

    iput v12, v15, Landroidx/media3/common/text/Cue$Builder;->h:F

    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->i:I

    const/4 v10, 0x0

    iput-object v10, v15, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    iget v12, v14, Landroidx/media3/common/text/Cue;->f:I

    iget v10, v14, Landroidx/media3/common/text/Cue;->e:F

    if-nez v12, :cond_3

    sub-float v10, v17, v10

    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->e:F

    const/4 v12, 0x0

    iput v12, v15, Landroidx/media3/common/text/Cue$Builder;->f:I

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    neg-float v10, v10

    sub-float v10, v10, v17

    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->e:F

    const/4 v10, 0x1

    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->f:I

    :goto_1
    iget v10, v14, Landroidx/media3/common/text/Cue;->g:I

    if-eqz v10, :cond_5

    const/4 v14, 0x2

    if-eq v10, v14, :cond_4

    goto :goto_2

    :cond_4
    iput v12, v15, Landroidx/media3/common/text/Cue$Builder;->g:I

    goto :goto_2

    :cond_5
    const/4 v14, 0x2

    iput v14, v15, Landroidx/media3/common/text/Cue$Builder;->g:I

    :goto_2
    invoke-virtual {v15}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v14

    :cond_6
    iget v10, v14, Landroidx/media3/common/text/Cue;->n:I

    iget v12, v14, Landroidx/media3/common/text/Cue;->o:F

    invoke-static {v10, v3, v8, v12}, Landroidx/media3/ui/SubtitleViewUtils;->b(IIIF)F

    move-result v10

    iget-object v12, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/ui/SubtitlePainter;

    iget-object v15, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->f:Landroidx/media3/ui/CaptionStyleCompat;

    move-object/from16 v21, v2

    iget v2, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->g:F

    iget-object v0, v12, Landroidx/media3/ui/SubtitlePainter;->f:Landroid/text/TextPaint;

    move/from16 v30, v3

    iget-object v3, v14, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    move/from16 v31, v8

    iget v8, v14, Landroidx/media3/common/text/Cue;->k:F

    move/from16 v32, v11

    iget v11, v14, Landroidx/media3/common/text/Cue;->j:F

    move/from16 v33, v13

    iget v13, v14, Landroidx/media3/common/text/Cue;->i:I

    move/from16 v22, v2

    iget v2, v14, Landroidx/media3/common/text/Cue;->h:F

    move/from16 v23, v10

    iget v10, v14, Landroidx/media3/common/text/Cue;->g:I

    move/from16 v34, v9

    iget v9, v14, Landroidx/media3/common/text/Cue;->f:I

    move-object/from16 v24, v0

    iget v0, v14, Landroidx/media3/common/text/Cue;->e:F

    move/from16 v25, v8

    iget-object v8, v14, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    move/from16 v26, v11

    iget-object v11, v14, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    move/from16 v27, v13

    if-nez v3, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_8

    :goto_4
    move v3, v7

    const/4 v15, 0x0

    goto/16 :goto_27

    :cond_8
    move/from16 v28, v2

    iget-boolean v2, v14, Landroidx/media3/common/text/Cue;->l:Z

    if-eqz v2, :cond_9

    iget v2, v14, Landroidx/media3/common/text/Cue;->m:I

    goto :goto_5

    :cond_9
    iget v2, v15, Landroidx/media3/ui/CaptionStyleCompat;->c:I

    goto :goto_5

    :cond_a
    move/from16 v28, v2

    const/high16 v2, -0x1000000

    :goto_5
    iget-object v14, v12, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    if-eq v14, v11, :cond_c

    if-eqz v14, :cond_b

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v29, v10

    goto/16 :goto_7

    :cond_c
    :goto_6
    iget-object v14, v12, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    invoke-static {v14, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v12, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    if-ne v14, v3, :cond_b

    iget v14, v12, Landroidx/media3/ui/SubtitlePainter;->l:F

    cmpl-float v14, v14, v0

    if-nez v14, :cond_b

    iget v14, v12, Landroidx/media3/ui/SubtitlePainter;->m:I

    if-ne v14, v9, :cond_b

    iget v14, v12, Landroidx/media3/ui/SubtitlePainter;->n:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v29, v10

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->o:F

    cmpl-float v10, v10, v28

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->p:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->q:F

    cmpl-float v10, v10, v26

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->r:F

    cmpl-float v10, v10, v25

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->s:I

    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    if-ne v10, v14, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->t:I

    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    if-ne v10, v14, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->u:I

    if-ne v10, v2, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->w:I

    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    if-ne v10, v14, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->v:I

    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    if-ne v10, v14, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    iget-object v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    invoke-static {v10, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->x:F

    cmpl-float v10, v10, v34

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->y:F

    cmpl-float v10, v10, v23

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->z:F

    cmpl-float v10, v10, v22

    if-nez v10, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    if-ne v10, v4, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    if-ne v10, v5, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->C:I

    if-ne v10, v6, :cond_d

    iget v10, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    if-ne v10, v7, :cond_d

    invoke-virtual {v12, v1, v13}, Landroidx/media3/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_4

    :cond_d
    :goto_7
    sget-object v10, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    if-nez v11, :cond_f

    :cond_e
    move/from16 v40, v6

    move/from16 v36, v7

    move/from16 v35, v13

    goto/16 :goto_12

    :cond_f
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v10, :cond_e

    invoke-static {v11, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v35

    move/from16 v36, v10

    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v10

    move/from16 v37, v14

    const/4 v14, 0x1

    if-eq v10, v14, :cond_11

    const/4 v14, 0x2

    if-eq v10, v14, :cond_11

    const/16 v14, 0x10

    if-eq v10, v14, :cond_11

    const/16 v14, 0x11

    if-ne v10, v14, :cond_10

    goto :goto_9

    :cond_10
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v14, v10, v37

    move/from16 v10, v36

    goto :goto_8

    :cond_11
    :goto_9
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v10

    instance-of v14, v11, Landroid/text/Spanned;

    if-eqz v14, :cond_12

    move-object v14, v11

    check-cast v14, Landroid/text/Spanned;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move/from16 v35, v13

    const-class v13, Ljava/lang/Object;

    move/from16 v36, v7

    const/4 v7, 0x0

    invoke-interface {v14, v7, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v7, v1

    new-array v7, v7, [I

    array-length v13, v1

    new-array v13, v13, [I

    move-object/from16 v18, v1

    const/4 v1, -0x1

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v13, v1}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v1, v18

    move-object/from16 v18, v7

    goto :goto_a

    :cond_12
    move/from16 v36, v7

    move/from16 v35, v13

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_a
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v37, v13

    const-string v13, "\r\n"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, Landroidx/media3/ui/BidiUtils;->b:Lcom/google/common/base/Splitter;

    invoke-virtual {v7, v11}, Lcom/google/common/base/Splitter;->d(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x2

    goto :goto_b

    :cond_13
    sget-object v7, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {v7, v11}, Lcom/google/common/base/Splitter;->d(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x1

    :goto_b
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v38, v7

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v39, v7

    const/4 v7, 0x0

    const/16 v38, 0x0

    :goto_c
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_1b

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    move/from16 v41, v11

    move-object/from16 v11, v40

    check-cast v11, Ljava/lang/String;

    move/from16 v40, v6

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v10, v11, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_1a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v42

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v43

    sub-int v42, v42, v43

    if-lez v42, :cond_14

    add-int/lit8 v38, v38, 0x1

    :cond_14
    move-object/from16 v43, v10

    move-object/from16 v44, v11

    const/4 v10, 0x0

    :goto_d
    array-length v11, v1

    if-ge v10, v11, :cond_18

    aget v11, v18, v10

    if-gez v11, :cond_15

    aget-object v11, v1, v10

    invoke-interface {v14, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    if-lt v11, v7, :cond_15

    aget-object v11, v1, v10

    invoke-interface {v14, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v46, v10

    add-int v10, v45, v7

    if-ge v11, v10, :cond_16

    aput v38, v18, v46

    goto :goto_e

    :cond_15
    move/from16 v46, v10

    :cond_16
    :goto_e
    aget v10, v37, v46

    if-gez v10, :cond_17

    aget-object v10, v1, v46

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/16 v20, 0x1

    add-int/lit8 v10, v10, -0x1

    if-lt v10, v7, :cond_17

    aget-object v10, v1, v46

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v7

    if-ge v10, v11, :cond_17

    aput v38, v37, v46

    :cond_17
    add-int/lit8 v10, v46, 0x1

    goto :goto_d

    :cond_18
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v10

    add-int v10, v10, v41

    add-int/2addr v10, v7

    if-lez v42, :cond_19

    add-int/lit8 v38, v38, 0x1

    :cond_19
    move v7, v10

    goto :goto_f

    :cond_1a
    move-object/from16 v43, v10

    :goto_f
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v40

    move/from16 v11, v41

    move-object/from16 v10, v43

    goto/16 :goto_c

    :cond_1b
    move/from16 v40, v6

    new-instance v11, Landroid/text/SpannableStringBuilder;

    sget-object v6, Landroidx/media3/ui/BidiUtils;->c:Lcom/google/common/base/Joiner;

    invoke-virtual {v6, v13}, Lcom/google/common/base/Joiner;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1d

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_10
    array-length v7, v1

    if-ge v6, v7, :cond_1d

    aget-object v7, v1, v6

    invoke-interface {v14, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aget v10, v18, v6

    add-int/2addr v7, v10

    aget-object v10, v1, v6

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    aget v13, v37, v6

    add-int/2addr v10, v13

    aget-object v13, v1, v6

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v38, v1

    if-ltz v7, :cond_1c

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ge v7, v1, :cond_1c

    if-ltz v10, :cond_1c

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt v10, v1, :cond_1c

    aget-object v1, v38, v6

    invoke-virtual {v11, v1, v7, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move/from16 v39, v6

    goto :goto_11

    :cond_1c
    const-string v1, ",end="

    const-string v13, ",len="

    move/from16 v39, v6

    const-string v6, "Span out of bounds: start="

    invoke-static {v7, v10, v6, v1, v13}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v6, v39, 0x1

    move-object/from16 v1, v38

    goto :goto_10

    :cond_1d
    :goto_12
    iput-object v11, v12, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    iput-object v8, v12, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    iput-object v3, v12, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->l:F

    iput v9, v12, Landroidx/media3/ui/SubtitlePainter;->m:I

    move/from16 v0, v29

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->n:I

    move/from16 v0, v28

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->o:F

    move/from16 v0, v27

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->p:I

    move/from16 v0, v26

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->q:F

    move/from16 v0, v25

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->r:F

    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->s:I

    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->t:I

    iput v2, v12, Landroidx/media3/ui/SubtitlePainter;->u:I

    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->w:I

    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->v:I

    iget-object v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, v34

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->x:F

    move/from16 v2, v23

    iput v2, v12, Landroidx/media3/ui/SubtitlePainter;->y:F

    move/from16 v2, v22

    iput v2, v12, Landroidx/media3/ui/SubtitlePainter;->z:F

    iput v4, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    iput v5, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    move/from16 v6, v40

    iput v6, v12, Landroidx/media3/ui/SubtitlePainter;->C:I

    move/from16 v3, v36

    iput v3, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    if-eqz v35, :cond_34

    iget-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    instance-of v7, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_1e

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_13

    :cond_1e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v7, v12, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_13
    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->C:I

    iget v8, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    sub-int/2addr v7, v8

    iget v8, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    iget v9, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    sub-int/2addr v8, v9

    iget v9, v12, Landroidx/media3/ui/SubtitlePainter;->x:F

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v9, v12, Landroidx/media3/ui/SubtitlePainter;->x:F

    const/high16 v10, 0x3e000000    # 0.125f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    mul-int/lit8 v10, v9, 0x2

    sub-int v11, v7, v10

    iget v13, v12, Landroidx/media3/ui/SubtitlePainter;->q:F

    const v19, -0x800001

    cmpl-float v14, v13, v19

    if-eqz v14, :cond_1f

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    :cond_1f
    move/from16 v25, v11

    if-gtz v25, :cond_20

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move/from16 v34, v0

    :goto_14
    const/4 v15, 0x0

    goto/16 :goto_20

    :cond_20
    iget v11, v12, Landroidx/media3/ui/SubtitlePainter;->y:F

    cmpl-float v11, v11, v16

    const/high16 v13, 0xff0000

    if-lez v11, :cond_21

    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    iget v14, v12, Landroidx/media3/ui/SubtitlePainter;->y:F

    float-to-int v14, v14

    invoke-direct {v11, v14}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v2, v11, v15, v14, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    :cond_21
    const/4 v15, 0x0

    :goto_15
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v14, v12, Landroidx/media3/ui/SubtitlePainter;->w:I

    const/4 v13, 0x1

    if-ne v14, v13, :cond_22

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const-class v14, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v11, v15, v13, v14}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ForegroundColorSpan;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_22

    move/from16 v34, v0

    aget-object v0, v13, v15

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v34

    goto :goto_16

    :cond_22
    move/from16 v34, v0

    iget v0, v12, Landroidx/media3/ui/SubtitlePainter;->t:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_25

    iget v0, v12, Landroidx/media3/ui/SubtitlePainter;->w:I

    if-eqz v0, :cond_23

    const/4 v14, 0x2

    if-ne v0, v14, :cond_24

    :cond_23
    const/high16 v14, 0xff0000

    const/4 v15, 0x0

    goto :goto_17

    :cond_24
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v13, v12, Landroidx/media3/ui/SubtitlePainter;->t:I

    invoke-direct {v0, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/high16 v14, 0xff0000

    const/4 v15, 0x0

    invoke-virtual {v11, v0, v15, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_18

    :goto_17
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v13, v12, Landroidx/media3/ui/SubtitlePainter;->t:I

    invoke-direct {v0, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v2, v0, v15, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_25
    :goto_18
    iget-object v0, v12, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_26

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_26
    move-object/from16 v26, v0

    new-instance v22, Landroid/text/StaticLayout;

    iget v0, v12, Landroidx/media3/ui/SubtitlePainter;->d:F

    iget v13, v12, Landroidx/media3/ui/SubtitlePainter;->e:F

    const/16 v29, 0x1

    move/from16 v27, v0

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move/from16 v28, v13

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v1, v22

    move/from16 v0, v25

    iput-object v1, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    if-ge v13, v2, :cond_27

    iget-object v15, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    invoke-virtual {v15, v13}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v15

    move/from16 v18, v1

    move/from16 v22, v2

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v18

    move/from16 v2, v22

    goto :goto_19

    :cond_27
    move/from16 v18, v1

    iget v1, v12, Landroidx/media3/ui/SubtitlePainter;->q:F

    const v19, -0x800001

    cmpl-float v1, v1, v19

    if-eqz v1, :cond_28

    if-ge v14, v0, :cond_28

    move/from16 v25, v0

    goto :goto_1a

    :cond_28
    move/from16 v25, v14

    :goto_1a
    add-int v25, v25, v10

    iget v0, v12, Landroidx/media3/ui/SubtitlePainter;->o:F

    cmpl-float v1, v0, v19

    if-eqz v1, :cond_2b

    int-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    add-int/2addr v0, v1

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->p:I

    const/4 v14, 0x1

    if-eq v2, v14, :cond_2a

    const/4 v14, 0x2

    if-eq v2, v14, :cond_29

    goto :goto_1b

    :cond_29
    sub-int v0, v0, v25

    goto :goto_1b

    :cond_2a
    const/4 v14, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v0, v25

    div-int/2addr v0, v14

    :goto_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, v0, v25

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->C:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1c

    :cond_2b
    const/4 v14, 0x2

    sub-int v7, v7, v25

    div-int/2addr v7, v14

    iget v0, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    add-int/2addr v0, v7

    add-int v1, v0, v25

    :goto_1c
    sub-int v25, v1, v0

    if-gtz v25, :cond_2c

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_2c
    iget v1, v12, Landroidx/media3/ui/SubtitlePainter;->l:F

    const v19, -0x800001

    cmpl-float v2, v1, v19

    if-eqz v2, :cond_32

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->m:I

    if-nez v2, :cond_2f

    int-to-float v2, v8

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    add-int/2addr v1, v2

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->n:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_2d

    sub-int v1, v1, v18

    goto :goto_1d

    :cond_2d
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2e

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v1, v18

    div-int/2addr v1, v14

    :cond_2e
    :goto_1d
    const/4 v15, 0x0

    goto :goto_1e

    :cond_2f
    iget-object v1, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->l:F

    cmpl-float v7, v2, v16

    if-ltz v7, :cond_30

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    add-int/2addr v1, v2

    goto :goto_1e

    :cond_30
    add-float v2, v2, v17

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    add-int/2addr v1, v2

    sub-int v1, v1, v18

    :goto_1e
    add-int v2, v1, v18

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    if-le v2, v7, :cond_31

    sub-int v1, v7, v18

    goto :goto_1f

    :cond_31
    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    if-ge v1, v2, :cond_33

    move v1, v2

    goto :goto_1f

    :cond_32
    const/4 v15, 0x0

    iget v1, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    sub-int v1, v1, v18

    int-to-float v2, v8

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->z:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    sub-int/2addr v1, v2

    :cond_33
    :goto_1f
    new-instance v22, Landroid/text/StaticLayout;

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->d:F

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->e:F

    const/16 v29, 0x1

    move/from16 v27, v2

    move/from16 v28, v7

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v22

    iput-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    new-instance v22, Landroid/text/StaticLayout;

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->d:F

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->e:F

    move/from16 v27, v2

    move/from16 v28, v7

    move-object/from16 v23, v11

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v22

    iput-object v2, v12, Landroidx/media3/ui/SubtitlePainter;->F:Landroid/text/StaticLayout;

    iput v0, v12, Landroidx/media3/ui/SubtitlePainter;->G:I

    iput v1, v12, Landroidx/media3/ui/SubtitlePainter;->H:I

    iput v9, v12, Landroidx/media3/ui/SubtitlePainter;->I:I

    :goto_20
    move-object/from16 v1, p1

    move/from16 v0, v35

    goto/16 :goto_26

    :cond_34
    move/from16 v34, v0

    const/4 v15, 0x0

    iget-object v0, v12, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v12, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    iget v1, v12, Landroidx/media3/ui/SubtitlePainter;->C:I

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->A:I

    sub-int/2addr v1, v2

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->D:I

    iget v8, v12, Landroidx/media3/ui/SubtitlePainter;->B:I

    sub-int/2addr v7, v8

    int-to-float v2, v2

    int-to-float v1, v1

    iget v9, v12, Landroidx/media3/ui/SubtitlePainter;->o:F

    mul-float/2addr v9, v1

    add-float/2addr v9, v2

    int-to-float v2, v8

    int-to-float v7, v7

    iget v8, v12, Landroidx/media3/ui/SubtitlePainter;->l:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v2

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->q:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->r:F

    const v19, -0x800001

    cmpl-float v10, v2, v19

    if-eqz v10, :cond_35

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_21

    :cond_35
    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_21
    iget v2, v12, Landroidx/media3/ui/SubtitlePainter;->p:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_36

    int-to-float v2, v1

    :goto_22
    sub-float/2addr v9, v2

    goto :goto_23

    :cond_36
    const/4 v14, 0x1

    if-ne v2, v14, :cond_37

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    goto :goto_22

    :cond_37
    :goto_23
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v7, v12, Landroidx/media3/ui/SubtitlePainter;->n:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_38

    int-to-float v7, v0

    :goto_24
    sub-float/2addr v8, v7

    goto :goto_25

    :cond_38
    const/4 v14, 0x1

    if-ne v7, v14, :cond_39

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    goto :goto_24

    :cond_39
    :goto_25
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v7

    invoke-direct {v8, v2, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, v12, Landroidx/media3/ui/SubtitlePainter;->J:Landroid/graphics/Rect;

    goto :goto_20

    :goto_26
    invoke-virtual {v12, v1, v0}, Landroidx/media3/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    :goto_27
    add-int/lit8 v13, v33, 0x1

    move-object/from16 v0, p0

    move v7, v3

    move/from16 v10, v16

    move-object/from16 v2, v21

    move/from16 v3, v30

    move/from16 v8, v31

    move/from16 v11, v32

    move/from16 v9, v34

    goto/16 :goto_0

    :cond_3a
    :goto_28
    return-void
.end method
