.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/CursorAnchorInfoController;",
        "",
        "Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;",
        "rootPositionCalculator",
        "Landroidx/compose/ui/text/input/InputMethodManager;",
        "inputMethodManager",
        "<init>",
        "(Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;Landroidx/compose/ui/text/input/InputMethodManager;)V",
        "ui"
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
.field public final a:Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

.field public final b:Landroidx/compose/ui/text/input/InputMethodManager;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Landroidx/compose/ui/text/input/TextFieldValue;

.field public k:Landroidx/compose/ui/text/TextLayoutResult;

.field public l:Landroidx/compose/ui/text/input/OffsetMapping;

.field public m:Lkotlin/jvm/functions/Function1;

.field public n:Landroidx/compose/ui/geometry/Rect;

.field public o:Landroidx/compose/ui/geometry/Rect;

.field public final p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final q:[F

.field public final r:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/InputMethodManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->c:Ljava/lang/Object;

    sget-object p1, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->c:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/InputMethodManager;

    invoke-interface {v1}, Landroidx/compose/ui/text/input/InputMethodManager;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    new-instance v3, Landroidx/compose/ui/graphics/Matrix;

    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    invoke-direct {v3, v4}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    invoke-interface {v2, v4}, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;->o([F)V

    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->a(Landroid/graphics/Matrix;[F)V

    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    iget-object v6, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->o:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v10, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->f:Z

    iget-boolean v11, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->g:Z

    iget-boolean v12, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->h:Z

    iget-boolean v13, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->i:Z

    iget-object v14, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v14, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v2, v3, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v15

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eqz v10, :cond_8

    if-gez v15, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v6, v15}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    iget v15, v10, Landroidx/compose/ui/geometry/Rect;->a:F

    move/from16 v16, v5

    iget-wide v4, v7, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    const/16 v17, 0x20

    shr-long v4, v4, v17

    long-to-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v15, v5, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v15

    iget v4, v10, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v8, v15, v4}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v4

    iget v5, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {v8, v15, v5}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v5

    move/from16 v17, v4

    move/from16 v4, v16

    invoke-virtual {v7, v4}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v4

    move/from16 v16, v5

    sget-object v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    const/16 v18, 0x1

    if-ne v4, v5, :cond_2

    move/from16 v4, v18

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v17, :cond_4

    if-eqz v16, :cond_3

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    :cond_4
    :goto_1
    if-eqz v17, :cond_5

    if-nez v16, :cond_6

    :cond_5
    or-int/lit8 v18, v18, 0x2

    :cond_6
    if-eqz v4, :cond_7

    or-int/lit8 v18, v18, 0x4

    :cond_7
    move/from16 v19, v18

    iget v4, v10, Landroidx/compose/ui/geometry/Rect;->b:F

    iget v5, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    move/from16 v18, v5

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v19}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_8
    :goto_2
    if-eqz v11, :cond_e

    const/4 v4, -0x1

    if-eqz v2, :cond_9

    iget-wide v10, v2, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v5

    goto :goto_3

    :cond_9
    move v5, v4

    :goto_3
    if-eqz v2, :cond_a

    iget-wide v10, v2, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v4

    :cond_a
    if-ltz v5, :cond_e

    if-ge v5, v4, :cond_e

    iget-object v2, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v5, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v6, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v2

    invoke-interface {v6, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v3

    sub-int v10, v3, v2

    mul-int/lit8 v10, v10, 0x4

    new-array v10, v10, [F

    iget-object v11, v7, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13, v10}, Landroidx/compose/ui/text/MultiParagraph;->a(J[F)V

    move v15, v5

    :goto_4
    if-ge v15, v4, :cond_f

    invoke-interface {v6, v15}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v3

    sub-int v5, v3, v2

    mul-int/lit8 v5, v5, 0x4

    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    aget v12, v10, v5

    add-int/lit8 v13, v5, 0x1

    aget v13, v10, v13

    add-int/lit8 v16, v5, 0x2

    move/from16 v23, v2

    aget v2, v10, v16

    add-int/lit8 v5, v5, 0x3

    aget v5, v10, v5

    invoke-direct {v11, v12, v13, v2, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-virtual {v8, v11}, Landroidx/compose/ui/geometry/Rect;->g(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v2

    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v8, v5, v12}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {v8, v5, v12}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    or-int/lit8 v2, v2, 0x2

    :cond_c
    invoke-virtual {v7, v3}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v3, v5, :cond_d

    or-int/lit8 v2, v2, 0x4

    :cond_d
    move/from16 v20, v2

    iget v2, v11, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v3, v11, Landroidx/compose/ui/geometry/Rect;->d:F

    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v11, v11, Landroidx/compose/ui/geometry/Rect;->b:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v16, v5

    move/from16 v17, v11

    invoke-virtual/range {v14 .. v20}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v23

    goto :goto_4

    :cond_e
    move/from16 v21, v12

    move/from16 v22, v13

    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_10

    if-eqz v21, :cond_10

    invoke-static {v14, v9}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)V

    :cond_10
    const/16 v3, 0x22

    if-lt v2, v3, :cond_11

    if-eqz v22, :cond_11

    invoke-static {v14, v7, v8}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi34Helper;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V

    :cond_11
    invoke-virtual {v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->e:Z

    return-void
.end method
