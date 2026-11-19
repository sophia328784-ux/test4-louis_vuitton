.class final Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/List;

.field public d:F

.field public e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    sget-object p1, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->g:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    iput p4, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p3, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_15

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

    if-le v7, v5, :cond_20

    if-gt v6, v4, :cond_1

    goto/16 :goto_15

    :cond_1
    sub-int v8, v7, v5

    iget v9, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    const/4 v10, 0x0

    invoke-static {v10, v3, v8, v9}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->b(IIIF)F

    move-result v9

    const/4 v11, 0x0

    cmpg-float v12, v9, v11

    if-gtz v12, :cond_2

    goto/16 :goto_15

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_20

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/text/Cue;

    iget v15, v14, Lcom/google/android/exoplayer2/text/Cue;->m:I

    move/from16 v16, v11

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v10, -0x80000000

    if-eq v15, v10, :cond_6

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/text/Cue;->a()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v15

    const v11, -0x800001

    iput v11, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->e:F

    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->f:I

    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->d:I

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->c:F

    if-nez v10, :cond_3

    sub-float v10, v17, v11

    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->b:F

    const/4 v10, 0x0

    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->c:I

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    neg-float v11, v11

    sub-float v11, v11, v17

    iput v11, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->b:F

    const/4 v11, 0x1

    iput v11, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->c:I

    :goto_1
    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->e:I

    if-eqz v11, :cond_5

    const/4 v14, 0x2

    if-eq v11, v14, :cond_4

    goto :goto_2

    :cond_4
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->d:I

    goto :goto_2

    :cond_5
    const/4 v14, 0x2

    iput v14, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->d:I

    :goto_2
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/text/Cue$Builder;->a()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v14

    :cond_6
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->k:I

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->l:F

    invoke-static {v10, v3, v8, v11}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->b(IIIF)F

    move-result v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-object/from16 v19, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    iget-object v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->f:Landroid/text/TextPaint;

    move/from16 v28, v3

    iget v3, v14, Lcom/google/android/exoplayer2/text/Cue;->i:F

    move/from16 v29, v8

    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->h:F

    move/from16 v30, v12

    iget v12, v14, Lcom/google/android/exoplayer2/text/Cue;->g:I

    move/from16 v31, v13

    iget v13, v14, Lcom/google/android/exoplayer2/text/Cue;->f:F

    move/from16 v20, v2

    iget v2, v14, Lcom/google/android/exoplayer2/text/Cue;->e:I

    move/from16 v21, v10

    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->d:I

    move/from16 v32, v9

    iget v9, v14, Lcom/google/android/exoplayer2/text/Cue;->c:F

    iget-object v14, v14, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_7
    move-object/from16 v22, v0

    iget v0, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->c:I

    move/from16 v23, v3

    iget-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->h:Ljava/lang/CharSequence;

    if-eq v3, v14, :cond_9

    if-eqz v3, :cond_8

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v24, v8

    goto/16 :goto_5

    :cond_9
    :goto_4
    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->i:F

    cmpl-float v3, v3, v9

    if-nez v3, :cond_8

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->j:I

    if-ne v3, v10, :cond_8

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v24, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->l:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->n:F

    cmpl-float v3, v3, v24

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->o:F

    cmpl-float v3, v3, v23

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->p:I

    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->a:I

    if-ne v3, v8, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->q:I

    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->b:I

    if-ne v3, v8, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->r:I

    if-ne v3, v0, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->t:I

    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->d:I

    if-ne v3, v8, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->s:I

    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->e:I

    if-ne v3, v8, :cond_a

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    invoke-static {v3, v8}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->u:F

    cmpl-float v3, v3, v32

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->v:F

    cmpl-float v3, v3, v21

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->w:F

    cmpl-float v3, v3, v20

    if-nez v3, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->x:I

    if-ne v3, v4, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    if-ne v3, v5, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->z:I

    if-ne v3, v6, :cond_a

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    if-ne v3, v7, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v11, v1, v3}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_3

    :cond_a
    :goto_5
    iput-object v14, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->h:Ljava/lang/CharSequence;

    iput v9, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->i:F

    iput v10, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->j:I

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->k:I

    iput v13, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->l:F

    iput v12, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->m:I

    move/from16 v2, v24

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->n:F

    move/from16 v2, v23

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->o:F

    iget v2, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->a:I

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->p:I

    iget v2, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->b:I

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->q:I

    iput v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->r:I

    iget v0, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->d:I

    iput v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->t:I

    iget v0, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->e:I

    iput v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->s:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    move-object/from16 v2, v22

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, v32

    iput v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->u:F

    move/from16 v3, v21

    iput v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->v:F

    move/from16 v3, v20

    iput v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->w:F

    iput v4, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->x:I

    iput v5, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    iput v6, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->z:I

    iput v7, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    iget-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->h:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->h:Ljava/lang/CharSequence;

    instance-of v8, v3, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_b

    check-cast v3, Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_b
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->h:Ljava/lang/CharSequence;

    invoke-direct {v3, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_6
    iget v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->z:I

    iget v9, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->x:I

    sub-int/2addr v8, v9

    iget v9, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    iget v10, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    sub-int/2addr v9, v10

    iget v10, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->u:F

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v10, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->u:F

    const/high16 v12, 0x3e000000    # 0.125f

    mul-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    mul-int/lit8 v12, v10, 0x2

    sub-int v13, v8, v12

    iget v14, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->n:F

    const v18, -0x800001

    cmpl-float v15, v14, v18

    if-eqz v15, :cond_c

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    :cond_c
    move/from16 v23, v13

    if-gtz v23, :cond_d

    sget-object v13, Lcom/google/android/exoplayer2/util/Log;->a:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    monitor-exit v13

    move/from16 v32, v0

    :goto_7
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    iget v13, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->v:F

    cmpl-float v13, v13, v16

    const/high16 v14, 0xff0000

    if-lez v13, :cond_e

    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    iget v15, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->v:F

    float-to-int v15, v15

    invoke-direct {v13, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    move/from16 v32, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v13, v0, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_e
    move/from16 v32, v0

    const/4 v0, 0x0

    :goto_8
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v15, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->t:I

    const/4 v14, 0x1

    if-ne v15, v14, :cond_f

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const-class v15, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v13, v0, v14, v15}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ForegroundColorSpan;

    array-length v0, v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v0, :cond_f

    move/from16 v21, v0

    aget-object v0, v14, v15

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v21

    goto :goto_9

    :cond_f
    iget v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->q:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_12

    iget v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->t:I

    if-eqz v0, :cond_10

    const/4 v14, 0x2

    if-ne v0, v14, :cond_11

    :cond_10
    move-object/from16 v22, v2

    const/high16 v2, 0xff0000

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v14, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->q:I

    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    move-object/from16 v22, v2

    const/high16 v2, 0xff0000

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v15, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :goto_a
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v14, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->q:I

    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    invoke-virtual {v3, v0, v15, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_12
    move-object/from16 v22, v2

    :goto_b
    sget-object v24, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    new-instance v20, Landroid/text/StaticLayout;

    iget v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->d:F

    iget v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->e:F

    const/16 v27, 0x1

    move/from16 v25, v0

    move/from16 v26, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v20

    move/from16 v0, v23

    iput-object v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    iget-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c
    if-ge v14, v3, :cond_13

    move/from16 v20, v2

    iget-object v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    move/from16 v23, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    move/from16 v3, v23

    goto :goto_c

    :cond_13
    move/from16 v20, v2

    iget v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->n:F

    const v18, -0x800001

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_14

    if-ge v15, v0, :cond_14

    move/from16 v23, v0

    goto :goto_d

    :cond_14
    move/from16 v23, v15

    :goto_d
    add-int v23, v23, v12

    iget v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->l:F

    cmpl-float v2, v0, v18

    if-eqz v2, :cond_17

    int-to-float v2, v8

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->x:I

    add-int/2addr v0, v2

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->m:I

    const/4 v14, 0x1

    if-eq v3, v14, :cond_16

    const/4 v14, 0x2

    if-eq v3, v14, :cond_15

    goto :goto_e

    :cond_15
    sub-int v0, v0, v23

    goto :goto_e

    :cond_16
    const/4 v14, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v0, v23

    div-int/2addr v0, v14

    :goto_e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v2, v0, v23

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->z:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_f

    :cond_17
    const/4 v14, 0x2

    sub-int v8, v8, v23

    div-int/2addr v8, v14

    iget v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->x:I

    add-int/2addr v0, v8

    add-int v2, v0, v23

    :goto_f
    sub-int v23, v2, v0

    if-gtz v23, :cond_18

    sget-object v2, Lcom/google/android/exoplayer2/util/Log;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    monitor-exit v2

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_18
    iget v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->i:F

    const v18, -0x800001

    cmpl-float v3, v2, v18

    if-eqz v3, :cond_1e

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->j:I

    if-nez v3, :cond_1b

    int-to-float v3, v9

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    add-int/2addr v2, v3

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->k:I

    const/4 v14, 0x2

    if-ne v3, v14, :cond_19

    sub-int v2, v2, v20

    goto :goto_10

    :cond_19
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1a

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v2, v20

    div-int/2addr v2, v14

    :cond_1a
    :goto_10
    const/4 v15, 0x0

    goto :goto_11

    :cond_1b
    iget-object v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    invoke-virtual {v3, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->i:F

    cmpl-float v8, v3, v16

    if-ltz v8, :cond_1c

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    add-int/2addr v2, v3

    goto :goto_11

    :cond_1c
    add-float v3, v3, v17

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    add-int/2addr v2, v3

    sub-int v2, v2, v20

    :goto_11
    add-int v3, v2, v20

    iget v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    if-le v3, v8, :cond_1d

    sub-int v2, v8, v20

    goto :goto_12

    :cond_1d
    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->y:I

    if-ge v2, v3, :cond_1f

    move v2, v3

    goto :goto_12

    :cond_1e
    const/4 v15, 0x0

    iget v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->A:I

    sub-int v2, v2, v20

    int-to-float v3, v9

    iget v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->w:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    :cond_1f
    :goto_12
    new-instance v20, Landroid/text/StaticLayout;

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->d:F

    iget v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->e:F

    const/16 v27, 0x1

    move/from16 v25, v3

    move/from16 v26, v8

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v20

    iput-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->B:Landroid/text/StaticLayout;

    new-instance v20, Landroid/text/StaticLayout;

    iget v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->d:F

    iget v8, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->e:F

    move/from16 v25, v3

    move/from16 v26, v8

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v20

    iput-object v3, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->C:Landroid/text/StaticLayout;

    iput v0, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->D:I

    iput v2, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->E:I

    iput v10, v11, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->F:I

    const/4 v14, 0x1

    :goto_13
    invoke-virtual {v11, v1, v14}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    :goto_14
    add-int/lit8 v13, v31, 0x1

    move-object/from16 v0, p0

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v2, v19

    move/from16 v3, v28

    move/from16 v8, v29

    move/from16 v12, v30

    move/from16 v9, v32

    goto/16 :goto_0

    :cond_20
    :goto_15
    return-void
.end method
