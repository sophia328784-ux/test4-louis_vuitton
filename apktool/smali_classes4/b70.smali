.class public final synthetic Lb70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lb70;->b:I

    iput-boolean p1, p0, Lb70;->c:Z

    iput-object p2, p0, Lb70;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lb70;->b:I

    iget-object v1, p0, Lb70;->d:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lb70;->c:Z

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a:F

    if-nez p0, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    sget v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;

    invoke-direct {p1, p0, v1}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eqz p0, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    if-nez p0, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lpy;

    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
