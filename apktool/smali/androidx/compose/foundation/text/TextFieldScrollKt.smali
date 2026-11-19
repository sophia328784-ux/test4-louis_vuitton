.class public abstract Landroidx/compose/foundation/text/TextFieldScrollKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldScrollKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p2, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/geometry/Rect;->f:Landroidx/compose/ui/geometry/Rect;

    :goto_0
    sget p2, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->a:F

    invoke-interface {p0, p2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    if-eqz p4, :cond_1

    int-to-float p2, p5

    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    sub-float/2addr p2, p3

    int-to-float p3, p0

    sub-float/2addr p2, p3

    goto :goto_1

    :cond_1
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    :goto_1
    if-eqz p4, :cond_2

    int-to-float p0, p5

    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    sub-float/2addr p0, p3

    goto :goto_2

    :cond_2
    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    int-to-float p0, p0

    add-float/2addr p0, p3

    :goto_2
    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {p4, p2, p3, p0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p4
.end method
