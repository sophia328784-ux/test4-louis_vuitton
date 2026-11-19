.class public Lcom/batch/android/j0/d;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/j0/d$h;,
        Lcom/batch/android/j0/d$i;,
        Lcom/batch/android/j0/d$e;,
        Lcom/batch/android/j0/d$b;,
        Lcom/batch/android/j0/d$c;,
        Lcom/batch/android/j0/d$g;,
        Lcom/batch/android/j0/d$f;,
        Lcom/batch/android/j0/d$d;
    }
.end annotation


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x3

.field public static final E:I = 0x4

.field public static final F:I = 0x5

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0x4

.field public static final v:I = 0x0

.field public static final w:I = 0x1

.field public static final x:I = 0x2

.field public static final y:I = 0x3

.field public static final z:I = 0x4


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:Landroid/util/SparseIntArray;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/j0/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/batch/android/j0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/j0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/batch/android/j0/d$e;IIII)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 536
    iget v4, v1, Lcom/batch/android/j0/d$e;->d:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-lez v6, :cond_11

    iget v6, v1, Lcom/batch/android/j0/d$e;->a:I

    if-ge v3, v6, :cond_0

    goto/16 :goto_9

    :cond_0
    sub-int v7, v3, v6

    int-to-float v7, v7

    div-float/2addr v7, v4

    move/from16 v4, p4

    .line 537
    iput v4, v1, Lcom/batch/android/j0/d$e;->a:I

    const/4 v8, 0x0

    move/from16 v10, p5

    move v11, v5

    move v9, v8

    .line 538
    :goto_0
    iget v12, v1, Lcom/batch/android/j0/d$e;->c:I

    if-ge v8, v12, :cond_f

    .line 539
    invoke-virtual {v0, v10}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1

    goto/16 :goto_8

    .line 540
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    goto/16 :goto_7

    .line 541
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/batch/android/j0/d$h;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v14, :cond_4

    :cond_3
    move/from16 v20, v14

    goto/16 :goto_3

    .line 542
    :cond_4
    iget-object v15, v0, Lcom/batch/android/j0/d;->i:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_9

    .line 543
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v20, v14

    iget v14, v13, Lcom/batch/android/j0/d$h;->b:F

    mul-float/2addr v14, v7

    add-float/2addr v14, v15

    .line 544
    iget v15, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_5

    add-float/2addr v14, v11

    const/4 v11, 0x0

    .line 545
    :cond_5
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 546
    iget v5, v13, Lcom/batch/android/j0/d$h;->i:I

    if-le v15, v5, :cond_6

    .line 547
    iget-object v9, v0, Lcom/batch/android/j0/d;->i:[Z

    aput-boolean v20, v9, v10

    .line 548
    iget v9, v1, Lcom/batch/android/j0/d$e;->d:F

    iget v14, v13, Lcom/batch/android/j0/d$h;->b:F

    sub-float/2addr v9, v14

    iput v9, v1, Lcom/batch/android/j0/d$e;->d:F

    move v15, v5

    move/from16 v9, v20

    goto :goto_2

    :cond_6
    int-to-float v5, v15

    sub-float/2addr v14, v5

    add-float/2addr v14, v11

    float-to-double v2, v14

    cmpl-double v5, v2, v16

    if-lez v5, :cond_7

    add-int/lit8 v15, v15, 0x1

    sub-double v2, v2, v16

    :goto_1
    double-to-float v2, v2

    move v11, v2

    goto :goto_2

    :cond_7
    cmpg-double v5, v2, v18

    if-gez v5, :cond_8

    add-int/lit8 v15, v15, -0x1

    add-double v2, v2, v16

    goto :goto_1

    :cond_8
    move v11, v14

    .line 549
    :goto_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 550
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 551
    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 552
    :cond_9
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iput v3, v1, Lcom/batch/android/j0/d$e;->a:I

    goto :goto_7

    .line 553
    :goto_3
    iget-object v2, v0, Lcom/batch/android/j0/d;->i:[Z

    aget-boolean v2, v2, v10

    if-nez v2, :cond_e

    .line 554
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v13, Lcom/batch/android/j0/d$h;->b:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    .line 555
    iget v2, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_a

    add-float/2addr v3, v11

    const/4 v11, 0x0

    .line 556
    :cond_a
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 557
    iget v5, v13, Lcom/batch/android/j0/d$h;->h:I

    if-le v2, v5, :cond_b

    .line 558
    iget-object v2, v0, Lcom/batch/android/j0/d;->i:[Z

    aput-boolean v20, v2, v10

    .line 559
    iget v2, v1, Lcom/batch/android/j0/d$e;->d:F

    iget v3, v13, Lcom/batch/android/j0/d$h;->b:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/batch/android/j0/d$e;->d:F

    move v2, v5

    move/from16 v9, v20

    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_6

    :cond_b
    int-to-float v5, v2

    sub-float/2addr v3, v5

    add-float/2addr v3, v11

    float-to-double v14, v3

    cmpl-double v5, v14, v16

    if-lez v5, :cond_d

    add-int/lit8 v2, v2, 0x1

    sub-double v14, v14, v16

    :goto_5
    double-to-float v3, v14

    :cond_c
    move v11, v3

    goto :goto_4

    :cond_d
    cmpg-double v5, v14, v18

    if-gez v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    add-double v14, v14, v16

    goto :goto_5

    .line 560
    :goto_6
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 561
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 562
    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 563
    :cond_e
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iput v3, v1, Lcom/batch/android/j0/d$e;->a:I

    :goto_7
    add-int/lit8 v10, v10, 0x1

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    if-eqz v9, :cond_10

    .line 564
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    if-eq v6, v2, :cond_10

    .line 565
    invoke-direct/range {p0 .. p5}, Lcom/batch/android/j0/d;->a(Lcom/batch/android/j0/d$e;IIII)I

    :cond_10
    return v10

    .line 566
    :cond_11
    :goto_9
    iget v0, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int v0, p5, v0

    return v0
.end method

.method private a(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/batch/android/j0/d$i;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 490
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 491
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/batch/android/j0/d$h;

    .line 492
    new-instance v3, Lcom/batch/android/j0/d$i;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/batch/android/j0/d$i;-><init>(Lcom/batch/android/j0/d$a;)V

    .line 493
    iget v2, v2, Lcom/batch/android/j0/d$h;->a:I

    iput v2, v3, Lcom/batch/android/j0/d$i;->c:I

    .line 494
    iput v1, v3, Lcom/batch/android/j0/d$i;->b:I

    .line 495
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v1, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    new-instance v5, Lcom/batch/android/j0/d$e;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    add-int v11, v1, v4

    iput v11, v5, Lcom/batch/android/j0/d$e;->a:I

    move-object v14, v5

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v9, :cond_6

    invoke-virtual {v0, v15}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-direct {v0, v15, v9, v14}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    const/4 v13, 0x1

    if-ne v5, v12, :cond_1

    iget v5, v14, Lcom/batch/android/j0/d$e;->c:I

    add-int/2addr v5, v13

    iput v5, v14, Lcom/batch/android/j0/d$e;->c:I

    invoke-direct {v0, v15, v9, v14}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/batch/android/j0/d$h;

    iget v12, v5, Lcom/batch/android/j0/d$h;->d:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    iget-object v12, v14, Lcom/batch/android/j0/d$e;->g:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v13, v5, Lcom/batch/android/j0/d$h;->e:F

    const/high16 v17, -0x40800000    # -1.0f

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_3

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_3

    int-to-float v10, v3

    mul-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v13, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v10

    invoke-static {v7, v13, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int/2addr v13, v12

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v12

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v12

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v13, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    invoke-virtual {v6, v10, v12}, Landroid/view/View;->measure(II)V

    invoke-direct {v0, v6}, Lcom/batch/android/j0/d;->a(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v1, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v12

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v12

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v1, v0, Lcom/batch/android/j0/d;->b:I

    iget v4, v14, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v0

    move-object v0, v6

    move-object v6, v5

    move v5, v13

    move-object v13, v0

    move-object/from16 v0, p0

    move/from16 v16, v10

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/j0/d;->a(IIIIILcom/batch/android/j0/d$h;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/batch/android/j0/d$e;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    const/4 v1, 0x1

    iput v1, v14, Lcom/batch/android/j0/d$e;->c:I

    iput v11, v14, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v5, v14, Lcom/batch/android/j0/d$e;->c:I

    add-int/2addr v5, v1

    iput v5, v14, Lcom/batch/android/j0/d$e;->c:I

    move v1, v12

    :goto_1
    iget v5, v14, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    iput v12, v14, Lcom/batch/android/j0/d$e;->a:I

    iget v4, v14, Lcom/batch/android/j0/d$e;->d:F

    iget v5, v6, Lcom/batch/android/j0/d$h;->b:F

    add-float/2addr v4, v5

    iput v4, v14, Lcom/batch/android/j0/d$e;->d:F

    iget v4, v14, Lcom/batch/android/j0/d$e;->e:F

    iget v5, v6, Lcom/batch/android/j0/d$h;->c:F

    add-float/2addr v4, v5

    iput v4, v14, Lcom/batch/android/j0/d$e;->e:F

    iget v4, v14, Lcom/batch/android/j0/d$e;->b:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Lcom/batch/android/j0/d$e;->b:I

    iget v4, v0, Lcom/batch/android/j0/d;->b:I

    iget v5, v14, Lcom/batch/android/j0/d$e;->f:I

    if-eq v4, v10, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Lcom/batch/android/j0/d$e;->f:I

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v10

    sub-int/2addr v4, v10

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Lcom/batch/android/j0/d$e;->f:I

    :goto_2
    invoke-direct {v0, v15, v9, v14}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    move v4, v1

    move/from16 v1, v16

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x2

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-direct {v0, v2, v7, v8}, Lcom/batch/android/j0/d;->a(III)V

    iget v2, v0, Lcom/batch/android/j0/d;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/j0/d$e;

    move v4, v12

    const/high16 v5, -0x80000000

    :goto_5
    iget v6, v3, Lcom/batch/android/j0/d$e;->c:I

    add-int/2addr v6, v12

    if-ge v4, v6, :cond_8

    invoke-virtual {v0, v4}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/batch/android/j0/d$h;

    iget v11, v0, Lcom/batch/android/j0/d;->b:I

    iget v13, v3, Lcom/batch/android/j0/d$e;->f:I

    if-eq v11, v10, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v11

    sub-int/2addr v13, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v11

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v13, v11

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v11

    add-int/2addr v11, v13

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v9

    add-int/2addr v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    iput v5, v3, Lcom/batch/android/j0/d$e;->b:I

    move v12, v6

    goto :goto_4

    :cond_9
    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v7, v8, v4}, Lcom/batch/android/j0/d;->a(IIII)V

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    iget v3, v0, Lcom/batch/android/j0/d;->d:I

    invoke-direct {v0, v2, v3}, Lcom/batch/android/j0/d;->c(II)V

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/batch/android/j0/d;->b(IIII)V

    return-void
.end method

.method private a(III)V
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    const-string p0, "Invalid flex direction: "

    .line 522
    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    .line 524
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 525
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 526
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getLargestMainSize()I

    move-result p3

    .line 527
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    :goto_2
    add-int/2addr v0, p2

    move v4, p3

    move v5, v0

    goto :goto_5

    .line 528
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 529
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne p3, v0, :cond_4

    :goto_3
    move p3, p2

    goto :goto_4

    .line 530
    :cond_4
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getLargestMainSize()I

    move-result p2

    goto :goto_3

    .line 531
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_2

    .line 532
    :goto_5
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move v6, p3

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/batch/android/j0/d$e;

    .line 533
    iget p3, v2, Lcom/batch/android/j0/d$e;->a:I

    if-ge p3, v4, :cond_5

    move-object v1, p0

    move v3, p1

    .line 534
    invoke-direct/range {v1 .. v6}, Lcom/batch/android/j0/d;->a(Lcom/batch/android/j0/d$e;IIII)I

    move-result v6

    goto :goto_6

    :cond_5
    move-object v1, p0

    move v3, p1

    .line 535
    invoke-direct/range {v1 .. v6}, Lcom/batch/android/j0/d;->b(Lcom/batch/android/j0/d$e;IIII)I

    move-result v6

    goto :goto_6

    :cond_6
    return-void
.end method

.method private a(IIII)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    const-string p0, "Invalid flex direction: "

    .line 568
    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    .line 570
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 571
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 572
    :cond_2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 573
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_1
    const/high16 p3, 0x40000000    # 2.0f

    if-ne p1, p3, :cond_15

    .line 574
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getSumOfCrossSize()I

    move-result p1

    add-int/2addr p1, p4

    .line 575
    iget-object p3, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 576
    iget-object v3, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    const/4 v4, 0x0

    if-ne p3, v2, :cond_3

    .line 577
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$e;

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/batch/android/j0/d$e;->b:I

    return-void

    .line 578
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v1, :cond_15

    if-ge p1, p2, :cond_15

    .line 579
    iget p3, p0, Lcom/batch/android/j0/d;->e:I

    const/4 p4, 0x0

    if-eq p3, v2, :cond_14

    if-eq p3, v1, :cond_10

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq p3, v0, :cond_a

    const/4 v0, 0x4

    if-eq p3, v0, :cond_8

    const/4 p4, 0x5

    if-eq p3, p4, :cond_4

    goto/16 :goto_b

    :cond_4
    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 580
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    move p2, v5

    .line 581
    :goto_2
    iget-object p3, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_15

    .line 582
    iget-object p3, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/batch/android/j0/d$e;

    .line 583
    iget p4, p3, Lcom/batch/android/j0/d$e;->b:I

    int-to-float p4, p4

    add-float/2addr p4, p1

    .line 584
    iget-object v0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v4, v0, :cond_5

    add-float/2addr p4, p2

    move p2, v5

    .line 585
    :cond_5
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr p4, v1

    add-float/2addr p4, p2

    cmpl-float p2, p4, v6

    if-lez p2, :cond_7

    add-int/lit8 v0, v0, 0x1

    sub-float/2addr p4, v6

    :cond_6
    :goto_3
    move p2, p4

    goto :goto_4

    :cond_7
    cmpg-float p2, p4, v3

    if-gez p2, :cond_6

    add-int/lit8 v0, v0, -0x1

    add-float/2addr p4, v6

    goto :goto_3

    .line 586
    :goto_4
    iput v0, p3, Lcom/batch/android/j0/d$e;->b:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    sub-int/2addr p2, p1

    .line 587
    iget-object p1, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr p1, v1

    .line 588
    div-int/2addr p2, p1

    .line 589
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    new-instance p3, Lcom/batch/android/j0/d$e;

    invoke-direct {p3, p4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    .line 591
    iput p2, p3, Lcom/batch/android/j0/d$e;->b:I

    .line 592
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/batch/android/j0/d$e;

    .line 593
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 596
    :cond_9
    iput-object p1, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    return-void

    :cond_a
    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 597
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 598
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v5

    .line 599
    :goto_6
    iget-object v0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_f

    .line 600
    iget-object v0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/j0/d$e;

    .line 601
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq v4, v0, :cond_e

    .line 603
    new-instance v0, Lcom/batch/android/j0/d$e;

    invoke-direct {v0, p4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    .line 604
    iget-object v7, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v4, v7, :cond_b

    add-float/2addr p3, p1

    .line 605
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, v0, Lcom/batch/android/j0/d$e;->b:I

    move p3, v5

    goto :goto_7

    .line 606
    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v0, Lcom/batch/android/j0/d$e;->b:I

    .line 607
    :goto_7
    iget v7, v0, Lcom/batch/android/j0/d$e;->b:I

    int-to-float v8, v7

    sub-float v8, p1, v8

    add-float/2addr v8, p3

    cmpl-float p3, v8, v6

    if-lez p3, :cond_d

    add-int/lit8 v7, v7, 0x1

    .line 608
    iput v7, v0, Lcom/batch/android/j0/d$e;->b:I

    sub-float/2addr v8, v6

    :cond_c
    :goto_8
    move p3, v8

    goto :goto_9

    :cond_d
    cmpg-float p3, v8, v3

    if-gez p3, :cond_c

    add-int/lit8 v7, v7, -0x1

    .line 609
    iput v7, v0, Lcom/batch/android/j0/d$e;->b:I

    add-float/2addr v8, v6

    goto :goto_8

    .line 610
    :goto_9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 611
    :cond_f
    iput-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    return-void

    :cond_10
    sub-int/2addr p2, p1

    .line 612
    div-int/2addr p2, v1

    .line 613
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 614
    new-instance p3, Lcom/batch/android/j0/d$e;

    invoke-direct {p3, p4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    .line 615
    iput p2, p3, Lcom/batch/android/j0/d$e;->b:I

    .line 616
    :goto_a
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_13

    if-nez v4, :cond_11

    .line 617
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_11
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/batch/android/j0/d$e;

    .line 619
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object p2, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    if-ne v4, p2, :cond_12

    .line 621
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 622
    :cond_13
    iput-object p1, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    return-void

    :cond_14
    sub-int/2addr p2, p1

    .line 623
    new-instance p1, Lcom/batch/android/j0/d$e;

    invoke-direct {p1, p4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    .line 624
    iput p2, p1, Lcom/batch/android/j0/d$e;->b:I

    .line 625
    iget-object p0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    :goto_b
    return-void
.end method

.method private a(IILcom/batch/android/j0/d$e;)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    .line 519
    iget p1, p3, Lcom/batch/android/j0/d$e;->c:I

    if-eqz p1, :cond_0

    .line 520
    iget-object p0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$h;

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/batch/android/j0/d$h;->f:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/batch/android/j0/d$h;->h:I

    if-le v2, v3, :cond_1

    goto :goto_0

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 514
    :goto_2
    iget v3, p0, Lcom/batch/android/j0/d$h;->g:I

    if-ge v1, v3, :cond_2

    move v1, v3

    goto :goto_3

    .line 515
    :cond_2
    iget p0, p0, Lcom/batch/android/j0/d$h;->i:I

    if-le v1, p0, :cond_3

    move v1, p0

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    if-eqz v4, :cond_4

    const/high16 p0, 0x40000000    # 2.0f

    .line 516
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 517
    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 518
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$h;

    .line 627
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, p0

    const/4 p0, 0x0

    .line 628
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    .line 629
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 631
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/batch/android/j0/d$e;IIIIII)V
    .locals 3

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$h;

    .line 676
    iget v0, p0, Lcom/batch/android/j0/d$h;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move p4, v0

    .line 677
    :cond_0
    iget v0, p2, Lcom/batch/android/j0/d$e;->b:I

    const/4 v1, 0x2

    if-eqz p4, :cond_7

    const/4 v2, 0x1

    if-eq p4, v2, :cond_5

    if-eq p4, v1, :cond_3

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 p2, 0x4

    if-eq p4, p2, :cond_7

    return-void

    .line 678
    :cond_1
    iget p2, p2, Lcom/batch/android/j0/d$e;->f:I

    if-eq p3, v1, :cond_2

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p3

    sub-int/2addr p2, p3

    .line 680
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p6, p0

    add-int/2addr p8, p0

    .line 681
    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 682
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p3

    add-int/2addr p3, p2

    .line 683
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p6, p0

    sub-int/2addr p8, p0

    .line 684
    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 685
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/2addr v0, v1

    .line 686
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p3, v1, :cond_4

    add-int/2addr p6, v0

    add-int/2addr p2, p6

    .line 687
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, p3

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p6

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p0

    .line 689
    invoke-virtual {p1, p5, p2, p7, p3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p6, v0

    add-int/2addr p2, p6

    .line 690
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, p3

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p6

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p0

    .line 692
    invoke-virtual {p1, p5, p2, p7, p3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    if-eq p3, v1, :cond_6

    add-int/2addr p6, v0

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p6, p2

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, p0

    sub-int/2addr p6, p0

    .line 694
    invoke-virtual {p1, p5, p2, p7, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    sub-int/2addr p6, v0

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p6

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, p3

    sub-int/2addr p8, v0

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p8

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    .line 697
    invoke-virtual {p1, p5, p2, p7, p3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    if-eq p3, v1, :cond_8

    .line 698
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p6, p0

    add-int/2addr p8, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 699
    :cond_8
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p6, p0

    sub-int/2addr p8, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/batch/android/j0/d$e;ZIIIII)V
    .locals 2

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$h;

    .line 742
    iget v0, p0, Lcom/batch/android/j0/d$h;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move p4, v0

    .line 743
    :cond_0
    iget p2, p2, Lcom/batch/android/j0/d$e;->b:I

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 p2, 0x3

    if-eq p4, p2, :cond_5

    const/4 p2, 0x4

    if-eq p4, p2, :cond_5

    return-void

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/2addr p2, v0

    .line 745
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez p3, :cond_2

    add-int/2addr p5, p2

    add-int/2addr p5, p4

    .line 746
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p5, p0

    add-int/2addr p7, p2

    add-int/2addr p7, p4

    sub-int/2addr p7, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    sub-int/2addr p5, p2

    add-int/2addr p5, p4

    .line 747
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p5, p0

    sub-int/2addr p7, p2

    add-int/2addr p7, p4

    sub-int/2addr p7, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p5, p2

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p5, p3

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p5, p3

    add-int/2addr p7, p2

    .line 749
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p7, p2

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p7, p0

    .line 750
    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p5, p2

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p5

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    sub-int/2addr p7, p2

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p7

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p0

    .line 753
    invoke-virtual {p1, p3, p6, p2, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    if-nez p3, :cond_6

    .line 754
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, p0

    add-int/2addr p7, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 755
    :cond_6
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p5, p0

    sub-int/2addr p7, p0

    invoke-virtual {p1, p5, p6, p7, p8}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(ZIIII)V
    .locals 23

    move-object/from16 v0, p0

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int v1, p5, p3

    sub-int v11, p4, p2

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 636
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 637
    iget-object v3, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v1

    move v14, v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/j0/d$e;

    .line 638
    iget v3, v0, Lcom/batch/android/j0/d;->c:I

    const/4 v15, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v15, :cond_4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 639
    iget v3, v2, Lcom/batch/android/j0/d$e;->c:I

    if-eqz v3, :cond_0

    .line 640
    iget v5, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    int-to-float v3, v9

    div-float v6, v5, v6

    add-float/2addr v3, v6

    sub-int v7, v11, v10

    int-to-float v7, v7

    sub-float/2addr v7, v6

    goto :goto_4

    .line 641
    :cond_1
    const-string v1, "Invalid justifyContent is set: "

    iget v0, v0, Lcom/batch/android/j0/d;->c:I

    invoke-static {v0, v1}, Lr81;->c(ILjava/lang/String;)V

    return-void

    :cond_2
    int-to-float v3, v9

    .line 642
    iget v6, v2, Lcom/batch/android/j0/d$e;->c:I

    if-eq v6, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    int-to-float v5, v6

    goto :goto_2

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 643
    :goto_2
    iget v6, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v6, v11, v6

    int-to-float v6, v6

    div-float v5, v6, v5

    sub-int v6, v11, v10

    int-to-float v7, v6

    goto :goto_4

    :cond_4
    int-to-float v3, v9

    .line 644
    iget v5, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    sub-int v6, v11, v10

    int-to-float v6, v6

    sub-float v7, v6, v5

    :goto_3
    move v5, v4

    goto :goto_4

    .line 645
    :cond_5
    iget v3, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v3

    add-int/2addr v5, v10

    int-to-float v5, v5

    sub-int/2addr v3, v9

    int-to-float v7, v3

    move v3, v5

    goto :goto_3

    :cond_6
    int-to-float v3, v9

    sub-int v5, v11, v10

    int-to-float v7, v5

    goto :goto_3

    .line 646
    :goto_4
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    const/4 v4, 0x0

    .line 647
    :goto_5
    iget v5, v2, Lcom/batch/android/j0/d$e;->c:I

    if-ge v4, v5, :cond_c

    move v5, v1

    .line 648
    invoke-virtual {v0, v5}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    move/from16 v19, v4

    move v1, v5

    :goto_6
    move/from16 v21, v8

    move v6, v14

    goto/16 :goto_9

    .line 649
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v13, 0x8

    if-ne v6, v13, :cond_8

    add-int/lit8 v1, v5, 0x1

    move/from16 v19, v4

    goto :goto_6

    .line 650
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/batch/android/j0/d$h;

    .line 651
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v6, v6

    add-float v17, v3, v6

    .line 652
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    sub-float v18, v7, v3

    .line 653
    iget v3, v0, Lcom/batch/android/j0/d;->b:I

    if-ne v3, v15, :cond_a

    move v6, v4

    .line 654
    iget v4, v0, Lcom/batch/android/j0/d;->d:I

    if-eqz p1, :cond_9

    .line 655
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v7, v7, v19

    .line 656
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v19, v8, v19

    move/from16 v20, v5

    move v5, v7

    .line 657
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move/from16 v22, v19

    move/from16 v19, v6

    move/from16 v6, v22

    .line 658
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;IIIIII)V

    :goto_7
    move/from16 v21, v8

    move v6, v14

    goto :goto_8

    :cond_9
    move/from16 v20, v5

    move/from16 v19, v6

    .line 659
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v6, v8, v0

    .line 661
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    move-object/from16 v0, p0

    .line 662
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;IIIIII)V

    goto :goto_7

    :cond_a
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v8

    .line 663
    iget v4, v0, Lcom/batch/android/j0/d;->d:I

    if-eqz p1, :cond_b

    .line 664
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 665
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 666
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v8, v6, v14

    move v6, v14

    .line 667
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;IIIIII)V

    goto :goto_8

    :cond_b
    move v6, v14

    .line 668
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 669
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v8, v0, v6

    move-object/from16 v0, p0

    .line 671
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;IIIIII)V

    .line 672
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v16

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    add-float v0, v0, v17

    .line 673
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v1, v1, v16

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sub-float v18, v18, v1

    add-int/lit8 v1, v20, 0x1

    move v3, v0

    move/from16 v7, v18

    :goto_9
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p0

    move v14, v6

    move/from16 v8, v21

    goto/16 :goto_5

    :cond_c
    move/from16 v20, v1

    move/from16 v21, v8

    move v6, v14

    .line 674
    iget v0, v2, Lcom/batch/android/j0/d$e;->b:I

    add-int v14, v6, v0

    sub-int v8, v21, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private a(ZZIIII)V
    .locals 21

    move-object/from16 v0, p0

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 701
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 703
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v3, p5, p3

    sub-int v11, p6, p4

    sub-int/2addr v3, v1

    .line 704
    iget-object v1, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v2

    move v7, v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/j0/d$e;

    .line 705
    iget v3, v0, Lcom/batch/android/j0/d;->c:I

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v6, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_4

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 706
    iget v3, v2, Lcom/batch/android/j0/d$e;->c:I

    if-eqz v3, :cond_0

    .line 707
    iget v5, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    int-to-float v3, v9

    div-float v6, v5, v8

    add-float/2addr v3, v6

    sub-int v8, v11, v10

    int-to-float v8, v8

    sub-float/2addr v8, v6

    goto :goto_4

    .line 708
    :cond_1
    const-string v1, "Invalid justifyContent is set: "

    iget v0, v0, Lcom/batch/android/j0/d;->c:I

    invoke-static {v0, v1}, Lr81;->c(ILjava/lang/String;)V

    return-void

    :cond_2
    int-to-float v3, v9

    .line 709
    iget v6, v2, Lcom/batch/android/j0/d$e;->c:I

    if-eq v6, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    int-to-float v5, v6

    goto :goto_2

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 710
    :goto_2
    iget v6, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v6, v11, v6

    int-to-float v6, v6

    div-float v5, v6, v5

    sub-int v6, v11, v10

    int-to-float v8, v6

    goto :goto_4

    :cond_4
    int-to-float v3, v9

    .line 711
    iget v5, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v3, v5

    sub-int v6, v11, v10

    int-to-float v6, v6

    sub-float v8, v6, v5

    :goto_3
    move v5, v4

    goto :goto_4

    .line 712
    :cond_5
    iget v3, v2, Lcom/batch/android/j0/d$e;->a:I

    sub-int v5, v11, v3

    add-int/2addr v5, v10

    int-to-float v5, v5

    sub-int/2addr v3, v9

    int-to-float v8, v3

    move v3, v5

    goto :goto_3

    :cond_6
    int-to-float v3, v9

    sub-int v5, v11, v10

    int-to-float v8, v5

    goto :goto_3

    .line 713
    :goto_4
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/4 v4, 0x0

    .line 714
    :goto_5
    iget v5, v2, Lcom/batch/android/j0/d$e;->c:I

    if-ge v4, v5, :cond_c

    move v5, v1

    .line 715
    invoke-virtual {v0, v5}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    move/from16 v19, v4

    move v1, v5

    :goto_6
    move/from16 v20, v7

    move v5, v14

    goto/16 :goto_9

    .line 716
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v13, 0x8

    if-ne v6, v13, :cond_8

    add-int/lit8 v1, v5, 0x1

    move/from16 v19, v4

    goto :goto_6

    .line 717
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/batch/android/j0/d$h;

    .line 718
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v6, v6

    add-float v16, v3, v6

    .line 719
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v3, v3

    sub-float v17, v8, v3

    if-eqz p1, :cond_a

    move v3, v4

    .line 720
    iget v4, v0, Lcom/batch/android/j0/d;->d:I

    if-eqz p2, :cond_9

    .line 721
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v7, v6

    .line 722
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v8, v8, v18

    move/from16 v18, v5

    move v5, v6

    move v6, v8

    .line 723
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    move/from16 v19, v3

    const/4 v3, 0x1

    .line 724
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;ZIIIII)V

    :goto_7
    move/from16 v20, v7

    move v5, v14

    goto :goto_8

    :cond_9
    move/from16 v19, v3

    move/from16 v18, v5

    .line 725
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v5, v7, v0

    .line 726
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 727
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v3, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    .line 728
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;ZIIIII)V

    goto :goto_7

    :cond_a
    move/from16 v19, v4

    move/from16 v18, v5

    move/from16 v20, v7

    .line 729
    iget v4, v0, Lcom/batch/android/j0/d;->d:I

    if-eqz p2, :cond_b

    .line 730
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, v3, v5

    .line 731
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v7, v3, v14

    .line 732
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v3, 0x0

    move v5, v14

    .line 733
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;ZIIIII)V

    goto :goto_8

    :cond_b
    move v5, v14

    .line 734
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 735
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v7, v0, v5

    .line 736
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v3, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 737
    invoke-direct/range {v0 .. v8}, Lcom/batch/android/j0/d;->a(Landroid/view/View;Lcom/batch/android/j0/d$e;ZIIIII)V

    .line 738
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v15

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    add-float v0, v0, v16

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v15

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sub-float v17, v17, v1

    add-int/lit8 v1, v18, 0x1

    move v3, v0

    move/from16 v8, v17

    :goto_9
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p0

    move v14, v5

    move/from16 v7, v20

    goto/16 :goto_5

    :cond_c
    move/from16 v18, v1

    move/from16 v20, v7

    move v5, v14

    .line 740
    iget v0, v2, Lcom/batch/android/j0/d$e;->b:I

    add-int v14, v5, v0

    sub-int v7, v20, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private a(IIIIILcom/batch/android/j0/d$h;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 632
    :cond_0
    iget-boolean p1, p6, Lcom/batch/android/j0/d$h;->j:Z

    const/4 p6, 0x1

    if-eqz p1, :cond_1

    return p6

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    if-eq p2, p1, :cond_2

    const/high16 p1, -0x80000000

    if-ne p2, p1, :cond_3

    :cond_2
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_3

    return p6

    :cond_3
    return p0
.end method

.method private a()[I
    .locals 2

    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 479
    invoke-direct {p0, v0}, Lcom/batch/android/j0/d;->a(I)Ljava/util/List;

    move-result-object v1

    .line 480
    invoke-direct {p0, v0, v1}, Lcom/batch/android/j0/d;->a(ILjava/util/List;)[I

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/batch/android/j0/d$i;",
            ">;)[I"
        }
    .end annotation

    .line 481
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 482
    iget-object v0, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 485
    new-array p1, p1, [I

    .line 486
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/j0/d$i;

    .line 487
    iget v2, v1, Lcom/batch/android/j0/d$i;->b:I

    aput v2, p1, v0

    .line 488
    iget-object v2, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    iget v1, v1, Lcom/batch/android/j0/d$i;->c:I

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I
    .locals 4

    .line 496
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 497
    invoke-direct {p0, v0}, Lcom/batch/android/j0/d;->a(I)Ljava/util/List;

    move-result-object v1

    .line 498
    new-instance v2, Lcom/batch/android/j0/d$i;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/batch/android/j0/d$i;-><init>(Lcom/batch/android/j0/d$a;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 499
    instance-of p1, p3, Lcom/batch/android/j0/d$h;

    if-eqz p1, :cond_0

    .line 500
    check-cast p3, Lcom/batch/android/j0/d$h;

    iget p1, p3, Lcom/batch/android/j0/d$h;->a:I

    iput p1, v2, Lcom/batch/android/j0/d$i;->c:I

    goto :goto_0

    .line 501
    :cond_0
    iput v3, v2, Lcom/batch/android/j0/d$i;->c:I

    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 502
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 503
    iput p2, v2, Lcom/batch/android/j0/d$i;->b:I

    :goto_1
    if-ge p2, v0, :cond_4

    .line 504
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/j0/d$i;

    iget p3, p1, Lcom/batch/android/j0/d$i;->b:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/batch/android/j0/d$i;->b:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 505
    :cond_2
    iput v0, v2, Lcom/batch/android/j0/d$i;->b:I

    goto :goto_3

    .line 506
    :cond_3
    :goto_2
    iput v0, v2, Lcom/batch/android/j0/d$i;->b:I

    .line 507
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    .line 508
    invoke-direct {p0, v0, v1}, Lcom/batch/android/j0/d;->a(ILjava/util/List;)[I

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/batch/android/j0/d$e;IIII)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 338
    iget v4, v1, Lcom/batch/android/j0/d$e;->a:I

    .line 339
    iget v5, v1, Lcom/batch/android/j0/d$e;->e:F

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_11

    if-le v3, v4, :cond_0

    goto/16 :goto_9

    :cond_0
    sub-int v7, v4, v3

    int-to-float v7, v7

    div-float/2addr v7, v5

    move/from16 v5, p4

    .line 340
    iput v5, v1, Lcom/batch/android/j0/d$e;->a:I

    const/4 v8, 0x0

    move/from16 v10, p5

    move v11, v6

    move v9, v8

    .line 341
    :goto_0
    iget v12, v1, Lcom/batch/android/j0/d$e;->c:I

    if-ge v8, v12, :cond_f

    .line 342
    invoke-virtual {v0, v10}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1

    goto/16 :goto_8

    .line 343
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    goto/16 :goto_7

    .line 344
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/batch/android/j0/d$h;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/high16 v18, 0x3f800000    # 1.0f

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v14, :cond_4

    :cond_3
    move/from16 v21, v14

    goto :goto_3

    .line 345
    :cond_4
    iget-object v15, v0, Lcom/batch/android/j0/d;->i:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_9

    .line 346
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v21, v14

    iget v14, v13, Lcom/batch/android/j0/d$h;->c:F

    mul-float/2addr v14, v7

    sub-float/2addr v15, v14

    .line 347
    iget v14, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int/lit8 v14, v14, -0x1

    if-ne v8, v14, :cond_5

    add-float/2addr v15, v11

    const/4 v11, 0x0

    .line 348
    :cond_5
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 349
    iget v6, v13, Lcom/batch/android/j0/d$h;->g:I

    if-ge v14, v6, :cond_6

    .line 350
    iget-object v9, v0, Lcom/batch/android/j0/d;->i:[Z

    aput-boolean v21, v9, v10

    .line 351
    iget v9, v1, Lcom/batch/android/j0/d$e;->e:F

    iget v14, v13, Lcom/batch/android/j0/d$h;->c:F

    sub-float/2addr v9, v14

    iput v9, v1, Lcom/batch/android/j0/d$e;->e:F

    move v14, v6

    move/from16 v9, v21

    goto :goto_2

    :cond_6
    int-to-float v6, v14

    sub-float/2addr v15, v6

    add-float/2addr v15, v11

    float-to-double v2, v15

    cmpl-double v6, v2, v16

    if-lez v6, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-float v15, v15, v18

    :cond_7
    :goto_1
    move v11, v15

    goto :goto_2

    :cond_8
    cmpg-double v2, v2, v19

    if-gez v2, :cond_7

    add-int/lit8 v14, v14, -0x1

    add-float v15, v15, v18

    goto :goto_1

    .line 352
    :goto_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 353
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 354
    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 355
    :cond_9
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    add-int/2addr v3, v2

    iput v3, v1, Lcom/batch/android/j0/d$e;->a:I

    goto :goto_7

    .line 356
    :goto_3
    iget-object v2, v0, Lcom/batch/android/j0/d;->i:[Z

    aget-boolean v2, v2, v10

    if-nez v2, :cond_e

    .line 357
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v13, Lcom/batch/android/j0/d$h;->c:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    .line 358
    iget v3, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_a

    add-float/2addr v2, v11

    const/4 v11, 0x0

    .line 359
    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 360
    iget v6, v13, Lcom/batch/android/j0/d$h;->f:I

    if-ge v3, v6, :cond_b

    .line 361
    iget-object v2, v0, Lcom/batch/android/j0/d;->i:[Z

    aput-boolean v21, v2, v10

    .line 362
    iget v2, v1, Lcom/batch/android/j0/d$e;->e:F

    iget v3, v13, Lcom/batch/android/j0/d$h;->c:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/batch/android/j0/d$e;->e:F

    move v3, v6

    move/from16 v9, v21

    :goto_4
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_6

    :cond_b
    int-to-float v6, v3

    sub-float/2addr v2, v6

    add-float/2addr v2, v11

    float-to-double v14, v2

    cmpl-double v6, v14, v16

    if-lez v6, :cond_d

    add-int/lit8 v3, v3, 0x1

    sub-float v2, v2, v18

    :cond_c
    :goto_5
    move v11, v2

    goto :goto_4

    :cond_d
    cmpg-double v6, v14, v19

    if-gez v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    add-float v2, v2, v18

    goto :goto_5

    .line 363
    :goto_6
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 364
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 365
    invoke-virtual {v12, v3, v2}, Landroid/view/View;->measure(II)V

    .line 366
    :cond_e
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    add-int/2addr v3, v2

    iput v3, v1, Lcom/batch/android/j0/d$e;->a:I

    :goto_7
    add-int/lit8 v10, v10, 0x1

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    if-eqz v9, :cond_10

    .line 367
    iget v2, v1, Lcom/batch/android/j0/d$e;->a:I

    if-eq v4, v2, :cond_10

    .line 368
    invoke-direct/range {p0 .. p5}, Lcom/batch/android/j0/d;->b(Lcom/batch/android/j0/d$e;IIII)I

    :cond_10
    return v10

    .line 369
    :cond_11
    :goto_9
    iget v0, v1, Lcom/batch/android/j0/d$e;->c:I

    add-int v0, p5, v0

    return v0
.end method

.method private b(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v1, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    new-instance v5, Lcom/batch/android/j0/d$e;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    add-int v11, v1, v4

    iput v11, v5, Lcom/batch/android/j0/d$e;->a:I

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    move v12, v1

    move-object v13, v5

    :goto_0
    if-ge v12, v9, :cond_5

    invoke-virtual {v0, v12}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_0

    invoke-direct {v0, v12, v9, v13}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    const/4 v15, 0x1

    if-ne v5, v6, :cond_1

    iget v5, v13, Lcom/batch/android/j0/d$e;->c:I

    add-int/2addr v5, v15

    iput v5, v13, Lcom/batch/android/j0/d$e;->c:I

    invoke-direct {v0, v12, v9, v13}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    :goto_1
    move v15, v4

    move-object v4, v10

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/batch/android/j0/d$h;

    iget v5, v6, Lcom/batch/android/j0/d$h;->d:I

    const/4 v15, 0x4

    if-ne v5, v15, :cond_2

    iget-object v5, v13, Lcom/batch/android/j0/d$e;->g:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v15, v6, Lcom/batch/android/j0/d$h;->e:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_3

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_3

    int-to-float v5, v3

    mul-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v15, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v15, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    add-int v17, v17, v15

    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v17, v17, v15

    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v15, v17, v15

    invoke-static {v8, v15, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v14, v10, v5}, Landroid/view/View;->measure(II)V

    invoke-direct {v0, v14}, Lcom/batch/android/j0/d;->a(Landroid/view/View;)V

    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v1, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v1, v0, Lcom/batch/android/j0/d;->b:I

    iget v4, v13, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v0

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/j0/d;->a(IIIIILcom/batch/android/j0/d$h;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/batch/android/j0/d$e;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Lcom/batch/android/j0/d$e;-><init>(Lcom/batch/android/j0/d$a;)V

    const/4 v1, 0x1

    iput v1, v13, Lcom/batch/android/j0/d$e;->c:I

    iput v11, v13, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v15, v1, v5

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v5, v13, Lcom/batch/android/j0/d$e;->c:I

    add-int/2addr v5, v1

    iput v5, v13, Lcom/batch/android/j0/d$e;->c:I

    :goto_2
    iget v1, v13, Lcom/batch/android/j0/d$e;->a:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v14

    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    add-int/2addr v5, v1

    iput v5, v13, Lcom/batch/android/j0/d$e;->a:I

    iget v1, v13, Lcom/batch/android/j0/d$e;->d:F

    iget v5, v6, Lcom/batch/android/j0/d$h;->b:F

    add-float/2addr v1, v5

    iput v1, v13, Lcom/batch/android/j0/d$e;->d:F

    iget v1, v13, Lcom/batch/android/j0/d$e;->e:F

    iget v5, v6, Lcom/batch/android/j0/d$h;->c:F

    add-float/2addr v1, v5

    iput v1, v13, Lcom/batch/android/j0/d$e;->e:F

    iget v1, v13, Lcom/batch/android/j0/d$e;->b:I

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Lcom/batch/android/j0/d$e;->b:I

    invoke-direct {v0, v12, v9, v13}, Lcom/batch/android/j0/d;->a(IILcom/batch/android/j0/d$e;)V

    move v1, v10

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object v10, v4

    move v4, v15

    goto/16 :goto_0

    :cond_5
    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-direct {v0, v2, v7, v8}, Lcom/batch/android/j0/d;->a(III)V

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v7, v8, v4}, Lcom/batch/android/j0/d;->a(IIII)V

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    iget v3, v0, Lcom/batch/android/j0/d;->d:I

    invoke-direct {v0, v2, v3}, Lcom/batch/android/j0/d;->c(II)V

    iget v2, v0, Lcom/batch/android/j0/d;->a:I

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/batch/android/j0/d;->b(IIII)V

    return-void
.end method

.method private b(IIII)V
    .locals 8

    .line 376
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 377
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 378
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 379
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    const-string p0, "Invalid flex direction: "

    .line 381
    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getLargestMainSize()I

    move-result p1

    .line 384
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v5

    goto :goto_1

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getSumOfCrossSize()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v4

    .line 386
    invoke-direct {p0}, Lcom/batch/android/j0/d;->getLargestMainSize()I

    move-result v4

    :goto_1
    const/high16 v5, 0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v6, :cond_4

    if-ge v1, v4, :cond_3

    .line 387
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 388
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 389
    :cond_3
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 390
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    .line 391
    :cond_4
    const-string p0, "Unknown width mode is set: "

    .line 392
    invoke-static {v0, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    .line 394
    :cond_5
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 395
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    .line 396
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 397
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_2

    :cond_7
    move v1, v4

    .line 398
    :goto_2
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 399
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    :goto_3
    const/16 v0, 0x100

    if-eq v2, v7, :cond_b

    if-eqz v2, :cond_a

    if-ne v2, v6, :cond_9

    if-ge v3, p1, :cond_8

    .line 400
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 401
    :cond_8
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    .line 402
    :cond_9
    const-string p0, "Unknown height mode is set: "

    .line 403
    invoke-static {v2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_a
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    :cond_b
    if-ge v3, p1, :cond_c

    .line 406
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_4

    :cond_c
    move v3, p1

    .line 407
    :goto_4
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 408
    :goto_5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/batch/android/j0/d$h;

    .line 371
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p2, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, p0

    const/4 p0, 0x0

    .line 372
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 374
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 375
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private b()Z
    .locals 6

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 333
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/batch/android/j0/d$h;

    .line 335
    iget v4, v4, Lcom/batch/android/j0/d$h;->a:I

    iget-object v5, p0, Lcom/batch/android/j0/d;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c(II)V
    .locals 12

    iget-object v0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    const-string v1, "Invalid flex direction: "

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v6, v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/batch/android/j0/d$e;

    move v8, v0

    :goto_0
    iget v9, v7, Lcom/batch/android/j0/d$e;->c:I

    if-ge v8, v9, :cond_0

    invoke-virtual {p0, v6}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/batch/android/j0/d$h;

    iget v10, v10, Lcom/batch/android/j0/d$h;->d:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    if-eq v10, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    iget v10, v7, Lcom/batch/android/j0/d$e;->b:I

    invoke-direct {p0, v9, v10}, Lcom/batch/android/j0/d;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    iget v10, v7, Lcom/batch/android/j0/d$e;->b:I

    invoke-direct {p0, v9, v10}, Lcom/batch/android/j0/d;->b(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/j0/d$e;

    iget-object v5, v0, Lcom/batch/android/j0/d$e;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/batch/android/j0/d;->b(I)Landroid/view/View;

    move-result-object v6

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    iget v7, v0, Lcom/batch/android/j0/d$e;->b:I

    invoke-direct {p0, v6, v7}, Lcom/batch/android/j0/d;->a(Landroid/view/View;I)V

    goto :goto_3

    :cond_9
    iget v7, v0, Lcom/batch/android/j0/d$e;->b:I

    invoke-direct {p0, v6, v7}, Lcom/batch/android/j0/d;->b(Landroid/view/View;I)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method private getLargestMainSize()I
    .locals 2

    iget-object p0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/j0/d$e;

    iget v1, v1, Lcom/batch/android/j0/d$e;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getSumOfCrossSize()I
    .locals 2

    iget-object p0, p0, Lcom/batch/android/j0/d;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/j0/d$e;

    iget v1, v1, Lcom/batch/android/j0/d$e;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/j0/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/j0/d;->f:[I

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/batch/android/j0/d;->f:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/batch/android/j0/d$h;

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/batch/android/j0/d;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/batch/android/j0/d$h;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 11
    new-instance p0, Lcom/batch/android/j0/d$h;

    invoke-direct {p0, p1}, Lcom/batch/android/j0/d$h;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/batch/android/j0/d$h;
    .locals 1

    new-instance v0, Lcom/batch/android/j0/d$h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/batch/android/j0/d$h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/d;->e:I

    return p0
.end method

.method public getAlignItems()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/d;->d:I

    return p0
.end method

.method public getFlexDirection()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/d;->a:I

    return p0
.end method

.method public getFlexWrap()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/d;->b:I

    return p0
.end method

.method public getJustifyContent()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/d;->c:I

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 7

    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iget v2, p0, Lcom/batch/android/j0/d;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    if-ne v1, v4, :cond_0

    move v3, v4

    :cond_0
    iget v1, p0, Lcom/batch/android/j0/d;->b:I

    if-ne v1, v5, :cond_1

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    move v1, v3

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/j0/d;->a(ZZIIII)V

    return-void

    :cond_2
    const-string v1, "Invalid flex direction is set: "

    iget v0, p0, Lcom/batch/android/j0/d;->a:I

    invoke-static {v0, v1}, Lr81;->c(ILjava/lang/String;)V

    return-void

    :cond_3
    if-ne v1, v4, :cond_4

    move v3, v4

    :cond_4
    iget v1, p0, Lcom/batch/android/j0/d;->b:I

    if-ne v1, v5, :cond_5

    xor-int/lit8 v3, v3, 0x1

    :cond_5
    move v1, v3

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/j0/d;->a(ZZIIII)V

    return-void

    :cond_6
    if-eq v1, v4, :cond_7

    move v1, v4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move v4, p4

    goto :goto_0

    :cond_7
    move v1, v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    move v3, p3

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/j0/d;->a(ZIIII)V

    return-void

    :cond_8
    if-ne v1, v4, :cond_9

    move v1, v4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move v4, p4

    goto :goto_1

    :cond_9
    move v1, v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    move v3, p3

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/j0/d;->a(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/batch/android/j0/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/j0/d;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/j0/d;->f:[I

    :cond_0
    iget-object v0, p0, Lcom/batch/android/j0/d;->i:[Z

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/batch/android/j0/d;->i:[Z

    :cond_2
    iget v0, p0, Lcom/batch/android/j0/d;->a:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Invalid value for the flex direction is set: "

    iget p0, p0, Lcom/batch/android/j0/d;->a:I

    invoke-static {p0, p1}, Lr81;->c(ILjava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/batch/android/j0/d;->b(II)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/batch/android/j0/d;->a(II)V

    :goto_1
    iget-object p0, p0, Lcom/batch/android/j0/d;->i:[Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/d;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/j0/d;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/d;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/j0/d;->d:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/d;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/j0/d;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/d;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/j0/d;->b:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/d;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/j0/d;->c:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
