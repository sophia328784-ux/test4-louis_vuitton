.class public final synthetic Lnz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/SliderState;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material3/SliderState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnz0;->b:F

    iput-object p2, p0, Lnz0;->c:Landroidx/compose/material3/SliderState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    sget-object p3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Landroidx/compose/ui/unit/Dp;->e:F

    iget v0, p0, Lnz0;->b:F

    invoke-static {v0, p3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lnz0;->c:Landroidx/compose/material3/SliderState;

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p3, :cond_0

    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    :goto_0
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    sget-object v1, Landroidx/compose/material3/SliderKt;->f:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, La2;

    const/16 v2, 0xf

    invoke-direct {v1, p2, v2}, La2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-interface {p1, p3, v0, p0, v1}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
