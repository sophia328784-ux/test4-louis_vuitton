.class public final synthetic Lj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;I)V
    .locals 0

    iput p2, p0, Lj5;->b:I

    iput-object p1, p0, Lj5;->c:Landroidx/compose/ui/unit/Density;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj5;->b:I

    iget-object p0, p0, Lj5;->c:Landroidx/compose/ui/unit/Density;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/compose/material3/SwipeToDismissBoxState;->c:Landroidx/compose/material3/SwipeToDismissBoxState$Companion;

    sget v0, Landroidx/compose/material3/SwipeToDismissBoxKt;->a:F

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/compose/material3/SheetState;->h:Landroidx/compose/material3/SheetState$Companion;

    sget v0, Landroidx/compose/material3/BottomSheetDefaults;->e:F

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroidx/compose/material3/SheetState;->h:Landroidx/compose/material3/SheetState$Companion;

    sget v0, Landroidx/compose/material3/BottomSheetDefaults;->d:F

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->a:Lp;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42fa0000    # 125.0f

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
