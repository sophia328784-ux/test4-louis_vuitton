.class public abstract Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi34Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/CursorAnchorInfoApi34Helper;",
        "",
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


# direct methods
.method public static final a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    :cond_0
    iget v3, p2, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    move-result v3

    invoke-static {v3, v2, v1}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v3

    iget p2, p2, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    move-result p2

    invoke-static {p2, v2, v1}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p2

    if-gt v3, p2, :cond_1

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->f(I)F

    move-result v1

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->g(I)F

    move-result v4

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    move-result v5

    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v3, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
