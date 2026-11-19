.class public final synthetic Llh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/BottomSheetScaffoldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/BottomSheetScaffoldState;I)V
    .locals 0

    iput p2, p0, Llh;->b:I

    iput-object p1, p0, Llh;->c:Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Llh;->b:I

    iget-object p0, p0, Llh;->c:Landroidx/compose/material3/BottomSheetScaffoldState;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->a:Landroidx/compose/material3/SheetState;

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->c()Landroidx/compose/material3/SheetValue;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->a:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->g()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
