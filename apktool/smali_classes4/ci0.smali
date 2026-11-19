.class public final synthetic Lci0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/BottomSheetScaffoldState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lci0;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    iput p2, p0, Lci0;->c:F

    iput p3, p0, Lci0;->d:F

    iput-object p4, p0, Lci0;->e:Landroidx/compose/runtime/MutableFloatState;

    iput-object p5, p0, Lci0;->f:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lci0;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    iget-object p1, p1, Landroidx/compose/material3/BottomSheetScaffoldState;->a:Landroidx/compose/material3/SheetState;

    iget-object p1, p1, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->g()F

    move-result p1

    iget v0, p0, Lci0;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lci0;->d:F

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vuitton/android/presentation/utils/MathUtilsKt;->a(FFFFF)F

    move-result v4

    invoke-static {v4, v3, v1}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v1

    iget-object v3, p0, Lci0;->e:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vuitton/android/presentation/utils/MathUtilsKt;->a(FFFFF)F

    move-result p1

    invoke-static {p1, v3, v1}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result p1

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    iget-object p0, p0, Lci0;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
