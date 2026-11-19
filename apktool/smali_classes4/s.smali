.class public final synthetic Ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 12
    iput p4, p0, Ls;->b:I

    iput-object p1, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    const/16 p3, 0x8

    iput p3, p0, Ls;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewTopBarKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeInvalidKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListScreenKt;->b(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpFindInStoreButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpFindAStoreButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairEligibilityCardComponentKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/list/components/CareServicePromotionCardKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Ls;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Ls;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatHeaderKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
