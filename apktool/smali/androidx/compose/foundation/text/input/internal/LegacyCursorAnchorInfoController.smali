.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;",
        "",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Matrix;",
        "",
        "localToScreen",
        "Landroidx/compose/foundation/text/input/internal/InputMethodManager;",
        "inputMethodManager",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V",
        "foundation"
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
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

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

.field public m:Landroidx/compose/ui/geometry/Rect;

.field public n:Landroidx/compose/ui/geometry/Rect;

.field public final o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final p:[F

.field public final q:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/input/internal/InputMethodManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->c:Ljava/lang/Object;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->p:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->q:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-interface {v1}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->m:Landroidx/compose/ui/geometry/Rect;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->p:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    new-instance v3, Landroidx/compose/ui/graphics/Matrix;

    invoke-direct {v3, v2}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->a:F

    neg-float v3, v3

    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->b:F

    neg-float v4, v4

    invoke-static {v3, v4, v2}, Landroidx/compose/ui/graphics/Matrix;->f(FF[F)V

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->q:Landroid/graphics/Matrix;

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->a(Landroid/graphics/Matrix;[F)V

    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->m:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->f:Z

    iget-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->g:Z

    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->h:Z

    iget-boolean v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->i:Z

    iget-object v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v14, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, v2, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

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

    invoke-static {v8, v15, v4}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v4

    iget v5, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {v8, v15, v5}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

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

    if-eqz v3, :cond_9

    iget-wide v10, v3, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v5

    goto :goto_3

    :cond_9
    move v5, v4

    :goto_3
    if-eqz v3, :cond_a

    iget-wide v3, v3, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v4

    :cond_a
    if-ltz v5, :cond_e

    if-ge v5, v4, :cond_e

    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

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

    invoke-static {v8, v5, v12}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {v8, v5, v12}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

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

    invoke-static {v14, v9}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi33Helper;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)V

    :cond_10
    const/16 v3, 0x22

    if-lt v2, v3, :cond_11

    if-eqz v22, :cond_11

    invoke-static {v14, v7, v8}, Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi34Helper;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V

    :cond_11
    invoke-virtual {v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->e:Z

    :cond_12
    :goto_5
    return-void
.end method
