.class public final synthetic Lju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p4, p0, Lju;->b:I

    iput-object p1, p0, Lju;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p2, p0, Lju;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lju;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lju;->b:I

    iget-object v1, p0, Lju;->e:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lju;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lju;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lsq0;

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lsq0;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lna;

    const/16 v3, 0xb

    invoke-direct {v0, v2, v1, v3}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld0;

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v1}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d()V

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ld0;

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d()V

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
